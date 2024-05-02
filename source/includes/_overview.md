# Overview

### Data Model

The Moesif data model includes two types of events (API Calls and Custom Actions) and three type of entities (Users, Companies, and Subscriptions). A full diagram is below.

![Moesif Data Model](https://docs.moesif.com/images/illustration/product-data-model.svg)

For more info, [view docs on Moesif data structure](https://www.moesif.com/docs/getting-started/overview/).

## Filtering

### Query Params
Some endpoints require a date range for data to look at. This is done via the `from` and the `to`
query parameters. There is also an optional `time_zone` query parameter if you want the calendar dates aligned to your local time zone. 
Time zone is `UTC` by default and must be a [TZ Database Name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) such as `America/Los_Angeles`

Relative dates support the following units:

|symbol|unit|
|------|----|
|s|seconds|
|m|minutes|
|h|hours|
|d|days|
|w|weeks|
|M|months|
|now|current UTC time|

Dates can optionally be prepended with a `-` or a `+`

Some examples:

|From Date|To Date|Description|
|---------|-------|-----------|
|-24h|now|from 24 hours ago to now|
|-1d|now|from 1 day ago to now|
|-1w|now|from 1 week ago to now|
|-2w|-1w|frm 2 weeks ago to 1 week ago|
|-1M|1M|from 1 month ago to 1 month in the future|

<aside class="notice">
Dates are aligned to calendar dates. For example, if the current time is 2:30pm on a Wednesday and you specify `from=-2d`, the start of the time period will be 12:00am of the previous Monday based on `time_zone`.
</aside>

### Elasticsearch DSL

The Moesif Search APIs supports majority of the [Elasticsearch/Opensearch Search DSL](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-request-body.html), which makes it super flexible to generate the report you're looking for. Only the DSL for search is supported. Other APIs outside of search are not supported. 
You can generate a query quickly within the Moesif UI by clicking the orange "Embed" button on any report. Then select "Search API". The generated CURL command will be for the exact report you are looking at. If you change filters or other criteria, you can go back and click "Embed" again to see how it changes. For help building a query for your business requirements, [contact us](mailto:support@moesif.com).

### Example: Getting most recent 500 errors

If you wanted to get the most recent API errors, you can filter by API calls with response status 500 and sort by 
request time in descending order. 

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.com/search/~/search/events?from=-1d&to=now</code>
<br><br><i>Example Request</i><br>
</blockquote>

```json
{
  "post_filter": {
    "bool": {
      "should": {
        "term": {
          "response.status": "500"
        }
      }
    }
  },
  "size": 50,
  "sort": [
    {
      "request.time": "desc"
    }
  ]
}
```

```shell
curl -XPOST \
    -d '{"post_filter":{"bool":{"should":{"term":{"response.status":"500"}}}},"size":50,"sort":[{"request.time":"desc"}]}' \
    -H 'Accept: application/json' \
    -H 'Authorization: Bearer {access-token}' \
    "https://api.moesif.com/search/~/search/events?from=-1d&to=now"
```

### Example: Getting API usage per customer

Another popular use case is to get the monthly API usage for a specific customer so you can 
display current usage vs. plan quota in your customer facing portal. 
This can be done easily by looking at past month and getting a count for the user_id

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.com/search/~/search/count?from=-1M&to=now</code>
<br><br><i>Example Request</i><br>
</blockquote>

```json
{
  "post_filter": {
    "bool": {
      "should": {
        "term": {
          "user_id.raw": "123456"
        }
      }
    }
  }
}
```

```shell
curl -XPOST \
    -d '{"post_filter":{"bool":{"should":{"term":{"user_id.raw":"123456"}}}}}' \
    -H 'Accept: application/json' \
    -H 'Authorization: Bearer {access-token}' \
    "https://api.moesif.com/search/~/count/events?from=-1M&to=now"
```
## Pagination 

### Sorting List of Items

> To rapidly generate your query, it's strongly recommended using the query builder within the Moesif UI. This can be found by clicking orange "Embed" button and selecting "Search API". Set up your sort field and click the next page to see an example for pagination. 

Moesif's search APIs (such as to get list of events of users) use a combination of keyset and seek pagination to ensure APIs are performant for very large offset values. For an overview of different types, see [this blog post on pagination](https://www.moesif.com/blog/technical/api-design/REST-API-Design-Filtering-Sorting-and-Pagination/). 

For pagination, the search API allows for three request body fields:

* `size` is the number of records to return in the response (i.e. batch size)
* `sort` defines how the dataset is sorted
* `search_after` is the last seen key(s) from previous page. This is not set if this is the first page.

For the request, we need to define the last item seen in the ordered list. 
This can be obtained by looking at the previous response's `hits.hits.sort` field.

__Sorting items by request time__
For example, let's say we want to return the most recent events in descending order in batches of 100 items. For each page after the first, we should set the last event already seen as the `request.time`.

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.com/search/~/search/events?from=-7d&to=now</code>
<br><br><i>Sorting items by request time</i><br>
</blockquote>

```json
{
    "size": 10,
    "search_after": [
        1694190464456
    ],
    "sort": [
        {
            "request.time": {
                "order": "desc",
                "unmapped_type": "string"
            }
        }
    ]
}
```

__Sorting items by low cardinality key__

For lower cardinality keys (likes response.status), many events may match the same status code. In order to have a stable sort, you must use a high cardinality key as well such that it's a sort on a compound key. Below is an example using both the response.status as well as the _id field (which is guaranteed to be unique)

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.com/search/~/search/events?from=-7d&to=now</code>
<br><br><i>Sorting items by low cardinality key</i><br>
</blockquote>

```json
{
    "size": 50,
    "search_after": [
        "12345",
        "AYpjf3Gow2BIxAOLPgx4"
    ],
    "sort": [
        {
            "user_id.raw": {
                "order": "desc",
                "unmapped_type": "string"
            }
        },
        {
            "_id": "desc"
        }
    ]
}
```

### Sorting Metric Terms

> To rapidly generate your query, t's strongly recommended using the query builder within the Moesif UI. This can be found by clicking orange "Embed" button and selecting "Search API".

Metrics APIs (such as to get a time series or segmentation report) do not support pagination as the response is already aggregated and contains the required dataset.
However, Moesif does support sorting by "top X" and "Bottom X" for when a "group by" is present. This is important to define whether you want the top terms or bottom terms and what is the metric to order the group by terms. 

__Sorting group by terms__

In the below example, we have a segmentation report that gets the total event count for the top 10 companies. The query has a "group by" on `company_id.raw`. The group by will return the top 10 terms sorted by the company's event count (`weight`) in descending order (`desc`).

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.com/search/~/search/events?from=-7d&to=now</code>
<br><br><i>Sorting group by term</i><br>
</blockquote>

```json
{
    "aggs": {
        "seg": {
            "filter": {
                "match_all": {}
            },
            "aggs": {
                "company_id.raw": {
                    "terms": {
                        "field": "company_id.raw",
                        "size": "20",
                        "min_doc_count": 1,
                        "order": {
                            "weight|sum": "desc"
                        },
                        "missing": "(none)"
                    },
                    "aggs": {
                        "weight|sum": {
                            "sum": {
                                "field": "weight",
                                "missing": 1
                            }
                        }
                    }
                },
                "weight|sum": {
                    "sum": {
                        "field": "weight",
                        "missing": 1
                    }
                }
            }
        }
    },
    "size": 0
}
```

__Sorting by a different metric__


The metric returned and the sort order can be different. In the below example, the metric returned is 90th percentile latency, but we still want to sort by the top 10 APIs 
by volume so we ignore the small volume APIs. 

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.com/search/~/search/events?from=-7d&to=now</code>
<br><br><i>Sorting by a different metric</i><br>
</blockquote>

```json
{
    "aggs": {
        "seg": {
            "filter": {
                "match_all": {}
            },
            "aggs": {
                "request.route.raw": {
                    "terms": {
                        "field": "request.route.raw",
                        "size": "10",
                        "min_doc_count": 1,
                        "order": {
                            "duration_ms|percentiles(90).90": "desc"
                        },
                        "missing": "(none)"
                    },
                    "aggs": {
                        "duration_ms|percentiles(90)": {
                            "percentiles": {
                                "field": "duration_ms",
                                "percents": [
                                    90
                                ]
                            }
                        }
                    }
                },
                "duration_ms|percentiles(90)": {
                    "percentiles": {
                        "field": "duration_ms",
                        "percents": [
                            90
                        ]
                    }
                }
            }
        }
    },
    "size": 0
}
```

## Idempotency 

Moesif Collector API support idempotent requests. This ensures Moesif does not create duplicate events even if the same event was sent twice to the Moesif Collector API.
For users and companies APIs, this is automatic. For events and actions APIs, ensure you set the `transaction_id` for each event to a random UUID.
This should be a 36 character UUID such as `123e4567-e89b-12d3-a456-426614174000`. Moesif uses the `transaction_id` for ensuring duplicate events are not created.
Setting the `transaction_id` is strongly recommended if you can replay processing from a pipeline like logstash.

### Deduplication for Batches
Because each event has it's own `transaction_id`, Moesif will still deduplicate even if the batches are different.
For example, let's say you send the following batches:

1. Send a batch of two events containing transaction_id's A, B
2. Send a batch of one event containing transaction_id C
3. Send a batch of three events containing transaction_id's A, C, D

At the end, Moesif will only contain 4 events (A, B, C, D)

## Request Format
For POST, PUT, and PATCH requests, the request body should be JSON. The `Content-Type` header
should be set to `application/json`

## Response Format
The response body format is always JSON. Successful operations are seen via 2xx status code. Successful creation of new objects will be seen via 201. 4xx status implies client error.

The REST API JSON payload uses _underscore_ format (i.e some_key). Many of the API libs
may use camelCase, PascalCase, or other as their model entities. Please
select the respective language tab.

## CORS
[CORS](/blog/technical/cors/Authoritative-Guide-to-CORS-Cross-Origin-Resource-Sharing-for-REST-APIs/) is enabled on this API. `Access-Control-Allow-Origin` is set to *

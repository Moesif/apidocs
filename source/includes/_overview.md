# Overview

## Pagination and Filtering

### Dates
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


### Search DSL

For certain search endpoints, Moesif supports querying and filtering using [Elasticsearch DSL](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-request-body.html). Simply pass the DSL as the request body.
While majority of DSL for Elasticsearch's Request Body Search is supported by Moesif, other administrative APIs are unavailable. For help building a query for your business requirements, [contact us](mailto:support@moesif.com).

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

## Request Format
For POST, PUT, and PATCH requests, the request body should be JSON. The `Content-Type` header
should be set to `application/json`

## Response Format
The response body format is always JSON. Successful operations are seen via 2xx status code. Successful creation of new objects will be seen via 201. 4xx status implies client error.

The REST API JSON payloads uses _underscore_ format (i.e some_key). Many of the API libs
may use camelCase, PascalCase, or other as their model entities. Please
select the respective language tab.

## CORS
[CORS](/blog/technical/cors/Authoritative-Guide-to-CORS-Cross-Origin-Resource-Sharing-for-REST-APIs/) is enabled on this API. `Access-Control-Allow-Origin` is set to *

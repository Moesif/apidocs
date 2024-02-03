## Errors

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request has an incorrect parameter
401 | Unauthorized -- Your `X-Moesif-Application-Id` or `Authorization` header is incorrect or missing required scopes
402 | Payment Required -- Your subscription is not active or has been cancelled
404 | Not Found -- The specified endpoint could not be found
405 | Method Not Allowed -- You tried to access a resource with an invalid HTTP method
406 | Not Acceptable -- You requested a format that is not JSON format, Moesif's API supports JSON
410 | Gone -- The resource requested has been removed from our servers
429 | Too Many Requests -- You are hitting a rate limit such as too many queries at same time.
500 | Internal Server Error -- We had a problem with our server. Please [contact us](mailto:support@moesif.com)
502 | Bad Gateway -- A transient error when no server is available to handle your request, retry again or [contact us](mailto:support@moesif.com) if problem persists.
503 | Service Unavailable -- A transient error when no server is available to handle your request, retry again or [contact us](mailto:support@moesif.com) if problem persists.

## Limits and SLAs

### Collector API

|Limit|Value|
|-----|-----|
|Maximum size of single event|1MB|
|Maximum size of a batch of events|50MB|
|Cutoff for a request.body or response.body|450KB|

The maximum size of an event (one API call or user action) is 1MB, which is a hard limit due to how the Moesif platform was architected for scale. Majority of APIs we see have an average event size of 1Kb to 5Kb so it would be unusual to reach this limit. With that said, there are a couple of things you can try:

1. Don't log non API traffic using skip functionality (i.e. HTML, pictures, etc). Moesif is not designed for monitoring access to large files nor provides much usefulness. 
2. Remove large keys from payload using mask data. This can be helpful if you have a JSON key that's large but not valuable. 

If you're sending a batch of events to the batch API, the maximum batch size is 50MB regardless if compression is used. For batches of events greater than 50MB, you should break up the batch into smaller batches. 

### Automatic Mitigation

Moesif will still try to log events over 1MB by truncating the request or response body to 450Kb and base64 encoded it. The logged body won't be valid JSON but at least the event is logged for later inspection. A warning is also displayed in the Moesif app so you can identify when this is occurring. The partial body will not be analyzed by Moesif's body analytics feature so filters may not match on body fields, etc.

### Management API 

The Management API has a rate limit of 500 queries/minute, but can burst higher if needed. The Management API will return `429 Too Many Requests` once you hit this limit. Moesif reserves the right to modify these limits to protect the reliability of the Moesif Platform. 

The Management API is intended for interactive workflows and programmatically query metrics. If you need to ingest a lot of data at once, you must use the Collector API. If you need to export a lot of data, you should use the bulk export feature. 

### Late Events

The Moesif collector API and integrations stream events in real-time. However, we understand you may have special circumstances that cause events to be sent later than expected. By default, Moesif can process events that are up to 30 days in the past. If it's over 30 days, the request will be rejected by the collector. If you need to backfill historical data larger than this, please contact us so we can temporarily enable it for your subscription.

### Impact to workflows

Events that are more than 5 minutes in the past are considered "late events" which may impact certain workflows like alerts and billing that have strict deadlines. Moesif server integrations streams events to Moesif in real-time within milliseconds so if you have an ingestion delay in the minutes it likely implies something wrong with your server integration or clock. We track ingestion delays internally, so we'll reach out if we see such issues happening on your account.
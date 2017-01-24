# Overview

## API Base URL

The base url for v1 of the API is:

**<https://api.moesif.net/v1>**

Prepend all endpoints below with this base url. Both HTTPS and HTTP requests are supported.
Calls to our API are routed to the nearest datacenter.

## Authentication
Authentication is done via HTTP Headers.
The same Application Id token can be used for the cloud proxy server, the client libs, and the REST API. Add the following header to all API Calls.

`X-Moesif-Application-Id: my_application_id`


<aside class="notice">
Replace <i>my_application_id</i> with your real Application Id. You can find your Application Id under <i>Menu -> App Setup Details</i>
</aside>

## Request Format
  For POST, PUT, and PATCH requests, the request body should be JSON. The `Content-Type` header should be set to `application/json`

## CORS
[CORS](/blog/technical/cors/Authoritative-Guide-to-CORS-Cross-Origin-Resource-Sharing-for-REST-APIs/) is allowed on this API. `Access-Control-Allow-Origin` is set to *

## Response Format
  The response body format is always JSON. Successful operations are seen via 2xx status code. Successful creation of new objects will be seen via 201. 4xx status implies client error.

## List of Endpoints
|URL | VERB | Description|
|----|----|---|
|/events | POST | Create a single API Call to Moesif|
|/events/batch | POST | Create a batch of API Calls to Moesif|

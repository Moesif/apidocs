# Overview

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

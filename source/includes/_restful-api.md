# Using RESTful API

Our RESTful API is open for developers who want to build new extensions and clients. They can integrate with Moesif as long as it can send HTTP requests.

<aside class="warning">
We already developed libraries for common frontend and backend languages. They are open-source and available on GitHub.
This RESTful API should be needed only if developing new clients.
</aside>

## Getting Started
### API Base URL

[![Moesif on Programmable Web](https://moesif.com/developer-documentation/images/programmable-web.png)](http://www.programmableweb.com/api/moesif)

The base url for our current version is:

**<https://api.moesif.net/v1>**

Prepend all endpoints below with this base url.
Calls to our API are routed to the nearest datacenter.

### API Authentication
Authentication is done via HTTP Headers
The same Application Id required for our proxy server and client libs can be used for our RESTful API. Simply add the following header to all API Calls.

`X-Moesif-Application-Id: my_application_id`

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

### Request Format
  For POST and PUT requests, the request body should be JSON. The `Content-Type` header should be set to `application/json`


### Response Format
  The response body format is always JSON. Successful operations are seen via 2xx status code. Successful creation of new objects will be seen via 201. 4xx status implies client error.

### Endpoints
|URL | VERB | Description|
|----|----|---|
|/events | POST | Add a single API Call to Moesif|
|/events/batch | POST | Add a batch of API Calls to Moesif|

## Add Single Event API

**`POST https://api.moesif.net/v1/events`**

Adds Single API Call to Moesif where the request body itself is a single API Call object with fields such as request and response.

### Body: API event object

```json
{
  "request": {
    "time": "2016-09-09T04:45:42.914",
    "uri": "https://api.acmeinc.com/items/83738/reviews/",
    "verb": "POST",
    "api_version": "1.1.0",
    "ip_address": "61.48.220.123",
    "headers": {
      "Host": "api.acmeinc.com",
      "Accept": "*/*",
      "Connection": "Keep-Alive",
      "Content-Type": "application/json",
      "Content-Length": "126",
      "Accept-Encoding": "gzip"
    },
    "body": {
      "items": [
        {
          "direction_type": 1,
          "item_id": "fwdsfrf",
          "liked": false
        },
        {
          "direction_type": 2,
          "item_id": "d43d3f",
          "liked": true
        }
      ]
    }
  },
  "response": {
    "time": "2016-09-09T04:45:42.914",
    "status": 500,
    "headers": {
      "Vary": "Accept-Encoding",
      "Pragma": "no-cache",
      "Expires": "-1",
      "Content-Type": "application/json; charset=utf-8",
      "Cache-Control": "no-cache"
    },
    "body": {
      "Error": "InvalidArgumentException",
      "Message": "Missing field location"
    }
  },
  "user_id": "mndug437f43",
  "session_token": "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f"
}

```



Fields | Required | Description
--------- | -------- | -----------
request.time | Required | Timestamp for the request in ISO 8601 format
request.uri | Required | Full uri such as https://api.com/?query=string including host, query string, etc
request.verb | Required | HTTP method used, i.e. `GET`, `POST`
request.api_version | Optional | API Version you want to tag this request with
request.ip_address | Optional | IP address of the end user
request.headers | Optional | Headers of the  request
request.body | Optional | Body of the request in JSON format
||
response.time | Required | Timestamp for the response in ISO 8601 format
response.status | Required | HTTP status code such as 200 or 500
request.ip_address | Optional | IP address of the responding server
response.headers | Required | Headers of the response
response.body | Required | Body of the response in JSON format
||
session_token | Recommend | The end user session token such as a JWT or Device Identifier. We auto-detect the session token but IP Address is used if we cannot detect it.
tags | Recommend | Comma separated list of tags for this API Call. **See Supported Tags**
user_id | Recommend | The permanent user_id for the enduser associated with this API Call


### Supported Tags:
1. `user`
- The `user` tag is a hint to what is considered the “user profile” for the signed in end user.
- Add to a *single* method/endpoint template which you consider has the most user metadata.
- For example, if you have an endpoint that gets the authenticated user via `GET /users/me`, add this header to those API Calls. The verb or url doesn't matter but the response body should have user's data.
- You shouldn't add to more than one method/endpoint combination. i.e. Don't add it to both `GET /users` and `POST /users` unless both return the same JSON schema.

## Add Events Batch API

**`POST https://api.moesif.net/v1/events/batch`**

Adds a batch of API Call to Moesif where the request body itself is a list of API Call objects with fields such as request and response.

This API takes a list form of the same schema defined in add single event.

The maximum batch size is **250kb**. Break up larger batches.

API Calls from different end-users can be added in a single batch. Each API Call Event in the list has independent `session_token` and `user_id` fields.

### Body: List of API event objects

```json
[
  {
  		"request": {
  			"time": "2016-09-09T04:45:42.914",
  			"uri": "https://api.acmeinc.com/items/83738/reviews/",
  			"verb": "POST",
  			"api_version": "1.1.0",
  			"ip_address": "61.48.220.123",
  			"headers": {
  				"Host": "api.acmeinc.com",
  				"Accept": "*/*",
  				"Connection": "Keep-Alive",
  				"Content-Type": "application/json",
  				"Content-Length": "126",
  				"Accept-Encoding": "gzip"
  			},
  			"body": {
  				"items": [
  					{
  						"direction_type": 1,
  						"item_id": "fwdsfrf",
  						"liked": false
  					},
  					{
  						"direction_type": 2,
  						"item_id": "d43d3f",
  						"liked": true
  					}
  				]
  			}
  		},
  		"response": {
  			"time": "2016-09-09T04:45:42.914",
  			"status": 500,
  			"headers": {
  				"Vary": "Accept-Encoding",
  				"Pragma": "no-cache",
  				"Expires": "-1",
  				"Content-Type": "application/json; charset=utf-8",
  				"Cache-Control": "no-cache"
  			},
  			"body": {
  				"Error": "InvalidArgumentException",
  				"Message": "Missing field location"
  			}
  		},
  		"user_id": "mndug437f43",
  		"session_token": "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f"
  }
]

```



Fields | Required | Description
--------- | -------- | -----------
request.time | Required | Timestamp for the request in ISO 8601 format
request.uri | Required | Full uri such as https://api.com/?query=string including host, query string, etc
request.verb | Required | HTTP method used, i.e. `GET`, `POST`
request.api_version | Optional | API Version you want to tag this request with
request.ip_address | Optional | IP address of the end user
request.headers | Optional | Headers of the  request
request.body | Optional | Body of the request in JSON format
||
response.time | Required | Timestamp for the response in ISO 8601 format
response.status | Required | HTTP status code such as 200 or 500
request.ip_address | Optional | IP address of the responding server
response.headers | Required | Headers of the response
response.body | Required | Body of the response in JSON format
||
session_token | Recommend | The end user session token such as a JWT or Device Identifier. We auto-detect the session token but IP Address is used if we cannot detect it.
tags | Recommend | Comma separated list of tags for this API Call. **See Supported Tags**
user_id | Recommend | The permanent user_id for the enduser associated with this API Call


### Supported Tags:
1. `user`
  - The `user` tag is a hint to what is considered the “user profile” for the signed in end user.
  - Add to a *single* method/endpoint template which you consider has the most user metadata.
  - For example, if you have an endpoint that gets the authenticated user via `GET /users/me`, add this header to those API Calls. The verb or url doesn't matter but the response body should have user's data.
  - You shouldn't add to more than one method/endpoint combination. i.e. Don't add it to both `GET /users` and `POST /users` unless both return the same JSON schema.

# Event Ingestion API

You should only need to use this API set if you want to post events from
a source that you can't proxy through us or for events that you already
collected from elsewhere and want to post to Moesif to analyize along with rest of
the data. 

<aside class="warning">
For most scenarios, the Event Ingestion API isn't needed. Feel free to ignore 
 the below section in that case. 
</aside>

## API end point

This is the final endpoint for all event ingestion APIs. 

`https://api.moesif.net`

So prepend all end point below with this host name. 


## App Id

The App Id should be generated through your settings in Moesif Dashboard.
It is the same appId that you would for the proxy as well. Basically, this identifies your unique app, so
that all data related to that app is analyzed together. Please include this in the header
of the requests to Moeisf. 

`X-Moesif-Application-Id` **required**

## Posting a single Event

Since for now, we are focusing on restful API, so event object consistent of
a request object and a response object. 

### HTTP Request

`POST /moesifapi/events`

### Body: event object. 

```json
{
  "request": {
    "time": "2016-08-16T09:21:56.998Z",
    "uri": "string",
    "verb": "string",
    "ip_address": "string",
    "headers": {},
    "body": {}
  },
  "response": {
    "time": "2016-08-16T09:21:56.998Z",
    "status": 200,
    "ip_address": "string",
    "headers": {},
    "body": {}
  }
}

```

Body of this api will consist of one event, which consists of a request and response object. 

#### Request: 

Fields | Required | Description
--------- | -------- | -----------
time | Required | The timestamp for the request in ISO 8601 format. 
uri | Required | The full uri, `https://api.com/?query=string` if there is a query string, please keep it as part of uri
verb | Required | The http method used, i.e. `GET`, `POST`
ip_address | Required | This should be the ip address of the end user
headers | Optional | This would be the headers of the original request. Again, if this is a user related request, please tag it with `X-Moesif-Tags` with the value `me`
body | Optional | This should be the body of the original request. 


#### Response: 

Fields | Required | Description
--------- | -------- | -----------
time | Required | The timestamp for the response in ISO 8601 format. 
status | Required | The http status of the 
verb | Required | The http method used. 
headers | Optional | This would be the headrs of the original body. 
body | Optional | This should be the body of the original response. 
 
## Posting a batch of Events

### HTTP Request

`POST /moesifapi/events/batch`

### Body: an array of event objects. 

The maximum size is 250kb. Split larger batch sizes into multiple batches. 

```json
[
  {
    "request": {
        "time": "2016-08-16T09:21:56.998Z",
        "uri": "string",
        "verb": "string",
        "ip_address": "string",
        "headers": {},
        "body": {}
    },
    "response": {
        "time": "2016-08-16T09:21:56.998Z",
        "status": 200,
        "ip_address": "string",
        "headers": {},
        "body": {}
    }
  },
  {},
]
```

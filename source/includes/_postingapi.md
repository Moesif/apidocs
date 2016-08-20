# Event Ingestion API

You should only need to use this API set if you want to post events from
a source that you can't proxy through us or for events that you already
collected from elsewhere and want to post to Moesif to analyize along with rest of
the data. 

<aside class="warning">
For most scenarios, the event ingest API isn't needed. Feel free to ignore 
 the below section in that case. 
</aside>

## API end point

This is the final endpoint for this. 

`https://api.moesif.net`

So prepend all end point below with this host name. 


## App Id

The appId should be generated through your settings, it is the same appId that
you would for the proxy as well. Basically, this identifies your unique app, so
that all data related to that app is analyzed together. 

## Posting a single Event

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

Parameter | Required | Description
--------- | -------- | -----------
time | Required | The timestamp for the request in ISO 8601 format. 
uri | Required | The full uri, `https://api.com/?query=string` if there is a query string, please keep it as part of uri
verb | Required | The http method used. 
ip_address | Required | This should be the ip address of the end user
headers | Optional | This would be the headers of the original request. Again, if this is a user related request, please tag it with `X-Moesif-Tags` with the value `me`
body | Optional | This should be the body of the original request. 


#### Response: 

Parameter | Required | Description
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

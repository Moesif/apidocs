## API Calls

### Log an API Call

**`POST https://api.moesif.net/v1/events`**

Log a single API call to Moesif.
The request payload is a single API event model containing the API request, the API response, and any custom event metadata.

<aside class="warning">
For logging API calls at scale, most customers should integrate with one of Moesif's <a href="https://www.moesif.com/implementation">API monitoring agents</a> which instrument your API automatically and handle batching.
</aside>

<aside class="info">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/events</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  {
    "request": {
      "time": "2022-03-01T04:45:42.914",
      "uri": "https://api.acmeinc.com/items/12345/reviews/",
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
            "item_id": "hello",
            "liked": false
          },
          {
            "direction_type": 2,
            "item_id": "world",
            "liked": true
          }
        ]
      },
      "transfer_encoding": ""
    },
    "response": {
      "time": "2022-03-01T04:45:42.914",
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
      },
      "transfer_encoding": ""
    },
    "user_id": "12345",
    "company_id": "67890",
    "session_token": "XXXXXXXXX",
    "metadata": {
        "some_string": "I am a string",
        "some_int": 77,
        "some_object": {
            "some_sub_field": "some_value"
        }
    }
  }
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/events \
  -H 'Content-Type: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'
  -d '{"request":{"time":"2022-03-01T04:45:42.914","uri":"https://api.acmeinc.com/items/12345/reviews/","verb":"POST","api_version":"1.1.0","ip_address":"61.48.220.123","headers":{"Host":"api.acmeinc.com","Accept":"*/*","Connection":"Keep-Alive","Content-Type":"application/json","Content-Length":"126","Accept-Encoding":"gzip"},"body":{"items":[{"direction_type":1,"item_id":"hello","liked":false},{"direction_type":2,"item_id":"world","liked":true}]},"transfer_encoding":""},"response":{"time":"2022-03-01T04:45:42.914","status":500,"headers":{"Vary":"Accept-Encoding","Pragma":"no-cache","Expires":"-1","Content-Type":"application/json; charset=utf-8","Cache-Control":"no-cache"},"body":{"Error":"InvalidArgumentException","Message":"Missing field location"},"transfer_encoding":""},"user_id":"12345","company_id":"67890","session_token":"XXXXXXXXX","metadata":{"some_string":"I am a string","some_int":77,"some_object":{"some_sub_field":"some_value"}}}'
```

```java
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID");
APIController api = getClient().getAPI();

// Generate the event
Map<String, String> reqHeaders = new HashMap<String, String>();
reqHeaders.put("Host", "api.acmeinc.com");
reqHeaders.put("Accept", "*/*");
reqHeaders.put("Connection", "Keep-Alive");
reqHeaders.put("User-Agent", "Apache-HttpClient");
reqHeaders.put("Content-Type", "application/json");
reqHeaders.put("Content-Length", "126");
reqHeaders.put("Accept-Encoding", "gzip");

Object reqBody = APIHelper.deserialize("{" +
  "\"items\": [" +
    "{" +
      "\"type\": 1," +
      "\"id\": \"hello\"" +,
    "}," +
    "{" +
      "\"type\": 2," +
       "\"id\": \"world\"" +
     "}" +
  "]" +
  "}");

Map<String, String> rspHeaders = new HashMap<String, String>();
rspHeaders.put("Vary", "Accept-Encoding");
rspHeaders.put("Pragma", "no-cache");
rspHeaders.put("Expires", "-1");
rspHeaders.put("Content-Type", "application/json; charset=utf-8");
rspHeaders.put("Cache-Control","no-cache");

Object rspBody = APIHelper.deserialize("{" +
    "\"Error\": \"InvalidArgumentException\"," +
    "\"Message\": \"Missing field field_a\"" +
  "}");


EventRequestModel eventReq = new EventRequestBuilder()
        .time(new Date())
        .uri("https://api.acmeinc.com/items/reviews/")
        .verb("PATCH")
        .apiVersion("1.1.0")
        .ipAddress("61.48.220.123")
        .headers(reqHeaders)
        .body(reqBody)
        .build();


EventResponseModel eventRsp = new EventResponseBuilder()
        .time(new Date(System.currentTimeMillis() + 1000))
        .status(500)
        .headers(rspHeaders)
        .body(rspBody)
        .build();

EventModel eventModel = new EventBuilder()
        .request(eventReq)
        .response(eventRsp)
        .userId("12345")
        .companyId("67890")
        .sessionToken("XXXXXXXXX")
        .build();

// Asynchronous Call to Create Event
MoesifAPIClient client = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID");
APIController api = getClient().getAPI();

APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
        // Do something
    }

    public void onFailure(HttpContext context, Throwable error) {
        // Do something else
    }
};

api.createEventsBatchAsync(eventsList, callBack);

// Synchronous Call to Create Event
api.createEventsBatch(eventsList, callBack);
```

```javascript--nodejs
// 1. Import the module
var moesifapi = require('moesifapi');
var EventModel = moesifapi.UserModel;
var api = moesifapi.ApiController;

// 2. Configure the ApplicationId
var config = moesifapi.configuration;
config.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";

// 3. Generate an API Event Model
var reqHeaders = JSON.parse('{' +
        '"Host": "api.acmeinc.com",' +
        '"Accept": "*/*",' +
        '"Connection": "Keep-Alive",' +
        '"User-Agent": "Apache-HttpClient",' +
        '"Content-Type": "application/json",' +
        '"Content-Length": "126",' +
        '"Accept-Encoding": "gzip"' +
    '}');

var reqBody = JSON.parse( '{' +
        '"items": [' +
            '{' +
                '"type": 1,' +
                '"id": "hello"' +
            '},' +
            '{' +
                '"type": 2,' +
                '"id": "world"' +
            '}' +
        ']' +
    '}');

var rspHeaders = JSON.parse('{' +
        '"Vary": "Accept-Encoding",' +
        '"Pragma": "no-cache",' +
        '"Expires": "-1",' +
        '"Content-Type": "application/json; charset=utf-8",' +
        '"Cache-Control": "no-cache"' +
    '}');

var rspBody = JSON.parse('{' +
        '"Error": "InvalidArgumentException",' +
        '"Message": "Missing field field_a"' +
    '}');

var reqDate = new Date();
var eventReq = {
    time: reqDate,
    uri: "https://api.acmeinc.com/items/reviews/",
    verb: "PATCH",
    apiVersion: "1.1.0",
    ipAddress: "61.48.220.123",
    headers: reqHeaders,
    body: reqBody
};

var eventRsp = {
    time: (new Date()).setMilliseconds(reqDate.getMilliseconds() + 500),
    status: 500,
    headers: rspHeaders,
    body: rspBody
};

var eventModel = {
    request: eventReq,
    response: eventRsp,
    userId: "12345",
    companyId: "67890",
    sessionToken: "XXXXXXXXX"
};

var events = [new EventModel(eventModel),
  new EventModel(eventModel),
  new EventModel(eventModel),
  new EventModel(eventModel)];

// 4. Send batch of events
api.createEventsBatch(events, function(error, response, context) {
  // Do Something
});

```

```python
from __future__ import print_function
from moesifapi.moesif_api_client import *
from moesifapi.models import *
from datetime import *

client = MoesifAPIClient(YOUR_COLLECTOR_APPLICATION_ID)
api = client.api

# Note: we recommend sending all API calls via MVC framework middleware.

req_headers = APIHelper.json_deserialize("""  {
  "Host": "api.acmeinc.com",
  "Accept": "*/*",
  "Connection": "Keep-Alive",
  "User-Agent": "Apache-HttpClient",
  "Content-Type": "application/json",
  "Content-Length": "126",
  "Accept-Encoding": "gzip"
} """)

req_body = APIHelper.json_deserialize( """{
  "items": [
    {
      "type": 1,
      "id": "hello"
    },
    {
      "type": 2,
      "id": "world"
    }
  ]
}""")

rsp_headers = APIHelper.json_deserialize("""  {
    "Date": "Mon, 01 Mar 2022 23:46:49 GMT",
    "Vary": "Accept-Encoding",
    "Pragma": "no-cache",
    "Expires": "-1",
    "Content-Type": "application/json; charset=utf-8"
    "Cache-Control": "no-cache"
  } """)

rsp_body = APIHelper.json_deserialize( """{
    "Error": "InvalidArgumentException",
    "Message": "Missing field field_a"
  }""")


event_req = EventRequestModel(time = datetime.utcnow() - timedelta(seconds=-1),
    uri = "https://api.acmeinc.com/items/reviews/",
    verb = "PATCH",
    api_version = "1.1.0",
    ip_address = "61.48.220.123",
    headers = req_headers,
    body = req_body)

event_rsp = EventResponseModel(time = datetime.utcnow(),
    status = 500,
    headers = rsp_headers,
    body = rsp_body)

event_model = EventModel(request = event_req,
    response = event_rsp,
    user_id = "12345",
    company_id = "67890",
    session_token = "XXXXXXXXX")


# Perform the API call through the SDK function
api.create_event(event_model)
```

```ruby
require 'moesif_api'

client = MoesifApi::MoesifAPIClient.new(YOUR_COLLECTOR_APPLICATION_ID)
api = client.api_controller

req_headers = JSON.parse('{'\
  '"Host": "api.acmeinc.com",'\
  '"Accept": "*/*",'\
  '"Connection": "Keep-Alive",'\
  '"User-Agent": "Apache-HttpClient",'\
  '"Content-Type": "application/json",'\
  '"Content-Length": "126",'\
  '"Accept-Encoding": "gzip"'\
'}')

req_body = JSON.parse( '{'\
  '"items": ['\
    '{'\
      '"type": 1,'\
      '"id": "hello"'\
    '},'\
    '{'\
      '"type": 2,'\
      '"id": "world"'\
    '}'\
  ']'\
'}')

rsp_headers = JSON.parse('{'\
  '"Date": "Mon, 01 Mar 2022 23:46:49 GMT",'\
                '"Vary": "Accept-Encoding",'\
  '"Pragma": "no-cache",'\
  '"Expires": "-1",'\
  '"Content-Type": "application/json; charset=utf-8",'\
                '"Cache-Control": "no-cache"'\
'}')

rsp_body = JSON.parse('{'\
  '"Error": "InvalidArgumentException",'\
  '"Message": "Missing field field_a"'\
'}')


event_req = EventRequestModel.new()
event_req.time = "2022-03-01T04:45:42.914"
event_req.uri = "https://api.acmeinc.com/items/reviews/"
event_req.verb = "PATCH"
event_req.api_version = "1.1.0"
event_req.ip_address = "61.48.220.123"
event_req.headers = req_headers
event_req.body = req_body

event_rsp = EventResponseModel.new()
event_rsp.time = "2022-03-01T04:45:42.914"
event_rsp.status = 500
event_rsp.headers = rsp_headers
event_rsp.body = rsp_body

event_model = EventModel.new()
event_model.request = event_req
event_model.response = event_rsp
event_model.user_id ="12345"
event_model.company_id ="67890"
event_model.session_token = "XXXXXXXXX"

# Perform the API call through the SDK function
response = api.create_event(event_model)

```

```csharp
using Moesif.Api;
using Moesif.Api.Helpers;

// Create client instance using your ApplicationId
var client = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID");
var apiClient = GetClient().Api;

// Parameters for the API call
var reqHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Host"": ""api.acmeinc.com"",
        ""Accept"": ""*/*"",
        ""Connection"": ""Keep-Alive"",
        ""User-Agent"": ""Apache-HttpClient"",
        ""Content-Type"": ""application/json"",
        ""Content-Length"": ""126"",
        ""Accept-Encoding"": ""gzip""
    }");

var reqBody = APIHelper.JsonDeserialize<object>(@" {
        ""items"": [
            {
                ""type"": 1,
                ""id"": ""hello""
            },
            {
                ""type"": 2,
                ""id"": ""world""
            }
        ]
    }");

var rspHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Date"": ""Mon, 01 Mar 2022 23:46:49 GMT"",
        ""Vary"": ""Accept-Encoding"",
        ""Pragma"": ""no-cache"",
        ""Expires"": ""-1"",
        ""Content-Type"": ""application/json; charset=utf-8"",
        ""Cache-Control"": ""no-cache""
    } ");

var rspBody = APIHelper.JsonDeserialize<object>(@" {
        ""Error"": ""InvalidArgumentException"",
        ""Message"": ""Missing field field_a""
    }");


var eventReq = new EventRequestModel()
{
    Time = DateTime.Parse("2022-03-01T04:45:42.914"),
    Uri = "https://api.acmeinc.com/items/reviews/",
    Verb = "PATCH",
    ApiVersion = "1.1.0",
    IpAddress = "61.48.220.123",
    Headers = reqHeaders,
    Body = reqBody
};

var eventRsp = new EventResponseModel()
{
    Time = DateTime.Parse("2022-03-01T04:45:42.914"),
    Status = 500,
    Headers = rspHeaders,
    Body = rspBody
};

var eventModel = new EventModel()
{
    Request = eventReq,
    Response = eventRsp,
    UserId = "12345",
    CompanyId = "67890",
    SessionToken = "XXXXXXXXX"
};

//////////////////////////////////////
// Example for making an async call //     
//////////////////////////////////////
try
{
    await controller.CreateEventAsync(eventModel);
}
catch(APIException)
{
    // Handle Error
};

///////////////////////////////////////////
// Example for making a synchronous call //
///////////////////////////////////////////
try
{
    controller.CreateEvent(eventModel);
}
catch(APIException)
{
    // Handle Error
};

```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"
import "time"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

reqTime := time.Now().UTC()
apiVersion := "1.0"
ipAddress := "61.48.220.123"

req := models.EventRequestModel{
  Time:       &reqTime,
  Uri:        "https://api.acmeinc.com/widgets",
  Verb:       "GET",
  ApiVersion: &apiVersion,
  IpAddress:  &ipAddress,
  Headers: map[string]interface{}{
    "ReqHeader1": "ReqHeaderValue1",
  },
  Body: nil,
}

rspTime := time.Now().UTC().Add(time.Duration(1) * time.Second)

rsp := models.EventResponseModel{
  Time:      &rspTime,
  Status:    500,
  IpAddress: nil,
  Headers: map[string]interface{}{
    "RspHeader1":     "RspHeaderValue1",
    "Content-Type":   "application/json",
    "Content-Length": "1000",
  },
  Body: map[string]interface{}{
    "Key1": "Value1",
    "Key2": 12,
    "Key3": map[string]interface{}{
      "Key3_1": "SomeValue",
    },
  },
}

sessionToken := "XXXXXXXXX"
userId := "12345"
companyId: := "67890"

event := models.EventModel{
  Request:      req,
  Response:     rsp,
  SessionToken: &sessionToken,
  Tags:         nil,
  UserId:       &userId,
  CompanyId:    &companyId,
}


// Queue the event (will queue the requests into batches and flush buffers periodically.)
err := apiClient.QueueEvent(&event)

// Create the event synchronously
err := apiClient.CreateEvent(&event)

```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.

require_once "vendor/autoload.php";

// Import the SDK client in your project:

use MoesifApi\MoesifApiClient;

// Instantiate the client. After this, you can now access the Moesif API
// and call the respective methods:

$client = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID");
$api = $client->getApi();

$event = new Models\EventModel();
$reqdate = new DateTime();
$rspdate = new DateTime();

$event->request = array(
       "time" => $reqdate->format(DateTime::ISO8601), 
       "uri" => "https://api.acmeinc.com/items/reviews/", 
       "verb" => "PATCH", 
       "api_version" => "1.1.0", 
       "ip_address" => "61.48.220.123", 
       "headers" => array(
         "Host" => "api.acmeinc.com", 
         "Accept" => "_/_", 
         "Connection" => "Keep-Alive", 
         "User-Agent" => "moesifapi-php/1.1.5",
         "Content-Type" => "application/json", 
         "Content-Length" => "126", 
         "Accept-Encoding" => "gzip"), 
        "body" => array(
          "review_id" => 132232, 
          "item_id" => "ewdcpoijc0", 
          "liked" => false)
        );

 $event->response = array(
           "time" => $rspdate->format(DateTime::ISO8601), 
           "status" => 500, 
           "headers" => array(
             "Date" => "Tue, 1 Mar 2022 23:46:49 GMT", 
             "Vary" => "Accept-Encoding", 
             "Pragma" => "no-cache", 
             "Expires" => "-1", 
             "Content-Type" => "application/json; charset=utf-8", 
             "X-Powered-By" => "ARR/3.0", 
             "Cache-Control" => "no-cache", 
             "Arr-Disable-Session-Affinity" => "true"), 
             "body" => array(
               "item_id" => "13221", 
               "title" => "Red Brown Chair",
               "description" => "Red brown chair for sale",
               "price" => 22.23
             )
        );
$event->metadata = array(
          "foo" => "bar" 
        );

$event->user_id = "12345";
$event->company_id = "67890";
$event->session_token = "XXXXXXXXX";

$api->createEvent($event);
```

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
request |object | __true__ | The object that specifies the API request.
<p style="margin-left:1.5em">time</p> |string(date-time) | __true__ | Timestamp for the request in ISO 8601 format.
<p style="margin-left:1.5em">uri</p> | string| __true__ | Full uri such as _https://api.acmeinc.com/?query=string_ including protocol, host, and query string.
<p style="margin-left:1.5em">verb</p> | string| __true__ | HTTP method used such as `GET` or `POST`.
<p style="margin-left:1.5em">api_version</p> | string| false | API Version you want to tag this request with such as _1.0.0_.
<p style="margin-left:1.5em">ip_address</p> | string| false | IP address of the requester, If not set, we extract the remote IP address.
<p style="margin-left:1.5em">headers</p> |object | __true__ | Headers of the  request as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2).
<p style="margin-left:1.5em">body</p> |object | false | Payload of the request in either JSON or a base64 encoded string.
<p style="margin-left:1.5em">transfer_encoding</p> | string | false | Specifies the transfer encoding of _request.body_ field. If set to _json_ then the response.body must be a JSON object. If set to _base64_, then _request.body_ must be a base64 encoded string. Helpful for binary payloads. If not set, the body is assumed to be _json_.
||
response |object | false | The object that specifies the API response. The response object can be undefined such as a request timeouts.
<p style="margin-left:1.5em">time</p> |string(date-time) | __true__ | Timestamp for the response in ISO 8601 format.
<p style="margin-left:1.5em">status</p> | integer | __true__ | HTTP status code as number such as _200_ or _500_.
<p style="margin-left:1.5em">ip_address</p> | string | false | IP address of the responding server.
<p style="margin-left:1.5em">headers</p> |object | __true__ | Headers of the response as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2)
<p style="margin-left:1.5em">body</p> |object | false | Payload of the response in either JSON or a base64 encoded string.
<p style="margin-left:1.5em">transfer_encoding</p> | string | false | Specifies the transfer encoding of _response.body_ field. If set to _json_ then the response.body must be a JSON object. If set to _base64_, then _response.body_ must be a base64 encoded string. Helpful for binary payloads. If not set, the body is assumed to be _json_.
||
session_token | string | false | Set the API key/session token used for this API call. Moesif will auto-detect API sessions if not set.
user_id | string | false | Associate this API call to a [user](#users).
company_id | string | false | Associate this API call to a [company](#companies) (Helpful for B2B companies).
direction | string | false | The direction of this API call which can be _Incoming_ or _Outgoing_.
metadata | object | false | An object containing any custom event metadata you want to store with this event.


### Log API Calls in Batch

**`POST https://api.moesif.net/v1/events/batch`**

Creates and logs a batch of API calls to Moesif.
The request payload is an array API calls entities, each consisting of the API request, the API response, and any custom event metadata.

This API takes a list form of the same model defined in create single event.

The maximum batch size is **12MB**. Break up larger batches.

<aside class="info">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/events/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  [
    {
        "request": {
          "time": "2022-03-01T04:45:42.914",
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
                "item_id": "hello",
                "liked": false
              },
              {
                "direction_type": 2,
                "item_id": "world",
                "liked": true
              }
            ]
          },
          "transfer_encoding": ""
        },
        "response": {
          "time": "2022-03-01T04:45:42.914",
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
          },
          "transfer_encoding": ""
        },
        "user_id": "12345",
        "company_id": "67890",
        "session_token": "XXXXXXXXX",
        "metadata": {
            "some_string": "I am a string",
            "some_int": 77,
            "some_object": {
                "some_sub_field": "some_value"
            }
        }
    }
  ]
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/events/batch \
  -H 'Content-Type: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'
  -d '[{"request":{"time":"2022-03-01T04:45:42.914","uri":"https://api.acmeinc.com/items/83738/reviews/","verb":"POST","api_version":"1.1.0","ip_address":"61.48.220.123","headers":{"Host":"api.acmeinc.com","Accept":"*/*","Connection":"Keep-Alive","Content-Type":"application/json","Content-Length":"126","Accept-Encoding":"gzip"},"body":{"items":[{"direction_type":1,"item_id":"hello","liked":false},{"direction_type":2,"item_id":"world","liked":true}]},"transfer_encoding":""},"response":{"time":"2022-03-01T04:45:42.914","status":500,"headers":{"Vary":"Accept-Encoding","Pragma":"no-cache","Expires":"-1","Content-Type":"application/json; charset=utf-8","Cache-Control":"no-cache"},"body":{"Error":"InvalidArgumentException","Message":"Missing field location"},"transfer_encoding":""},"user_id":"12345","company_id":"67890","session_token":"XXXXXXXXX","metadata":{"some_string":"I am a string","some_int":77,"some_object":{"some_sub_field":"some_value"}}}]'
```

```java
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID");
APIController api = getClient().getAPI();

// Generate the events
Map<String, String> reqHeaders = new HashMap<String, String>();
reqHeaders.put("Host", "api.acmeinc.com");
reqHeaders.put("Accept", "*/*");
reqHeaders.put("Connection", "Keep-Alive");
reqHeaders.put("User-Agent", "Apache-HttpClient");
reqHeaders.put("Content-Type", "application/json");
reqHeaders.put("Content-Length", "126");
reqHeaders.put("Accept-Encoding", "gzip");

Object reqBody = APIHelper.deserialize("{" +
  "\"items\": [" +
    "{" +
      "\"type\": 1," +
      "\"id\": \"hello\"" +
    "}," +
    "{" +
      "\"type\": 2," +
      "\"id\": \"world\"" +
    "}" +
  "]" +
  "}");

Map<String, String> rspHeaders = new HashMap<String, String>();
rspHeaders.put("Date", "Mon, 01 Mar 2022 23:46:49 GMT");
rspHeaders.put("Vary", "Accept-Encoding");
rspHeaders.put("Pragma", "no-cache");
rspHeaders.put("Expires", "-1");
rspHeaders.put("Content-Type", "application/json; charset=utf-8");
rspHeaders.put("Cache-Control","no-cache");

Object rspBody = APIHelper.deserialize("{" +
    "\"Error\": \"InvalidArgumentException\"," +
    "\"Message\": \"Missing field field_a\"" +
  "}");


EventRequestModel eventReq = new EventRequestBuilder()
        .time(new Date())
        .uri("https://api.acmeinc.com/items/reviews/")
        .verb("PATCH")
        .apiVersion("1.1.0")
        .ipAddress("61.48.220.123")
        .headers(reqHeaders)
        .body(reqBody)
        .build();


EventResponseModel eventRsp = new EventResponseBuilder()
        .time(new Date(System.currentTimeMillis() + 1000))
        .status(500)
        .headers(rspHeaders)
        .body(rspBody)
        .build();

EventModel eventModel = new EventBuilder()
        .request(eventReq)
        .response(eventRsp)
        .userId("12345")
        .companyId("67890")
        .sessionToken("XXXXXXXXX")
        .build();

List<EventModel> events = new ArrayList<EventModel>();
events.add(eventModel);
events.add(eventModel);
events.add(eventModel);
events.add(eventModel);

// Asynchronous Call to create new event
MoesifAPIClient client = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID");
APIController api = getClient().getAPI();

APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
      // Do something
    }

    public void onFailure(HttpContext context, Throwable error) {
      // Do something else
    }
};

api.createEventsBatchAsync(events, callBack);

// Synchronous Call to create new event
api.createEventsBatch(events, callBack);
```

```javascript--nodejs
// Import the module:
var moesifapi = require('moesifapi');

// Set your application id
var config = moesifapi.configuration;
config.ApplicationId = 'YOUR_COLLECTOR_APPLICATION_ID';

// Create API Event Models and set fields
var reqHeaders = JSON.parse('{' +
        '"Host": "api.acmeinc.com",' +
        '"Accept": "*/*",' +
        '"Connection": "Keep-Alive",' +
        '"User-Agent": "Apache-HttpClient",' +
        '"Content-Type": "application/json",' +
        '"Content-Length": "126",' +
        '"Accept-Encoding": "gzip"' +
    '}');

var reqBody = JSON.parse( '{' +
        '"items": [' +
            '{' +
                '"type": 1,' +
                '"id": "hello"' +
            '},' +
            '{' +
                '"type": 2,' +
                '"id": "world"' +
            '}' +
        ']' +
    '}');

var rspHeaders = JSON.parse('{' +
        '"Vary": "Accept-Encoding",' +
        '"Pragma": "no-cache",' +
        '"Expires": "-1",' +
        '"Content-Type": "application/json; charset=utf-8",' +
        '"Cache-Control": "no-cache"' +
    '}');

var rspBody = JSON.parse('{' +
        '"Error": "InvalidArgumentException",' +
        '"Message": "Missing field field_a"' +
    '}');

var reqDate = new Date();
var eventReq = {
    time: reqDate,
    uri: "https://api.acmeinc.com/items/reviews/",
    verb: "PATCH",
    apiVersion: "1.1.0",
    ipAddress: "61.48.220.123",
    headers: reqHeaders,
    body: reqBody
};

var eventRsp = {
    time: (new Date()).setMilliseconds(reqDate.getMilliseconds() + 500),
    status: 500,
    headers: rspHeaders,
    body: rspBody
};

var eventA = {
    request: eventReq,
    response: eventRsp,
    userId: "12345",
    companyId: "67890",
    sessionToken: "XXXXXXXXX"
};

var myEventModels = [ eventA ]

//Access various controllers by:
var controller = moesifapi.ApiController;

// Send the actual events
controller.createEventsBatch(myEventModels, function(error, response, context) {
  //  Handle Errors
});

```

```python
from __future__ import print_function
from moesifapi.moesif_api_client import *
from moesifapi.models import *
from datetime import *

# Setup API Client
client = MoesifAPIClient(YOUR_COLLECTOR_APPLICATION_ID)
api = client.api_controller


# Create API Event Models and set fields
req_headers = APIHelper.json_deserialize("""  {
  "Host": "api.acmeinc.com",
  "Accept": "*/*",
  "Connection": "Keep-Alive",
  "User-Agent": "Apache-HttpClient",
  "Content-Type": "application/json",
  "Content-Length": "126",
  "Accept-Encoding": "gzip"
} """)

req_body = APIHelper.json_deserialize( """{
  "items": [
    {
      "type": 1,
      "id": "hello"
    },
    {
      "type": 2,
      "id": "world"
    }
  ]
}""")

rsp_headers = APIHelper.json_deserialize("""  {
    "Date": "Mon, 01 Mar 2022 23:46:49 GMT",
    "Vary": "Accept-Encoding",
    "Pragma": "no-cache",
    "Expires": "-1",
    "Content-Type": "application/json; charset=utf-8"
    "Cache-Control": "no-cache"
  } """)

rsp_body = APIHelper.json_deserialize( """{
    "Error": "InvalidArgumentException",
    "Message": "Missing field field_a"
  }""")


event_req = EventRequestModel(time = datetime.utcnow() - timedelta(seconds=-1),
    uri = "https://api.acmeinc.com/items/reviews/",
    verb = "PATCH",
    api_version = "1.1.0",
    ip_address = "61.48.220.123",
    headers = req_headers,
    body = req_body)

event_rsp = EventResponseModel(time = datetime.utcnow(),
    status = 500,
    headers = rsp_headers,
    body = rsp_body)

event_a = EventModel(request = event_req,
    response = event_rsp,
    user_id = "12345",
    company_id = "67890",
    session_token = "XXXXXXXXX")

my_events = [ event_a ]

# Send the actual events
api.create_events_batch(my_events)

```

```ruby
require 'moesif_api'

# Setup API Client
client = MoesifApi::MoesifAPIClient.new(YOUR_COLLECTOR_APPLICATION_ID)
api = client.api_controller

# Create API Event Models and set fields
event_a = EventModel.new()
event_a.user_id = "12345"
event_a.company_id = "67890"
my_event_models = [ event_a ]

# Send the actual events
api.create_events_batch(my_event_models)

```

```csharp
using Moesif.Api;
using Moesif.Api.Helpers;

// Create client instance using your ApplicationId
var client = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID");
var apiClient = GetClient().Api;

// Parameters for the API call
var reqHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Host"": ""api.acmeinc.com"",
        ""Accept"": ""*/*"",
        ""Connection"": ""Keep-Alive"",
        ""User-Agent"": ""Apache-HttpClient"",
        ""Content-Type"": ""application/json"",
        ""Content-Length"": ""126"",
        ""Accept-Encoding"": ""gzip""
    }");

var reqBody = APIHelper.JsonDeserialize<object>(@" {
        ""items"": [
            {
                ""type"": 1,
                ""id"": ""hello""
            },
            {
                ""type"": 2,
                ""id"": ""world""
            }
        ]
    }");

var rspHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Date"": ""Mon, 01 Mar 2022 23:46:49 GMT"",
        ""Vary"": ""Accept-Encoding"",
        ""Pragma"": ""no-cache"",
        ""Expires"": ""-1"",
        ""Content-Type"": ""application/json; charset=utf-8"",
        ""Cache-Control"": ""no-cache""
    } ");

var rspBody = APIHelper.JsonDeserialize<object>(@" {
        ""Error"": ""InvalidArgumentException"",
        ""Message"": ""Missing field field_a""
    }");

var reqDate = new Date();
var eventReq = new EventRequestModel()
{
    Time = DateTime.Parse("2022-03-01T04:45:42.914"),
    Uri = "https://api.acmeinc.com/items/reviews/",
    Verb = "PATCH",
    ApiVersion = "1.1.0",
    IpAddress = "61.48.220.123",
    Headers = reqHeaders,
    Body = reqBody
};

var eventRsp = new EventResponseModel()
{
    Time = DateTime.Parse("2022-03-01T04:45:42.914"),
    Status = 500,
    Headers = rspHeaders,
    Body = rspBody
};

var eventModel = new EventModel()
{
    Request = eventReq,
    Response = eventRsp,
    UserId = "12345",
    CompanyId = "67890",
    SessionToken = "XXXXXXXXX"
};

// Create a List
var events = new List<EventModel>();
events.Add(eventModel);
events.Add(eventModel);
events.Add(eventModel);

//////////////////////////////////////
// Example for making an async call //  
//////////////////////////////////////
try
{
    await controller.CreateEventsBatchAsync(events);
}
catch(APIException)
{
    // Handle Error
};

///////////////////////////////////////////
// Example for making a synchronous call //
///////////////////////////////////////////
try
{
    controller.CreateEventsBatch(events);
}
catch(APIException)
{
    // Handle Error
};

```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"
import "time"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

reqTime := time.Now().UTC()
apiVersion := "1.0"
ipAddress := "61.48.220.123"

req := models.EventRequestModel{
  Time:       &reqTime,
  Uri:        "https://api.acmeinc.com/widgets",
  Verb:       "GET",
  ApiVersion: &apiVersion,
  IpAddress:  &ipAddress,
  Headers: map[string]interface{}{
    "ReqHeader1": "ReqHeaderValue1",
  },
  Body: nil,
}

rspTime := time.Now().UTC().Add(time.Duration(1) * time.Second)

rsp := models.EventResponseModel{
  Time:      &rspTime,
  Status:    500,
  IpAddress: nil,
  Headers: map[string]interface{}{
    "RspHeader1": "RspHeaderValue1",
  },
  Body: map[string]interface{}{
    "Key1": "Value1",
    "Key2": 12,
    "Key3": map[string]interface{}{
      "Key3_1": "SomeValue",
    },
  },
}

sessionToken := "XXXXXXXXX"
userId := "12345"
companyId := "6789"

event := models.EventModel{
  Request:      req,
  Response:     rsp,
  SessionToken: &sessionToken,
  Tags:         nil,
  UserId:       &userId,
  CompanyId:    &companyId,
}

events := make([]*models.EventModel, 20)
for i := 0; i < 20; i++ {
  events[i] = &event
}

// Queue the events
err := apiClient.QueueEvents(events)

// Create the events batch synchronously
err := apiClient.CreateEventsBatch(event)

```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.

require_once "vendor/autoload.php";

// Import the SDK client in your project:

use MoesifApi\MoesifApiClient;

// Instantiate the client. After this, you can now access the Moesif API
// and call the respective methods:

$client = new MoesifApiClient("Your application Id");
$api = $client->getApi();
```

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
request |object | __true__ | The object that specifies the API request.
<p style="margin-left:1.5em">time</p> |string(date-time) | __true__ | Timestamp for the request in ISO 8601 format.
<p style="margin-left:1.5em">uri</p> | string| __true__ | Full uri such as _https://api.acmeinc.com/?query=string_ including protocol, host, and query string.
<p style="margin-left:1.5em">verb</p> | string| __true__ | HTTP method used such as `GET` or `POST`.
<p style="margin-left:1.5em">api_version</p> | string| false | API Version you want to tag this request with such as _1.0.0_.
<p style="margin-left:1.5em">ip_address</p> | string| false | IP address of the requester, If not set, we extract the remote IP address.
<p style="margin-left:1.5em">headers</p> |object | __true__ | Headers of the  request as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2).
<p style="margin-left:1.5em">body</p> |object | false | Payload of the request in either JSON or a base64 encoded string.
<p style="margin-left:1.5em">transfer_encoding</p> | string | false | Specifies the transfer encoding of _request.body_ field. If set to _json_ then the response.body must be a JSON object. If set to _base64_, then _request.body_ must be a base64 encoded string. Helpful for binary payloads. If not set, the body is assumed to be _json_.
||
response |object | false | The object that specifies the API response. The response object can be undefined such as a request timeouts.
<p style="margin-left:1.5em">time</p> |string(date-time) | __true__ | Timestamp for the response in ISO 8601 format.
<p style="margin-left:1.5em">status</p> | integer | __true__ | HTTP status code as number such as _200_ or _500_.
<p style="margin-left:1.5em">ip_address</p> | string | false | IP address of the responding server.
<p style="margin-left:1.5em">headers</p> |object | __true__ | Headers of the response as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2)
<p style="margin-left:1.5em">body</p> |object | false | Payload of the response in either JSON or a base64 encoded string.
<p style="margin-left:1.5em">transfer_encoding</p> | string | false | Specifies the transfer encoding of _response.body_ field. If set to _json_ then the response.body must be a JSON object. If set to _base64_, then _response.body_ must be a base64 encoded string. Helpful for binary payloads. If not set, the body is assumed to be _json_.
||
session_token | string | false | Set the API key/session token used for this API call. Moesif will auto-detect API sessions if not set.
user_id | string | false | Associate this API call to a [user](#users).
company_id | string | false | Associate this API call to a [company](#companies) (Helpful for B2B companies).
direction | string | false | The direction of this API call which can be _Incoming_ or _Outgoing_.
metadata | object | false | An object containing any custom event metadata you want to store with this event.

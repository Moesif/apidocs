## Events

### Create an Event

**`POST https://api.moesif.net/v1/events`**

Log a single API event to Moesif.
The request body itself is a single API Call object consisting of both the HTTP request and HTTP response.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/events</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  {
    "request": {
      "time": "2019-06-20T04:45:42.914",
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
            "item_id": "fwdsfrf",
            "liked": false
          },
          {
            "direction_type": 2,
            "item_id": "d43d3f",
            "liked": true
          }
        ]
      },
      "transfer_encoding": ""
    },
    "response": {
      "time": "2019-06-20T04:45:42.914",
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
    "user_id": "mndug437f43",
    "session_token": "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f",
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
curl -X GET https://api.moesif.net/v1/events \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```java
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
APIController api = getClient().getAPI();

// Generate the event
Map<String, String> reqHeaders = new HashMap<String, String>();
reqHeaders.put("Host", "api.acmeinc.com");
reqHeaders.put("Accept", "*/*");
reqHeaders.put("Connection", "Keep-Alive");
reqHeaders.put("User-Agent", "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)");
reqHeaders.put("Content-Type", "application/json");
reqHeaders.put("Content-Length", "126");
reqHeaders.put("Accept-Encoding", "gzip");

Object reqBody = APIHelper.deserialize("{" +
  "\"items\": [" +
    "{" +
      "\"type\": 1," +
      "\"id\": \"fwfrf\"" +,
    "}," +
    "{" +
      "\"type\": 2," +
       "\"id\": \"d43d3f\"" +
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
        .userId("my_user_id")
        .sessionToken("23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f")
        .build();

// Asynchronous Call to Create Event
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
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
config.ApplicationId = "my_application_id";

// 3. Generate an API Event Model
var reqHeaders = JSON.parse('{' +
        '"Host": "api.acmeinc.com",' +
        '"Accept": "*/*",' +
        '"Connection": "Keep-Alive",' +
        '"User-Agent": "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)",' +
        '"Content-Type": "application/json",' +
        '"Content-Length": "126",' +
        '"Accept-Encoding": "gzip"' +
    '}');

var reqBody = JSON.parse( '{' +
        '"items": [' +
            '{' +
                '"type": 1,' +
                '"id": "fwfrf"' +
            '},' +
            '{' +
                '"type": 2,' +
                '"id": "d43d3f"' +
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
    userId: "my_user_id",
    sessionToken: "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f"
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

client = MoesifAPIClient(my_application_id)
api = client.api

# Note: we recommend sending all API Calls via MVC framework middleware.

req_headers = APIHelper.json_deserialize("""  {
  "Host": "api.acmeinc.com",
  "Accept": "*/*",
  "Connection": "Keep-Alive",
  "User-Agent": "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)",
  "Content-Type": "application/json",
  "Content-Length": "126",
  "Accept-Encoding": "gzip"
} """)

req_body = APIHelper.json_deserialize( """{
  "items": [
    {
      "type": 1,
      "id": "fwfrf"
    },
    {
      "type": 2,
      "id": "d43d3f"
    }
  ]
}""")

rsp_headers = APIHelper.json_deserialize("""  {
    "Date": "Tue, 20 Jan 2019 23:46:49 GMT",
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
    user_id = "my_user_id",
    session_token = "my_application_id")


# Perform the API call through the SDK function
api.create_event(event_model)
```

```ruby
require 'moesif_api'

client = MoesifApi::MoesifAPIClient.new(my_application_id)
api = client.api_controller

req_headers = JSON.parse('{'\
  '"Host": "api.acmeinc.com",'\
  '"Accept": "*/*",'\
  '"Connection": "Keep-Alive",'\
  '"User-Agent": "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)",'\
  '"Content-Type": "application/json",'\
  '"Content-Length": "126",'\
  '"Accept-Encoding": "gzip"'\
'}')

req_body = JSON.parse( '{'\
  '"items": ['\
    '{'\
      '"type": 1,'\
      '"id": "fwfrf"'\
    '},'\
    '{'\
      '"type": 2,'\
      '"id": "d43d3f"'\
    '}'\
  ']'\
'}')

rsp_headers = JSON.parse('{'\
  '"Date": "Tue, 20 Jan 2019 23:46:49 GMT",'\
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
event_req.time = "2019-06-20T04:45:42.914"
event_req.uri = "https://api.acmeinc.com/items/reviews/"
event_req.verb = "PATCH"
event_req.api_version = "1.1.0"
event_req.ip_address = "61.48.220.123"
event_req.headers = req_headers
event_req.body = req_body

event_rsp = EventResponseModel.new()
event_rsp.time = "2019-06-20T04:45:42.914"
event_rsp.status = 500
event_rsp.headers = rsp_headers
event_rsp.body = rsp_body

event_model = EventModel.new()
event_model.request = event_req
event_model.response = event_rsp
event_model.user_id ="my_user_id"
event_model.session_token = "my_application_id"

# Perform the API call through the SDK function
response = api.create_event(event_model)

```

```csharp
using Moesif.Api;
using Moesif.Api.Helpers;

// Create client instance using your ApplicationId
var client = new MoesifApiClient("my_application_id");
var apiClient = GetClient().Api;

// Parameters for the API call
var reqHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Host"": ""api.acmeinc.com"",
        ""Accept"": ""*/*"",
        ""Connection"": ""Keep-Alive"",
        ""User-Agent"": ""Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)"",
        ""Content-Type"": ""application/json"",
        ""Content-Length"": ""126"",
        ""Accept-Encoding"": ""gzip""
    }");

var reqBody = APIHelper.JsonDeserialize<object>(@" {
        ""items"": [
            {
                ""type"": 1,
                ""id"": ""fwfrf""
            },
            {
                ""type"": 2,
                ""id"": ""d43d3f""
            }
        ]
    }");

var rspHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Date"": ""Tue, 20 Jan 2019 23:46:49 GMT"",
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
    Time = DateTime.Parse("2019-06-20T04:45:42.914"),
    Uri = "https://api.acmeinc.com/items/reviews/",
    Verb = "PATCH",
    ApiVersion = "1.1.0",
    IpAddress = "61.48.220.123",
    Headers = reqHeaders,
    Body = reqBody
};

var eventRsp = new EventResponseModel()
{
    Time = DateTime.Parse("2019-06-20T04:45:42.914"),
    Status = 500,
    Headers = rspHeaders,
    Body = rspBody
};

var eventModel = new EventModel()
{
    Request = eventReq,
    Response = eventRsp,
    UserId = "my_user_id",
    SessionToken = "my_application_id"
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

apiClient := moesifapi.NewAPI("your_moesif_application_id")

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

sessionToken := "end user's API or Session Token"
userId := "end user_id"

event := models.EventModel{
  Request:      req,
  Response:     rsp,
  SessionToken: &sessionToken,
  Tags:         nil,
  UserId:       &userId,
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

$client = new MoesifApiClient("Your application Id");
$api = $client->getApi();

$event = new Models\EventModel()
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
         "User-Agent" => "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)", 
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
             "Date" => "Tue, 23 Aug 2019 23:46:49 GMT", 
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
             ), 
             "user_id" => "mndug437f43", 
             "session_token" => "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ngs98y18cx98q3yhwmnhcfx43f"
        );
$event->metadata = array(
          "foo" => "bar" 
        );

$event->user_id = "12345";
$event->company_id = "67890";
$event->session_token = "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ngs98y18cx98q3yhwmnhcfx43f";

$api->createEvent($event);
```

Name | Required | Description
--------- | -------- | -----------
request | __true__ | The object that specifies the request message
<p style="margin-left:1.5em">request.time</p> | __true__ | Timestamp for the request in ISO 8601 format
<p style="margin-left:1.5em">request.uri</p> | __true__ | Full uri such as _https://api.com/?query=string_ including host, query string, etc
<p style="margin-left:1.5em">request.verb</p> | __true__ | HTTP method used, i.e. `GET`, `POST`
<p style="margin-left:1.5em">request.api_version</p> | false | API Version you want to tag this request with such as _1.0.0_
<p style="margin-left:1.5em">request.ip_address</p> | false | IP address of the requester, If not set, we use the IP address of your logging API calls.
<p style="margin-left:1.5em">request.headers</p> | __true__ | Headers of the  request as a `Map<string, string>`.. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2)
<p style="margin-left:1.5em">request.body</p> | false | Body of the request in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">request.transfer_encoding</p> | false | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
response | false | The object that specifies the response message, not set implies no response received such as a timeout.
<p style="margin-left:1.5em">response.time</p> | __true__ | Timestamp for the response in ISO 8601 format
<p style="margin-left:1.5em">response.status</p> | __true__ | HTTP status code as number such as _200_ or _500_
<p style="margin-left:1.5em">response.ip_address</p> | false | IP address of the responding server
<p style="margin-left:1.5em">response.headers</p> | __true__ | Headers of the response as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2)
<p style="margin-left:1.5em">response.body</p> | false | Body of the response in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">response.transfer_encoding</p> | false | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
session_token | _Recommend_ | The end user session token such as a JWT or API key, which may or may not be temporary. Moesif will auto-detect the session token automatically if not set.
user_id | _Recommend_ | Identifies this API call to a permanent user_id
metadata | false | A JSON Object consisting of any custom metadata to be stored with this event.


### Create an Events Batch

**`POST https://api.moesif.net/v1/events/batch`**

Creates and logs a batch of API Calls to Moesif.
The request body itself is an array API Calls object consisting of both the HTTP request and HTTP response.

This API takes a list form of the same model defined in create single event.

The maximum batch size is **12MB**. Break up larger batches.

API Calls from multiple end users can be added in a single batch. Each Event in the list has independent `session_token` and `user_id` fields.


<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/events/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  [
    {
        "request": {
          "time": "2019-06-20T04:45:42.914",
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
          },
          "transfer_encoding": "",
        },
        "response": {
          "time": "2019-06-20T04:45:42.914",
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
          "transfer_encoding": "",
        },
        "user_id": "mndug437f43",
        "session_token": "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f",
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
curl -X GET https://api.moesif.net/v1/events/batch \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```java
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
APIController api = getClient().getAPI();

// Generate the events
Map<String, String> reqHeaders = new HashMap<String, String>();
reqHeaders.put("Host", "api.acmeinc.com");
reqHeaders.put("Accept", "*/*");
reqHeaders.put("Connection", "Keep-Alive");
reqHeaders.put("User-Agent", "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)");
reqHeaders.put("Content-Type", "application/json");
reqHeaders.put("Content-Length", "126");
reqHeaders.put("Accept-Encoding", "gzip");

Object reqBody = APIHelper.deserialize("{" +
  "\"items\": [" +
    "{" +
      "\"type\": 1," +
      "\"id\": \"fwfrf\"" +
    "}," +
    "{" +
      "\"type\": 2," +
      "\"id\": \"d43d3f\"" +
    "}" +
  "]" +
  "}");

Map<String, String> rspHeaders = new HashMap<String, String>();
rspHeaders.put("Date", "Tue, 20 Jan 2019 23:46:49 GMT");
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
        .userId("my_user_id")
        .sessionToken("23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f")
        .build();

List<EventModel> events = new ArrayList<EventModel>();
events.add(eventModel);
events.add(eventModel);
events.add(eventModel);
events.add(eventModel);

// Asynchronous Call to create new event
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
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
config.ApplicationId = 'my_application_id';

// Create API Event Models and set fields
var reqHeaders = JSON.parse('{' +
        '"Host": "api.acmeinc.com",' +
        '"Accept": "*/*",' +
        '"Connection": "Keep-Alive",' +
        '"User-Agent": "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)",' +
        '"Content-Type": "application/json",' +
        '"Content-Length": "126",' +
        '"Accept-Encoding": "gzip"' +
    '}');

var reqBody = JSON.parse( '{' +
        '"items": [' +
            '{' +
                '"type": 1,' +
                '"id": "fwfrf"' +
            '},' +
            '{' +
                '"type": 2,' +
                '"id": "d43d3f"' +
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
    userId: "my_user_id",
    sessionToken: "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f"
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
client = MoesifAPIClient(my_application_id)
api = client.api_controller


# Create API Event Models and set fields
req_headers = APIHelper.json_deserialize("""  {
  "Host": "api.acmeinc.com",
  "Accept": "*/*",
  "Connection": "Keep-Alive",
  "User-Agent": "Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)",
  "Content-Type": "application/json",
  "Content-Length": "126",
  "Accept-Encoding": "gzip"
} """)

req_body = APIHelper.json_deserialize( """{
  "items": [
    {
      "type": 1,
      "id": "fwfrf"
    },
    {
      "type": 2,
      "id": "d43d3f"
    }
  ]
}""")

rsp_headers = APIHelper.json_deserialize("""  {
    "Date": "Tue, 20 Jan 2019 23:46:49 GMT",
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
    user_id = "my_user_id",
    session_token = "my_application_id")

my_events = [ event_a ]

# Send the actual events
api.create_events_batch(my_events)

```

```ruby
require 'moesif_api'

# Setup API Client
client = MoesifApi::MoesifAPIClient.new(my_application_id)
api = client.api_controller

# Create API Event Models and set fields
event_a = EventModel.new()
event_a.user_id = "my user id" #  ...
my_event_models = [ event_a ]

# Send the actual events
api.create_events_batch(my_event_models)

```

```csharp
using Moesif.Api;
using Moesif.Api.Helpers;

// Create client instance using your ApplicationId
var client = new MoesifApiClient("my_application_id");
var apiClient = GetClient().Api;

// Parameters for the API call
var reqHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Host"": ""api.acmeinc.com"",
        ""Accept"": ""*/*"",
        ""Connection"": ""Keep-Alive"",
        ""User-Agent"": ""Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)"",
        ""Content-Type"": ""application/json"",
        ""Content-Length"": ""126"",
        ""Accept-Encoding"": ""gzip""
    }");

var reqBody = APIHelper.JsonDeserialize<object>(@" {
        ""items"": [
            {
                ""type"": 1,
                ""id"": ""fwfrf""
            },
            {
                ""type"": 2,
                ""id"": ""d43d3f""
            }
        ]
    }");

var rspHeaders = APIHelper.JsonDeserialize<object>(@" {
        ""Date"": ""Tue, 20 Jan 2019 23:46:49 GMT"",
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
    Time = DateTime.Parse("2019-06-20T04:45:42.914"),
    Uri = "https://api.acmeinc.com/items/reviews/",
    Verb = "PATCH",
    ApiVersion = "1.1.0",
    IpAddress = "61.48.220.123",
    Headers = reqHeaders,
    Body = reqBody
};

var eventRsp = new EventResponseModel()
{
    Time = DateTime.Parse("2019-06-20T04:45:42.914"),
    Status = 500,
    Headers = rspHeaders,
    Body = rspBody
};

var eventModel = new EventModel()
{
    Request = eventReq,
    Response = eventRsp,
    UserId = "my_user_id",
    SessionToken = "my_application_id"
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

apiClient := moesifapi.NewAPI("my_application_id")

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

sessionToken := "end user API or session token"
userId := "end user_id"

event := models.EventModel{
  Request:      req,
  Response:     rsp,
  SessionToken: &sessionToken,
  Tags:         nil,
  UserId:       &userId,
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

Name | Required | Description
--------- | -------- | -----------
request | __true__ | The object that specifies the request message
<p style="margin-left:1.5em">request.time</p> | __true__ | Timestamp for the request in ISO 8601 format
<p style="margin-left:1.5em">request.uri</p> | __true__ | Full uri such as _https://api.com/?query=string_ including host, query string, etc
<p style="margin-left:1.5em">request.verb</p> | __true__ | HTTP method used, i.e. `GET`, `POST`
<p style="margin-left:1.5em">request.api_version</p> | false | API Version you want to tag this request with such as _1.0.0_
<p style="margin-left:1.5em">request.ip_address</p> | false | IP address of the requester, If not set, we use the IP address of your logging API calls.
<p style="margin-left:1.5em">request.headers</p> | __true__ | Headers of the  request as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2)
<p style="margin-left:1.5em">request.body</p> | false | Body of the request in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">request.transfer_encoding</p> | false | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
response | false | The object that specifies the response message, not set implies no response received such as a timeout.
<p style="margin-left:1.5em">response.time</p> | __true__ | Timestamp for the response in ISO 8601 format
<p style="margin-left:1.5em">response.status</p> | __true__ | HTTP status code as number such as _200_ or _500_
<p style="margin-left:1.5em">response.ip_address</p> | false | IP address of the responding server
<p style="margin-left:1.5em">response.headers</p> | __true__ | Headers of the response as a `Map<string, string>`. Multiple headers with the same key name should be combined together such that the values are joined by a comma. [HTTP Header Protocol on w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2)
<p style="margin-left:1.5em">response.body</p> | false | Body of the response in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">response.transfer_encoding</p> | false | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
session_token | _Recommend_ | The end user session token such as a JWT or API key, which may or may not be temporary. Moesif will auto-detect the session token automatically if not set.
user_id | _Recommend_ | Identifies this API call to a permanent user_id
metadata | false | A JSON Object consisting of any custom metadata to be stored with this event.

# Event Log API

## Create an Event

**`POST https://api.moesif.net/v1/events`**

Log a single API event to Moesif.
The request body itself is a single API Call object consisting of both the HTTP request and HTTP response.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
Example Request Body:
</blockquote>


```yaml
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
    },
    "transfer_encoding": ""
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
    },
    "transfer_encoding": ""
  },
  "user_id": "mndug437f43",
  "session_token": "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f"
}

```

```java
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
ApiController controller = getClient().getApi();


// Create API Event Model and set fields
EventModel myEventModel = new EventModel();
myEventModel.setTags("user"); // ...

// Synchronous Call to Create Event
controller.createEvent(myEventModel);


// Asynchronous Call to Create Event
APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
        // Event Added Successfully
    }

    public void onFailure(HttpContext context, Throwable error) {
        // Throw exception or print error
    }
};

controller.createEventAsync(myEventModel, callBack);
```

```javascript
///////////////////////////
// 1. Import the module: //
///////////////////////////
    var moesifapi = require('moesifapi');


////////////////////////////////
// 2. Configure ApplicationId //
////////////////////////////////
    var config = moesifapi.configuration;
    config.ApplicationId = my_application_id;


///////////////////////////////
// 3. Create API Event Model //
///////////////////////////////
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
            '"Date": "Tue, 23 Aug 2016 23:46:49 GMT",' +
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

    var eventReq = {
        time: "2016-09-09T04:45:42.914",
        uri: "https://api.acmeinc.com/items/reviews/",
        verb: "PATCH",
        apiVersion: "1.1.0",
        ipAddress: "61.48.220.123",
        headers: reqHeaders,
        body: reqBody
    };

    var eventRsp = {
        time: "2016-09-09T04:45:42.914",
        status: 500,
        headers: rspHeaders,
        body: rspBody
    };

    var eventModel = {
        request: eventReq,
        response: eventRsp,
        userId: "my_user_id",
        sessionToken: "my_application_id"
    };


//////////////////////////
// 4. Create new event: //
//////////////////////////
    var controller = moesifapi.ApiController;

    // Create a single event
    controller.createEvent(new EventModel(eventModel), callback);

    // Create batched set of events
    controller.createEventsBatch(someEventModelList, callback);

```

```python
from __future__ import print_function
from moesifapi.moesif_api_client import *
from moesifapi.models import *

client = MoesifAPIClient(my_application_id)
api_client = client.api

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
    "Date": "Tue, 23 Aug 2016 23:46:49 GMT",
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


event_req = EventRequestModel(time = "2016-09-09T04:45:42.914",
    uri = "https://api.acmeinc.com/items/reviews/",
    verb = "PATCH",
    api_version = "1.1.0",
    ip_address = "61.48.220.123",
    headers = req_headers,
    body = req_body)

event_rsp = EventResponseModel(time = "2016-09-09T04:45:42.914",
    status = 500,
    headers = rsp_headers,
    body = rsp_body)

event_model = EventModel(request = event_req,
    response = event_rsp,
    user_id = "my_user_id",
    session_token = "my_application_id")


# Perform the API call through the SDK function
api_client.create_event(event_model)


controller.create_event(my_api_event_model)
```

```ruby
require 'moesif_api'

api_client = MoesifApi::MoesifAPIClient.new(my_application_id)
api_controller = api_client.api_controller

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
  '"Date": "Tue, 23 Aug 2016 23:46:49 GMT",'\
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
event_req.time = "2016-09-09T04:45:42.914"
event_req.uri = "https://api.acmeinc.com/items/reviews/"
event_req.verb = "PATCH"
event_req.api_version = "1.1.0"
event_req.ip_address = "61.48.220.123"
event_req.headers = req_headers
event_req.body = req_body

event_rsp = EventResponseModel.new()
event_rsp.time = "2016-09-09T04:45:42.914"
event_rsp.status = 500
event_rsp.headers = rsp_headers
event_rsp.body = rsp_body

event_model = EventModel.new()
event_model.request = event_req
event_model.response = event_rsp
event_model.user_id ="my_user_id"
event_model.session_token = "my_application_id"

# Perform the API call through the SDK function
response = api_controller.create_event(event_model)

```

```csharp
using Moesif.Api;
using Moesif.Api.Helpers;

// Create client instance using your ApplicationId
var client = new MoesifAPIClient("my_application_id");
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
        ""Date"": ""Tue, 23 Aug 2016 23:46:49 GMT"",
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
    Time = DateTime.Parse("2016-09-09T04:45:42.914"),
    Uri = "https://api.acmeinc.com/items/reviews/",
    Verb = "PATCH",
    ApiVersion = "1.1.0",
    IpAddress = "61.48.220.123",
    Headers = reqHeaders,
    Body = reqBody
};

var eventRsp = new EventResponseModel()
{
    Time = DateTime.Parse("2016-09-09T04:45:42.914"),
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
// 1. Use Composer to install the dependencies. See the section "How To Build".
// 2. See that you have configured your SDK correctly. See the section "How To Configure".
// 3. Depending on your project setup, you might need to include composer's autoloader
   in your PHP code to enable autoloading of classes.

   require_once "vendor/autoload.php";

// 4. Import the SDK client in your project:

    use MoesifApi\MoesifApiClient;

// 5. Instantiate the client. After this, you can now get the controllers and call the
    respective methods:

    $client = new MoesifApiClient();
    $controller = $client->getApi();

```

Fields | Required? | Description
--------- | -------- | -----------
request | __Required__ | The object that specifies the request message
<p style="margin-left:1.5em">request.time</p> | __Required__ | Timestamp for the request in ISO 8601 format
<p style="margin-left:1.5em">request.uri</p> | __Required__ | Full uri such as _https://api.com/?query=string_ including host, query string, etc
<p style="margin-left:1.5em">request.verb</p> | __Required__ | HTTP method used, i.e. `GET`, `POST`
<p style="margin-left:1.5em">request.api_version</p> | Optional | API Version you want to tag this request with such as _1.0.0_
<p style="margin-left:1.5em">request.ip_address</p> | Optional | IP address of the requester, If not set, we use the IP address of your logging API calls.
<p style="margin-left:1.5em">request.headers</p> | Optional | Headers of the  request as a `Map<string, string>`
<p style="margin-left:1.5em">request.body</p> | Optional | Body of the request in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">request.transfer_encoding</p> | Optional | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
response | Optional | The object that specifies the response message, not set implies no response received such as a timeout.
<p style="margin-left:1.5em">response.time</p> | __Required__ | Timestamp for the response in ISO 8601 format
<p style="margin-left:1.5em">response.status</p> | __Required__ | HTTP status code as number such as _200_ or _500_
<p style="margin-left:1.5em">request.ip_address</p> | Optional | IP address of the responding server
<p style="margin-left:1.5em">response.headers</p> | __Required__ | Headers of the response as a `Map<string, string>`
<p style="margin-left:1.5em">response.body</p> | __Required__ | Body of the response in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">response.transfer_encoding</p> | Optional | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
session_token | _Recommend_ | The end user session or API token such as a JWT or API key. Moesif will auto-detect the session token automatically if not set.
tags | _Recommend_ | Comma separated list of tags for this API Call. **See Supported Tags**
user_id | _Recommend_ | Identifies this API call to a permanent user_id


### Supported Tags:
1. `user`
- The `user` tag is a hint to what is considered the “user profile” for the signed in end user.
- Add to a *single* method/endpoint template which you consider has the most user metadata.
- For example, if you have an endpoint that gets the authenticated user via `GET /users/me`, add this header to those API Calls. The verb or url doesn't matter but the response body should have user's data.
- You shouldn't add to more than one method/endpoint combination. i.e. Don't add it to both `GET /users` and `POST /users` unless both return the same JSON schema.

## Create an Events Batch

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
Example Request Body:
</blockquote>
```yaml
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
  			},
        "transfer_encoding": "",
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
  			},
        "transfer_encoding": "",
  		},
  		"user_id": "mndug437f43",
  		"session_token": "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f"
  }
]

```

```java
///////////////////////
// Create the Client //
///////////////////////
    MoesifAPIClient client = new MoesifAPIClient("my_application_id");
    ApiController controller = getClient().getApi();


/////////////////////////////////
// Create the API Event Model: //
/////////////////////////////////

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");

        // Parameters for the API call
        Object reqHeaders = APIHelper.deserialize("{" +
                    "\"Host\": \"api.acmeinc.com\"," +
                    "\"Accept\": \"*/*\"," +
                    "\"Connection\": \"Keep-Alive\"," +
                    "\"User-Agent\": \"Dalvik/2.1.0 (Linux; U; Android 5.0.2; C6906 Build/14.5.A.0.242)\"," +
                    "\"Content-Type\": \"application/json\"," +
                    "\"Content-Length\": \"126\"," +
                    "\"Accept-Encoding\": \"gzip\"" +
                "}");

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

        Object rspHeaders = APIHelper.deserialize("{" +
                    "\"Date\": \"Tue, 23 Aug 2016 23:46:49 GMT\"," +
                    "\"Vary\": \"Accept-Encoding\"," +
                    "\"Pragma\": \"no-cache\"," +
                    "\"Expires\": \"-1\"," +
                    "\"Content-Type\": \"application/json; charset=utf-8\"," +
                    "\"Cache-Control\": \"no-cache\"" +
                "}");

        Object rspBody = APIHelper.deserialize("{" +
                    "\"Error\": \"InvalidArgumentException\"," +
                    "\"Message\": \"Missing field field_a\"" +
                "}");


        EventRequestModel eventReq = new EventRequestModel();

        eventReq.setTime(dateFormat.parse("2016-09-09T04:45:42.914"));
        eventReq.setUri("https://api.acmeinc.com/items/reviews/");
        eventReq.setVerb("PATCH");
        eventReq.setApiVersion("1.1.0");
        eventReq.setIpAddress("61.48.220.123");
        eventReq.setHeaders(reqHeaders);
        eventReq.setBody(reqBody);


        EventResponseModel eventRsp = new EventResponseModel();

        eventRsp.setTime(dateFormat.parse("2016-09-09T04:45:42.914"));
        eventRsp.setStatus(500);
        eventRsp.setHeaders(rspHeaders);
        eventRsp.setBody(rspBody);

        EventModel eventModel = new EventModel();
        eventModel.setRequest(eventReq);
        eventModel.setResponse(eventRsp);
        eventModel.setUserId("my_user_id");
        eventModel.setSessionToken("23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f");


///////////////////////////////////////////
// Synchronous Call to create new event: //
///////////////////////////////////////////

    controller.createEvent(eventModel);

////////////////////////////////////////////
// Asynchronous Call to create new event: //
////////////////////////////////////////////

    APICallBack<Object> callBack = new APICallBack<Object>() {
        public void onSuccess(HttpContext context, Object response) {
            assertEquals("Status is not 201",
                    201, context.getResponse().getStatusCode());
            lock.countDown();
        }

        public void onFailure(HttpContext context, Throwable error) {
            fail();
        }
    };

    controller.createEventAsync(eventModel, callBack);
```

```javascript
// Import the module:
var moesifapi = require('moesifapi');

// Set your application id
var config = moesifapi.configuration;
config.ApplicationId = 'my_application_id';

// Create API Event Models and set fields
var eventA = new EventModel();
eventA.setTags("user"); // ...
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

# Setup API Client
api_client = MoesifAPIClient(my_application_id)
controller = api_client.api_controller


# Create API Event Models and set fields
event_a = EventModel()
event_a.tags = "user" #  ...

my_event_models = [ eventA ]

# Send the actual events
controller.create_events_batch(my_event_models)

```

```ruby
require 'moesif_api'

# Setup API Client
api_client = MoesifApi::MoesifAPIClient.new(my_application_id)
controller = api_client.api_controller

# Create API Event Models and set fields
event_a = EventModel.new()
event_a.tags = "user" # ...
my_event_models = [ eventA ]

# Send the actual events
controller.create_events_batch(my_event_models)

```

```csharp
using Moesif.Api;
using Moesif.Api.Helpers;

// Create client instance using your ApplicationId
var client = new MoesifAPIClient("my_application_id");
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
        ""Date"": ""Tue, 23 Aug 2016 23:46:49 GMT"",
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
    Time = DateTime.Parse("2016-09-09T04:45:42.914"),
    Uri = "https://api.acmeinc.com/items/reviews/",
    Verb = "PATCH",
    ApiVersion = "1.1.0",
    IpAddress = "61.48.220.123",
    Headers = reqHeaders,
    Body = reqBody
};

var eventRsp = new EventResponseModel()
{
    Time = DateTime.Parse("2016-09-09T04:45:42.914"),
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
// 1. Use Composer to install the dependencies. See the section "How To Build".
// 2. See that you have configured your SDK correctly. See the section "How To Configure".
// 3. Depending on your project setup, you might need to include composer's autoloader
   in your PHP code to enable autoloading of classes.

   require_once "vendor/autoload.php";

// 4. Import the SDK client in your project:

    use MoesifApi\MoesifApiClient;

// 5. Instantiate the client. After this, you can now get the controllers and call the
    respective methods:

    $client = new MoesifApiClient();
    $controller = $client->getApi();
```

Fields | Required? | Description
--------- | -------- | -----------
request | __Required__ | The object that specifies the request message
<p style="margin-left:1.5em">request.time</p> | __Required__ | Timestamp for the request in ISO 8601 format
<p style="margin-left:1.5em">request.uri</p> | __Required__ | Full uri such as _https://api.com/?query=string_ including host, query string, etc
<p style="margin-left:1.5em">request.verb</p> | __Required__ | HTTP method used, i.e. `GET`, `POST`
<p style="margin-left:1.5em">request.api_version</p> | Optional | API Version you want to tag this request with such as _1.0.0_
<p style="margin-left:1.5em">request.ip_address</p> | Optional | IP address of the requester, If not set, we use the IP address of your logging API calls.
<p style="margin-left:1.5em">request.headers</p> | Optional | Headers of the  request as a `Map<string, string>`
<p style="margin-left:1.5em">request.body</p> | Optional | Body of the request in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">request.transfer_encoding</p> | Optional | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
response | Optional | The object that specifies the response message, not set implies no response received such as a timeout.
<p style="margin-left:1.5em">response.time</p> | __Required__ | Timestamp for the response in ISO 8601 format
<p style="margin-left:1.5em">response.status</p> | __Required__ | HTTP status code as number such as _200_ or _500_
<p style="margin-left:1.5em">request.ip_address</p> | Optional | IP address of the responding server
<p style="margin-left:1.5em">response.headers</p> | __Required__ | Headers of the response as a `Map<string, string>`
<p style="margin-left:1.5em">response.body</p> | __Required__ | Body of the response in JSON format or Base64 encoded binary data (see _transfer_encoding_)
<p style="margin-left:1.5em">response.transfer_encoding</p> | Optional | A string that specifies the transfer encoding of Body being sent to Moesif. If field nonexistent, body assumed to be JSON or text. Only possible value is _base64_ for sending binary data like protobuf
||
session_token | _Recommend_ | The end user session or API token such as a JWT or API key. Moesif will auto-detect the session token automatically if not set.
tags | _Recommend_ | Comma separated list of tags for this API Call. **See Supported Tags**
user_id | _Recommend_ | Identifies this API call to a permanent user_id


### Supported Tags:
1. `user`
  - The `user` tag is a hint to what is considered the “user profile” for the signed in end user.
  - Add to a *single* method/endpoint template which you consider has the most user metadata.
  - For example, if you have an endpoint that gets the authenticated user via `GET /users/me`, add this header to those API Calls. The verb or url doesn't matter but the response body should have user's data.
  - You shouldn't add to more than one method/endpoint combination. i.e. Don't add it to both `GET /users` and `POST /users` unless both return the same JSON schema.

# Ingest using  SDKs

If you ever used an events-based analytics library with a `sendEvent()` method, you'll feel right at home with our API event ingestion SDKs. Most MVC frameworks and frontends are created with middleware to handle API Calls in a single location, so you probably only need a single `sendEvent()` unlike analytics libs. Our libraries support async operations and queue HTTP calls on background threads.

## Installing the Library

Select your language on the right.

The SDKs are open-source and available on GitHub.


<blockquote class="lang-specific java">
<a href="https://jitpack.io/#Moesif/moesifapi-java">
  <img src="https://jitpack.io/v/Moesif/moesifapi-java.svg">
</a>
<br><br>
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-java">https://github.com/moesif/moesifapi-java</a>
</blockquote>

```java
// Step 1. Add the JitPack repository to your build file
<repositories>
  <repository>
      <id>jitpack.io</id>
      <url>https://jitpack.io</url>
  </repository>
</repositories>


  // Step 2. Add the dependency
  <dependency>
      <groupId>com.moesif</groupId>
      <artifactId>moesifapi-java</artifactId>
      <version>1.0.2</version>
  </dependency>

```
<blockquote class="lang-specific javascript">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-nodejs">https://github.com/moesif/moesifapi-nodejs</a>
</blockquote>

```javascript
// To Install Moesif Lib, run in your terminal

> npm install --save moesifapi
```

<blockquote class="lang-specific python">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-python">https://github.com/moesif/moesifapi-python</a>
</blockquote>

```python
# To Install Moesif Lib, run in your terminal

> pip install moesifapi
```

<blockquote class="lang-specific ruby">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-ruby">https://github.com/moesif/moesifapi-ruby</a>
</blockquote>

```ruby
# To Install Moesif Lib, run in your terminal

> gem install moesif_api
```

<blockquote class="lang-specific csharp">
Source Code:<br><br>
<a href="https://github.com/moesif/moesifapi-csharp">https://github.com/moesif/moesifapi-csharp</a>
</blockquote>

```csharp
# Install the Nuget Package via Package Manager Console:

> Install-Package Moesif.Api
```

### Authentication
Each SDK takes an application_id which authenticates your app with Moesif.
You can find your Application Id under *menu -> App Setup Details*

## Where to collect?
You can collect API Calls either in clients such as iOS/Android or in backend code such as python or java. We don't recommend collecting the same API twice though as you will be charged twice.

Benefits of collecting client side:
- Capture errors as seen by clients which may be end-users.
- Peace of mind that you will know if an edge load balancer is down or if DNS Settings are broken, you will see it.
- If you call many separate API from the client directly, then client has them all in same spot.

Benefits of collecting server side:
- You have a public API and don't have control over clients
- May be easier integration for all clients (i.e. don't need to integrate both Swift & Java for iOS & Android respectively).
- No need to push changes to app stores.
- No impact on end-users data usage/battery usage if that is a concern.

## Add Single Event API

Adds Single API Call to Moesif where the request model itself is a single API Call object with fields such as request and response.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

```java
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
ApiController controller = getClient().getApi();


// Create API Event Model and set fields
EventModel myEventModel = new EventModel();
myEventModel.setTags("user"); // ...

// Synchronous Call to add Event
controller.createEvent(myEventModel);


// Asynchronous Call to add Event
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

// Perform API call through the SDK function

try
{
    await controller.CreateEventAsync(eventModel);
}
catch(APIException)
{
    // Handle Error
};

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

Adds a batch of API Call to Moesif where the request model is a list of API Call objects with fields such as request and response.

This API takes a list form of the same model defined in add single event.

The maximum batch size is **250kb**. Break up larger batches.

API Calls from different end-users can be added in a single batch. Each API Call Event in the list has independent `session_token` and `user_id` fields.


<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>


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

Fields | Required | Description
--------- | -------- | -----------
request.time | Required | Timestamp for the request in ISO 8601 format
request.uri | Required | Full uri such as <https://api.com/?query=string> including host, query string, etc
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

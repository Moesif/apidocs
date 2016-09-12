# Ingest using  SDKs

If you ever used an events-based analytics library with a `sendEvent()` method, you'll feel right at home with our API event ingestion SDKs. Most MVC frameworks and frontends are created with middleware to handle API Calls in a single location, so you probably only need a single `sendEvent()` unlike analytics libs. Our libraries support async operations and queue HTTP calls on background threads.

## Installing the Library

Select your language on the right.

The SDKs are open-source and available on GitHub.


<blockquote class="lang-specific java">
<a href="https://jitpack.io/#Moesif/Moesif-API-Java">
  <img src="https://jitpack.io/v/Moesif/Moesif-API-Java.svg">
</a>
<br><br>
Source Code:<br><br>
<a href="https://github.com/Moesif/Moesif-API-Java">https://github.com/Moesif/Moesif-API-Java</a>
</blockquote>

```java
// Step 1. Add the JitPack repository to your build file

<repositories>
    <repository>
        <id>jitpack.io</id>
        <url>https://jitpack.io</url>
    </repository>
</repositories>

// Step 2. Add the dependency for latest version

<dependency>
    <groupId>com.github.Moesif</groupId>
    <artifactId>Moesif-API-Java</artifactId>
    <version>X.X.X</version>
</dependency>

```
<blockquote class="lang-specific javascript">
Source Code:<br><br>
<a href="https://github.com/Moesif/Moesif-API-NodeJS">https://github.com/Moesif/Moesif-API-NodeJS</a>
</blockquote>

```javascript
// To Install Moesif Lib, run in your terminal

> npm install --save moesifapi
```

<blockquote class="lang-specific python">
Source Code:<br><br>
<a href="https://github.com/Moesif/Moesif-API-Python">https://github.com/Moesif/Moesif-API-Python</a>
</blockquote>

```python
# To Install Moesif Lib, run in your terminal

> pip install moesifapi
```

<blockquote class="lang-specific ruby">
Source Code:<br><br>
<a href="https://github.com/Moesif/Moesif-API-Ruby">https://github.com/Moesif/Moesif-API-Ruby</a>
</blockquote>

```ruby
# To Install Moesif Lib, run in your terminal

> gem install moesif_api
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
// Import the module:
var moesifapi = require('moesifapi');

// Set your application id
var config = moesifapi.configuration;
config.ApplicationId = 'my_application_id';

// Create API Event Model and set fields
var myEventModel = new EventModel();
myEventModel.setTags("user"); // ...


//Access various controllers by:
var controller = moesifapi.ApiController;

// Send the actual event
controller.createEvent(myEventModel, function(error, response, context) {
  //  Handle Errors
});

```

```python
from __future__ import print_function
from moesifapi.moesif_api_client import *

# Setup API Client
api_client = MoesifAPIClient(my_application_id)
controller = api_client.api_controller


# Create API Event Model and set fields
my_event_model = EventModel()
my_event_model.tags = "user" #  ...

# Send the actual event
controller.create_event(my_event_model)

```

```ruby
require 'moesif_api'

# Setup API Client
api_client = MoesifApi::MoesifAPIClient.new(my_application_id)
controller = api_client.api_controller

# Create API Event Model and set fields
my_event_model = EventModel.new()
my_event_model.tags = "user" # ...

# Send the actual event
controller.create_event(my_event_model)

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
// Import the Library
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
ApiController controller = getClient().getApi();


// Create API Event Models and set fields
List<EventModel> myEventModels = new ArrayList<EventModel>();

EventModel eventA = new EventModel();
eventA.setTags("user"); // ...

myEventModels.add(eventA);

// Synchronous Call to add Events
controller.createEventsBatch(myEventModels);


// Asynchronous Call to add Events
APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
        // Event Added Successfully
    }

    public void onFailure(HttpContext context, Throwable error) {
        // Throw exception or print error
    }
};

controller.createEventsBatchAsync(myEventModels, callBack);
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

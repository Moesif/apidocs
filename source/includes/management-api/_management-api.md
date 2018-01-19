
<h1 id="Management-API">Management API v1</h1>


> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.


Management API to query data in Moesif. You can use the management API to export data for custom reports or to build custom dashboards.


Base URLs:


* <a href="https://api.moesif.com/v1">https://api.moesif.com/v1</a>



<a href="https://www.moesif.com/terms">Terms of service</a>


## Authentication


- Your Management API token must be added to the request _Authorization_ header using the following format:


 `Authorization: Bearer MY_API_TOKEN`


    - Token URL = [https://api.moesif.com/:orgId/oauth/access_tokens](https://api.moesif.com/:orgId/oauth/access_tokens)


|Scope|Scope Description|
|---|---|
|read:traces|Read traces and associated event_ids|
|update:triage_buckets|Update triaged errors such as the status|
|delete:workspaces|Delete existing workspaces for API replay|
|create:workspaces|Create a new workspace for API replay|
|read:workspaces|Read workspaces for API replay|
|read:events|Read/query API calls/events and associated event metadata|
|create:events|Create new API calls/events and associated event metadata|
|create:users|Create new users and associated user metadata|
|read:metrics|Read numeric API metrics such as error count|
|update:workspaces|Update existing workspaces for API replay|
|read:users|Read/query users and associated user metadata|
|update:users|Update existing users and associated user metadata|
|read:triage_buckets|Read triaged errors|


<h2 id="Management-API-Organizations">Organizations</h2>


### Gets Organizations


<a id="opIdgetOrganizations"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/organizations


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/organizations',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/organizations', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/organizations',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/organizations");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /organizations`


Gets a list of organization for authenticated in user


<h4 id="getOrganizations-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:organizations )
</aside>


<h2 id="Management-API-Replay">Replay</h2>


### Delete a HistoryEvent


<a id="opIddeleteHistoryEvent"></a>


> Code samples


```shell
# You can also use wget
curl -X DELETE -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/history_events/{id}?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/history_events/{id}?app_id=string',
{
  method: 'DELETE'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.delete('https://api.moesif.com/v1/replay/{orgId}/history_events/{id}', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://api.moesif.com/v1/replay/{orgId}/history_events/{id}',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/history_events/{id}?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`DELETE /replay/{orgId}/history_events/{id}`


<h4 id="deleteHistoryEvent-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|


<h4 id="deleteHistoryEvent-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:history_events )
</aside>


### Get a Workspace


<a id="opIdgetWorkspace"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /replay/{orgId}/workspaces/{id}`


<h4 id="getWorkspace-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|


<h4 id="getWorkspace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>


### Delete a Workspace


<a id="opIddeleteWorkspace"></a>


> Code samples


```shell
# You can also use wget
curl -X DELETE -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string',
{
  method: 'DELETE'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.delete('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`DELETE /replay/{orgId}/workspaces/{id}`


<h4 id="deleteWorkspace-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|


<h4 id="deleteWorkspace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:workspaces )
</aside>


### Get new Workspace Token


<a id="opIdgetWorkspaceToken"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/workspaces/access_token


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/workspaces/access_token',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/replay/workspaces/access_token', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/replay/workspaces/access_token',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/workspaces/access_token");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /replay/workspaces/access_token`


Get a new Workspace Access Token


<h4 id="getWorkspaceToken-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>


### Add a new HistoryEvent


<a id="opIdaddHistoryEvent"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/history_events?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/history_events?app_id=string',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/replay/{orgId}/history_events', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/history_events',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/history_events?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /replay/{orgId}/history_events`


<h4 id="addHistoryEvent-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|body|body|undefined|false|No description|


<h4 id="addHistoryEvent-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:history_events )
</aside>


### Create New Workspace


<a id="opIdcreateWorkspace"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/replay/{orgId}/workspaces', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/workspaces',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /replay/{orgId}/workspaces`


<h4 id="createWorkspace-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|


<h4 id="createWorkspace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:workspaces )
</aside>


### Get Workspaces


<a id="opIdgetWorkspaces"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string?take=0


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string?take=0',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces', params={
  'app_id': 'string',  'take': '0'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces',
  params: {
  'app_id' => 'string',
'take' => 'integer(int32)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string?take=0");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /replay/{orgId}/workspaces`


<h4 id="getWorkspaces-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|take|query|integer(int32)|true|No description|
|before_id|query|string|false|No description|


<h4 id="getWorkspaces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>


### Get HistoryEvents


<a id="opIdgetHistoryEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events?app_id=string?take=0


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events?app_id=string?take=0',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events', params={
  'app_id': 'string',  'take': '0'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events',
  params: {
  'app_id' => 'string',
'take' => 'integer(int32)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events?app_id=string?take=0");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /replay/{orgId}/workspaces/{id}/history_events`


<h4 id="getHistoryEvents-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|
|take|query|integer(int32)|true|No description|
|before_id|query|string|false|No description|


<h4 id="getHistoryEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:history_events )
</aside>


### Update Workspace Sequence


<a id="opIdupdateWorkspaceSequence"></a>


> Code samples


```shell
# You can also use wget
curl -X PUT -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence?app_id=string',
{
  method: 'PUT'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.put('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.put 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`PUT /replay/{orgId}/workspaces/{id}/sequence`


<h4 id="updateWorkspaceSequence-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|
|body|body|undefined|false|No description|


<h4 id="updateWorkspaceSequence-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>


<h2 id="Management-API-Traces">Traces</h2>


### Get Traces


<a id="opIdgetTraces"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/traces?session_token=string?triage_bucket.state=0?triage_bucket.verb=string?triage_bucket.status=0?triage_bucket.api_version=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/traces?session_token=string?triage_bucket.state=0?triage_bucket.verb=string?triage_bucket.status=0?triage_bucket.api_version=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/traces', params={
  'session_token': [
  "string"
],  'triage_bucket.state': [
  0
],  'triage_bucket.verb': [
  "string"
],  'triage_bucket.status': [
  0
],  'triage_bucket.api_version': [
  "string"
]
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/traces',
  params: {
  'session_token' => 'array[string]',
'triage_bucket.state' => 'array[integer]',
'triage_bucket.verb' => 'array[string]',
'triage_bucket.status' => 'array[integer]',
'triage_bucket.api_version' => 'array[string]'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/traces?session_token=string?triage_bucket.state=0?triage_bucket.verb=string?triage_bucket.status=0?triage_bucket.api_version=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/traces`


<h4 id="getTraces-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|user_id|query|string|false|No description|
|take|query|integer(int32)|false|No description|
|before_id|query|string|false|No description|
|after_id|query|string|false|No description|
|session_token|query|array[string]|true|No description|
|triage_bucket.state|query|array[integer]|true|No description|
|triage_bucket.route|query|string|false|No description|
|triage_bucket.verb|query|array[string]|true|No description|
|triage_bucket.status|query|array[integer]|true|No description|
|triage_bucket.api_version|query|array[string]|true|No description|
|created[gte]|query|string(date-time)|false|No description|
|created[lte]|query|string(date-time)|false|No description|
|sort|query|string|false|No description|


<h4 id="getTraces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


### Get a trace


<a id="opIdgetTrace"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/traces/{id}


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/traces/{id}',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/traces/{id}', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/traces/{id}',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/traces/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/traces/{id}`


<h4 id="getTrace-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|


<h4 id="getTrace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


### Get Events


<a id="opIdgetTraceEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/traces/{id}/events?take=0


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/traces/{id}/events?take=0',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/traces/{id}/events', params={
  'take': '0'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/traces/{id}/events',
  params: {
  'take' => 'integer(int32)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/traces/{id}/events?take=0");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/traces/{id}/events`


Get a list of events belonging to a single trace


<h4 id="getTraceEvents-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|take|query|integer(int32)|true|No description|
|after_id|query|string|false|No description|
|before_id|query|string|false|No description|


<h4 id="getTraceEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


<h2 id="Management-API-Metrics">Metrics</h2>


### Get Dashboard Metrics


<a id="opIdgetDashMetrics"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/dash/metrics?from=2018-01-19T21:37:03Z


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/dash/metrics?from=2018-01-19T21:37:03Z',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/dash/metrics', params={
  'from': '2018-01-19T21:37:03Z'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/dash/metrics',
  params: {
  'from' => 'string(date-time)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/dash/metrics?from=2018-01-19T21:37:03Z");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/dash/metrics`


Gets dashboard overview metrics


<h4 id="getDashMetrics-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|No description|
|point_count|query|integer(int32)|false|No description|
|names|query|array[string]|false|No description|


<h4 id="getDashMetrics-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:metrics )
</aside>


<h2 id="Management-API-OAuth">OAuth</h2>


### Get Token Info


<a id="opIdgetTokenInfo"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/~/oauth/tokeninfo', params={
  'scope': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/~/oauth/tokeninfo',
  params: {
  'scope' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /~/oauth/tokeninfo`


Get info for user's token


<h4 id="getTokenInfo-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|scope|query|string|true|No description|


<h4 id="getTokenInfo-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:access_tokens )
</aside>


### Get a new Access Token


<a id="opIdgetAccessToken"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string?scope=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string?scope=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/oauth/access_tokens', params={
  'target': 'string',  'scope': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/oauth/access_tokens',
  params: {
  'target' => 'string',
'scope' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string?scope=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/oauth/access_tokens`


Get a new access_token using logged in user's token


<h4 id="getAccessToken-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|target|query|string|true|No description|
|scope|query|string|true|No description|
|expiration|query|string(date-time)|false|No description|


<h4 id="getAccessToken-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:access_tokens )
</aside>


<h2 id="Management-API-URL-Encoder">URL Encoder</h2>


### Encodes a URL


<a id="opIdencodeUrl"></a>


> Code samples


```shell
# You can also use wget
curl -X POST  https://api.moesif.com/v1/url_encoder


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/url_encoder',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/url_encoder', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/url_encoder',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/url_encoder");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /url_encoder`


Encodes the URL to be used with Moesif Collector/Proxy Server


<h4 id="encodeUrl-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[models.UrlDTO](#schemamodels.urldto)|false|No description|


<h4 id="encodeUrl-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="success">
This operation does not require authentication
</aside>


<h2 id="Management-API-Triage-Buckets">Triage Buckets</h2>


### Get Triage Bucket Graph


<a id="opIdgetSignatureGraph"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0?error_event.duration_ms[lte]=0?error_event.duration_ms[gte]=0?error_event.request.time[lte]=2018-01-19T21:37:03Z?error_event.request.time[gte]=2018-01-19T21:37:03Z?error_event.request.ip_address=string?error_event.request.user_agent.os=string?error_event.request.user_agent.device=string?error_event.response.ip_address=string?error_event.session_token=string?error_event.user_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0?error_event.duration_ms[lte]=0?error_event.duration_ms[gte]=0?error_event.request.time[lte]=2018-01-19T21:37:03Z?error_event.request.time[gte]=2018-01-19T21:37:03Z?error_event.request.ip_address=string?error_event.request.user_agent.os=string?error_event.request.user_agent.device=string?error_event.response.ip_address=string?error_event.session_token=string?error_event.user_id=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph', params={
  'depth': '0',  'error_event.duration_ms[lte]': [
  0
],  'error_event.duration_ms[gte]': [
  0
],  'error_event.request.time[lte]': [
  "2018-01-19T21:37:03Z"
],  'error_event.request.time[gte]': [
  "2018-01-19T21:37:03Z"
],  'error_event.request.ip_address': [
  "string"
],  'error_event.request.user_agent.os': [
  "string"
],  'error_event.request.user_agent.device': [
  "string"
],  'error_event.response.ip_address': [
  "string"
],  'error_event.session_token': [
  "string"
],  'error_event.user_id': [
  "string"
]
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph',
  params: {
  'depth' => 'integer(int32)',
'error_event.duration_ms[lte]' => 'array[integer]',
'error_event.duration_ms[gte]' => 'array[integer]',
'error_event.request.time[lte]' => 'array[string]',
'error_event.request.time[gte]' => 'array[string]',
'error_event.request.ip_address' => 'array[string]',
'error_event.request.user_agent.os' => 'array[string]',
'error_event.request.user_agent.device' => 'array[string]',
'error_event.response.ip_address' => 'array[string]',
'error_event.session_token' => 'array[string]',
'error_event.user_id' => 'array[string]'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0?error_event.duration_ms[lte]=0?error_event.duration_ms[gte]=0?error_event.request.time[lte]=2018-01-19T21:37:03Z?error_event.request.time[gte]=2018-01-19T21:37:03Z?error_event.request.ip_address=string?error_event.request.user_agent.os=string?error_event.request.user_agent.device=string?error_event.response.ip_address=string?error_event.session_token=string?error_event.user_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/triage_buckets/{id}/graph`


Get a graph of event signatures by triage bucket id


<h4 id="getSignatureGraph-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|depth|query|integer(int32)|true|No description|
|error_event.duration_ms[lte]|query|array[integer]|true|No description|
|error_event.duration_ms[gte]|query|array[integer]|true|No description|
|error_event.request.time[lte]|query|array[string]|true|No description|
|error_event.request.time[gte]|query|array[string]|true|No description|
|error_event.request.ip_address|query|array[string]|true|No description|
|error_event.request.user_agent.os|query|array[string]|true|No description|
|error_event.request.user_agent.device|query|array[string]|true|No description|
|error_event.response.ip_address|query|array[string]|true|No description|
|error_event.session_token|query|array[string]|true|No description|
|error_event.user_id|query|array[string]|true|No description|


<h4 id="getSignatureGraph-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:triage_buckets )
</aside>


### Gets Triage Buckets


<a id="opIdgetTriageBuckets"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/triage_buckets?take=0?state=0?verb=string?status=0?api_version=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets?take=0?state=0?verb=string?status=0?api_version=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/triage_buckets', params={
  'take': '0',  'state': [
  0
],  'verb': [
  "string"
],  'status': [
  0
],  'api_version': [
  "string"
]
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/triage_buckets',
  params: {
  'take' => 'integer(int32)',
'state' => 'array[integer]',
'verb' => 'array[string]',
'status' => 'array[integer]',
'api_version' => 'array[string]'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/triage_buckets?take=0?state=0?verb=string?status=0?api_version=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/triage_buckets`


Gets a list of triage buckets for authenticated in user under the given organization


<h4 id="getTriageBuckets-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|take|query|integer(int32)|true|No description|
|before_id|query|string|false|No description|
|after_id|query|string|false|No description|
|state|query|array[integer]|true|No description|
|last_modified[gte]|query|string(date-time)|false|No description|
|last_modified[lte]|query|string(date-time)|false|No description|
|route|query|string|false|No description|
|verb|query|array[string]|true|No description|
|status|query|array[integer]|true|No description|
|api_version|query|array[string]|true|No description|
|sort|query|string|false|No description|


<h4 id="getTriageBuckets-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:triage_buckets )
</aside>


### Updates a Triage Bucket


<a id="opIdupdateTriageBucket"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/triage_buckets/{triageBucketId}`


Updates a Triage Bucket (Null fields ignored)


<h4 id="updateTriageBucket-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|triageBucketId|path|string|true|No description|
|body|body|[models.TriageBucketUpdateDTO](#schemamodels.triagebucketupdatedto)|false|No description|


<h4 id="updateTriageBucket-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:triage_buckets )
</aside>


<h2 id="Management-API-Signatures">Signatures</h2>


### Get Events


<a id="opIdgetSignatureEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/signatures/{id}/events?take=0


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/signatures/{id}/events?take=0',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/signatures/{id}/events', params={
  'take': '0'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/signatures/{id}/events',
  params: {
  'take' => 'integer(int32)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/signatures/{id}/events?take=0");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/signatures/{id}/events`


Get a list of events that matched a particular signature


<h4 id="getSignatureEvents-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|take|query|integer(int32)|true|No description|
|after_id|query|string|false|No description|
|before_id|query|string|false|No description|


<h4 id="getSignatureEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:signatures )
</aside>


### Get Traces


<a id="opIdgetSignatureTraces"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/signatures/{id}/traces?take=0


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/signatures/{id}/traces?take=0',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/signatures/{id}/traces', params={
  'take': '0'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/signatures/{id}/traces',
  params: {
  'take' => 'integer(int32)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/signatures/{id}/traces?take=0");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/signatures/{id}/traces`


Get a list of traces that matched a particular signature


<h4 id="getSignatureTraces-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|take|query|integer(int32)|true|No description|
|after_id|query|string|false|No description|
|before_id|query|string|false|No description|


<h4 id="getSignatureTraces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:signatures )
</aside>


<h2 id="Management-API-Health">Health</h2>


### Health Probe


<a id="opIdprobe"></a>


> Code samples


```shell
# You can also use wget
curl -X GET  https://api.moesif.com/v1/health/probe


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/health/probe',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/health/probe', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/health/probe',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/health/probe");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /health/probe`


<h4 id="probe-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="success">
This operation does not require authentication
</aside>


<h2 id="Management-API-Issue-Tracking">Issue Tracking</h2>


### Get a Jira Accunt


<a id="opIdgetJiraAccount"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /issue_tracking/{orgId}/jira/account`


Get the linked Jira Account


<h4 id="getJiraAccount-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|


<h4 id="getJiraAccount-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:jira_accounts )
</aside>


### Update a Jira Account


<a id="opIdupdateJiraAccount"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /issue_tracking/{orgId}/jira/account`


Create or update a linked Jira Account


<h4 id="updateJiraAccount-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|body|body|[com.moesif.issuetracking.models.JiraAccountUpdateDTO](#schemacom.moesif.issuetracking.models.jiraaccountupdatedto)|false|No description|


<h4 id="updateJiraAccount-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:jira_accounts update:jira_accounts )
</aside>


### Delete a Jira Account


<a id="opIddeleteJiraAccount"></a>


> Code samples


```shell
# You can also use wget
curl -X DELETE -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string',
{
  method: 'DELETE'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.delete('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account', params={
  'app_id': 'string'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account',
  params: {
  'app_id' => 'string'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`DELETE /issue_tracking/{orgId}/jira/account`


Delete the linked Jira Account


<h4 id="deleteJiraAccount-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|


<h4 id="deleteJiraAccount-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:jira_accounts )
</aside>


<h2 id="Management-API-Mappings">Mappings</h2>


### Get Mapping for Users


<a id="opIdgetProperties"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/mappings/users/properties


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/mappings/users/properties',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/mappings/users/properties', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/mappings/users/properties',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/mappings/users/properties");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/mappings/users/properties`


<h4 id="getProperties-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|


<h4 id="getProperties-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


<h2 id="Management-API-Events">Events</h2>


### Count Events


<a id="opIdcountEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/count/events?from=2018-01-19T21:37:03Z?to=2018-01-19T21:37:03Z


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/count/events?from=2018-01-19T21:37:03Z?to=2018-01-19T21:37:03Z',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/count/events', params={
  'from': '2018-01-19T21:37:03Z',  'to': '2018-01-19T21:37:03Z'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/count/events',
  params: {
  'from' => 'string(date-time)',
'to' => 'string(date-time)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/count/events?from=2018-01-19T21:37:03Z?to=2018-01-19T21:37:03Z");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/count/events`


<h4 id="countEvents-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|No description|
|to|query|string(date-time)|true|No description|
|body|body|undefined|false|No description|


<h4 id="countEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>


### Search Events


<a id="opIdsearchEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/search/events?from=2018-01-19T21:37:03Z?to=2018-01-19T21:37:03Z


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/search/events?from=2018-01-19T21:37:03Z?to=2018-01-19T21:37:03Z',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/search/events', params={
  'from': '2018-01-19T21:37:03Z',  'to': '2018-01-19T21:37:03Z'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/events',
  params: {
  'from' => 'string(date-time)',
'to' => 'string(date-time)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/events?from=2018-01-19T21:37:03Z?to=2018-01-19T21:37:03Z");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/search/events`


<h4 id="searchEvents-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|No description|
|to|query|string(date-time)|true|No description|
|body|body|undefined|false|No description|


<h4 id="searchEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>


### Get an Event


<a id="opIdgetEvent"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/events/{id}?event_time=2018-01-19T21:37:03Z


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/events/{id}?event_time=2018-01-19T21:37:03Z',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/events/{id}', params={
  'event_time': '2018-01-19T21:37:03Z'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/events/{id}',
  params: {
  'event_time' => 'string(date-time)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/events/{id}?event_time=2018-01-19T21:37:03Z");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/events/{id}`


<h4 id="getEvent-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|event_time|query|string(date-time)|true|No description|


<h4 id="getEvent-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>


<h2 id="Management-API-Users">Users</h2>


### Count Users


<a id="opIdcountUsers"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/count/users


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/count/users',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/count/users', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/count/users',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/count/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/count/users`


<h4 id="countUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|undefined|false|No description|


<h4 id="countUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


### Update a User


<a id="opIdupdateUsers"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/users


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/users',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/users', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/users',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/users`


<h4 id="updateUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|undefined|false|No description|


<h4 id="updateUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>


### Search Users


<a id="opIdsearchUsers"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/search/users


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/search/users',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/search/users', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/users',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/users");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/search/users`


<h4 id="searchUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|undefined|false|No description|


<h4 id="searchUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


### Update Users in Batch


<a id="opIdbatchUpdateUsers"></a>


> Code samples


```shell
# You can also use wget
curl -X POST -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/users/batch


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/users/batch',
{
  method: 'POST'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.post('https://api.moesif.com/v1/{orgId}/users/batch', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/users/batch',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/users/batch");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`POST /{orgId}/users/batch`


<h4 id="batchUpdateUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|undefined|false|No description|


<h4 id="batchUpdateUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>


### Get a User


<a id="opIdgetUser"></a>


> Code samples


```shell
# You can also use wget
curl -X GET -H "Authorization:Bearer YOUR_MANAGEMENT_API_TOKEN" https://api.moesif.com/v1/{orgId}/users/{id}


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/users/{id}',
{
  method: 'GET'


})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests


r = requests.get('https://api.moesif.com/v1/{orgId}/users/{id}', params={


)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/users/{id}',
  params: {
  }


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/users/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());


```


`GET /{orgId}/users/{id}`


<h4 id="getUser-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|


<h4 id="getUser-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


## Schemas


<h3 id="tocSeventrequest">EventRequest</h3>


<a id="schemaeventrequest"></a>


```yaml
{
  "body": {},
  "uri": "string",
  "user_agent": {
    "name": "string",
    "os": "string",
    "os_name": "string",
    "major": "string",
    "device": "string",
    "minor": "string"
  },
  "api_version": "string",
  "geo_ip": {
    "region_name": "string",
    "latitude": 0,
    "timezone": "string",
    "longitude": 0,
    "real_region_name": "string",
    "postal_code": "string",
    "city_name": "string",
    "country_code2": "string",
    "country_name": "string"
  },
  "ip_address": "string",
  "verb": "string",
  "route": "string",
  "time": "2018-01-19T21:37:03Z",
  "headers": {},
  "instance_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|body|object|false|No description|
|uri|string|true|No description|
|user_agent|EventUserAgent](eventuseragent)|false|No description|
|api_version|string|false|No description|
|geo_ip|EventGeoIp](eventgeoip)|false|No description|
|ip_address|string|true|No description|
|verb|string|true|No description|
|route|string|true|No description|
|time|string(date-time)|true|No description|
|headers|object|true|No description|
|instance_id|string|false|No description|


<h3 id="tocSorganizationresponse">OrganizationResponse</h3>


<a id="schemaorganizationresponse"></a>


```yaml
{
  "name": "string",
  "service_level": "string",
  "id": "string",
  "created": "2018-01-19T21:37:03Z",
  "apps": [
    {
      "id": "string",
      "name": "string"
    }
  ]
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|name|string|true|No description|
|service_level|string|true|No description|
|id|string|false|No description|
|created|string(date-time)|true|No description|
|apps|[AppResponse](appresponse)]|true|No description|


<h3 id="tocSeventuseragent">EventUserAgent</h3>


<a id="schemaeventuseragent"></a>


```yaml
{
  "name": "string",
  "os": "string",
  "os_name": "string",
  "major": "string",
  "device": "string",
  "minor": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|name|string|false|No description|
|os|string|false|No description|
|os_name|string|false|No description|
|major|string|false|No description|
|device|string|false|No description|
|minor|string|false|No description|


<h3 id="tocSaccesstoken">AccessToken</h3>


<a id="schemaaccesstoken"></a>


```yaml
{
  "app_token": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|app_token|string|true|No description|


<h3 id="tocSappresponse">AppResponse</h3>


<a id="schemaappresponse"></a>


```yaml
{
  "id": "string",
  "name": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|id|string|false|No description|
|name|string|true|No description|


<h3 id="tocStriagebucketresponse">TriageBucketResponse</h3>


<a id="schematriagebucketresponse"></a>


```yaml
{
  "state": 0,
  "host": "string",
  "session_count": 0,
  "last_modified": "2018-01-19T21:37:03Z",
  "api_version": "string",
  "id": "string",
  "user_count": 0,
  "status": 0,
  "verb": "string",
  "event_count": 0,
  "route": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|state|integer(int32)|true|No description|
|host|string|true|No description|
|session_count|integer(int64)|false|No description|
|last_modified|string(date-time)|true|No description|
|api_version|string|false|No description|
|id|string|true|No description|
|user_count|integer(int64)|false|No description|
|status|integer(int32)|true|No description|
|verb|string|true|No description|
|event_count|integer(int64)|false|No description|
|route|string|true|No description|


<h3 id="tocSsignaturevertex">SignatureVertex</h3>


<a id="schemasignaturevertex"></a>


```yaml
{
  "signature_id": "string",
  "host": "string",
  "response": {
    "status_code": 0
  },
  "verb": "string",
  "route": "string",
  "created": "2018-01-19T21:37:03Z"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|signature_id|string|true|No description|
|host|string|false|No description|
|response|ResponseSignature](responsesignature)|false|No description|
|verb|string|true|No description|
|route|string|true|No description|
|created|string(date-time)|true|No description|


<h3 id="tocSsigneken">Signeken</h3>


<a id="schemasigneken"></a>


```yaml
{
  "_id": "string",
  "token": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|_id|string|true|No description|
|token|string|true|No description|


<h3 id="tocStraceresponse">TraceResponse</h3>


<a id="schematraceresponse"></a>


```yaml
{
  "user_id": "string",
  "triage_bucket": {
    "state": 0,
    "host": "string",
    "session_count": 0,
    "last_modified": "2018-01-19T21:37:03Z",
    "api_version": "string",
    "id": "string",
    "user_count": 0,
    "status": 0,
    "verb": "string",
    "event_count": 0,
    "route": "string"
  },
  "id": "string",
  "session_token": "string",
  "created": "2018-01-19T21:37:03Z"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|user_id|string|false|No description|
|triage_bucket|TriageBucketResponse](triagebucketresponse)|false|No description|
|id|string|true|No description|
|session_token|string|false|No description|
|created|string(date-time)|true|No description|


<h3 id="tocSresponsesignature">ResponseSignature</h3>


<a id="schemaresponsesignature"></a>


```yaml
{
  "status_code": 0
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|status_code|integer(int32)|true|No description|


<h3 id="tocStriagebucketupdate">TriageBucketUpdate</h3>


<a id="schematriagebucketupdate"></a>


```yaml
{
  "state": 0
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|state|integer(int32)|false|No description|


<h3 id="tocSeventresponse">EventResponse</h3>


<a id="schemaeventresponse"></a>


```yaml
{
  "body": {},
  "geo_ip": {
    "region_name": "string",
    "latitude": 0,
    "timezone": "string",
    "longitude": 0,
    "real_region_name": "string",
    "postal_code": "string",
    "city_name": "string",
    "country_code2": "string",
    "country_name": "string"
  },
  "ip_address": "string",
  "status": 0,
  "time": "2018-01-19T21:37:03Z",
  "headers": {},
  "instance_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|body|object|false|No description|
|geo_ip|EventGeoIp](eventgeoip)|false|No description|
|ip_address|string|false|No description|
|status|integer(int32)|true|No description|
|time|string(date-time)|true|No description|
|headers|object|true|No description|
|instance_id|string|false|No description|


<h3 id="tocSurl">Url</h3>


<a id="schemaurl"></a>


```yaml
{
  "url": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|url|string|true|No description|


<h3 id="tocSeventgeoip">EventGeoIp</h3>


<a id="schemaeventgeoip"></a>


```yaml
{
  "region_name": "string",
  "latitude": 0,
  "timezone": "string",
  "longitude": 0,
  "real_region_name": "string",
  "postal_code": "string",
  "city_name": "string",
  "country_code2": "string",
  "country_name": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|region_name|string|false|No description|
|latitude|number(double)|false|No description|
|timezone|string|false|No description|
|longitude|number(double)|false|No description|
|real_region_name|string|false|No description|
|postal_code|string|false|No description|
|city_name|string|false|No description|
|country_code2|string|false|No description|
|country_name|string|false|No description|


<h3 id="tocSsignatureedge">SignatureEdge</h3>


<a id="schemasignatureedge"></a>


```yaml
{
  "from_vertex": {
    "signature_id": "string",
    "host": "string",
    "response": {
      "status_code": 0
    },
    "verb": "string",
    "route": "string",
    "created": "2018-01-19T21:37:03Z"
  },
  "to_vertex": {
    "signature_id": "string",
    "host": "string",
    "response": {
      "status_code": 0
    },
    "verb": "string",
    "route": "string",
    "created": "2018-01-19T21:37:03Z"
  },
  "value": 0,
  "time_span_ms": 0
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|from_vertex|SignatureVertex](signaturevertex)|true|No description|
|to_vertex|SignatureVertex](signaturevertex)|true|No description|
|value|number(double)|true|No description|
|time_span_ms|integer(int32)|true|No description|


<h3 id="tocSdashmetrics">DashMetrics</h3>


<a id="schemadashmetrics"></a>


```yaml
{
  "average_duration_ms_ts": null,
  "error_count": 0,
  "error_count_ts": null,
  "user_count_ts": null,
  "user_count": 0,
  "error_user_count": 0,
  "average_duration_ms": 0,
  "error_user_count_ts": null
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|average_duration_ms_ts|seq[(datetime, long)]|true|No description|
|error_count|integer(int64)|true|No description|
|error_count_ts|seq[(datetime, long)]|true|No description|
|user_count_ts|seq[(datetime, long)]|true|No description|
|user_count|integer(int64)|true|No description|
|error_user_count|integer(int64)|true|No description|
|average_duration_ms|integer(int64)|true|No description|
|error_user_count_ts|seq[(datetime, long)]|true|No description|


<h3 id="tocSevent">Event</h3>


<a id="schemaevent"></a>


```yaml
{
  "request": {
    "body": {},
    "uri": "string",
    "user_agent": {
      "name": "string",
      "os": "string",
      "os_name": "string",
      "major": "string",
      "device": "string",
      "minor": "string"
    },
    "api_version": "string",
    "geo_ip": {
      "region_name": "string",
      "latitude": 0,
      "timezone": "string",
      "longitude": 0,
      "real_region_name": "string",
      "postal_code": "string",
      "city_name": "string",
      "country_code2": "string",
      "country_name": "string"
    },
    "ip_address": "string",
    "verb": "string",
    "route": "string",
    "time": "2018-01-19T21:37:03Z",
    "headers": {},
    "instance_id": "string"
  },
  "trace_id": "string",
  "triage_bucket_id": "string",
  "user_id": "string",
  "response": {
    "body": {},
    "geo_ip": {
      "region_name": "string",
      "latitude": 0,
      "timezone": "string",
      "longitude": 0,
      "real_region_name": "string",
      "postal_code": "string",
      "city_name": "string",
      "country_code2": "string",
      "country_name": "string"
    },
    "ip_address": "string",
    "status": 0,
    "time": "2018-01-19T21:37:03Z",
    "headers": {},
    "instance_id": "string"
  },
  "id": "string",
  "session_token": "string",
  "metadata": {},
  "user": {}
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|request|EventRequest](eventrequest)|true|No description|
|trace_id|string|false|No description|
|triage_bucket_id|string|false|No description|
|user_id|string|false|No description|
|response|EventResponse](eventresponse)|true|No description|
|id|string|true|No description|
|session_token|string|false|No description|
|metadata|object|false|No description|
|user|object|false|No description|


<h3 id="tocSstatus">Status</h3>


<a id="schemastatus"></a>


```yaml
{
  "status": true,
  "region": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|status|boolean|true|No description|
|region|string|true|No description|


<h3 id="tocSjiraaccountupdate">JiraAccountUpdate</h3>


<a id="schemajiraaccountupdate"></a>


```yaml
{
  "instance_url": "string",
  "username": "string",
  "password": "string",
  "default_project_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|instance_url|string|false|No description|
|username|string|false|No description|
|password|string|false|No description|
|default_project_id|string|false|No description|


<h3 id="tocSsignaturegraphresponse">SignatureGraphResponse</h3>


<a id="schemasignaturegraphresponse"></a>


```yaml
{
  "triage_bucket_id": "string",
  "error_signature_id": "string",
  "edges": [
    {
      "from_vertex": {
        "signature_id": "string",
        "host": "string",
        "response": {
          "status_code": 0
        },
        "verb": "string",
        "route": "string",
        "created": "2018-01-19T21:37:03Z"
      },
      "to_vertex": {
        "signature_id": "string",
        "host": "string",
        "response": {
          "status_code": 0
        },
        "verb": "string",
        "route": "string",
        "created": "2018-01-19T21:37:03Z"
      },
      "value": 0,
      "time_span_ms": 0
    }
  ],
  "triage_bucket": {
    "state": 0,
    "host": "string",
    "session_count": 0,
    "last_modified": "2018-01-19T21:37:03Z",
    "api_version": "string",
    "id": "string",
    "user_count": 0,
    "status": 0,
    "verb": "string",
    "event_count": 0,
    "route": "string"
  }
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|triage_bucket_id|string|true|No description|
|error_signature_id|string|true|No description|
|edges|[SignatureEdge](signatureedge)]|false|No description|
|triage_bucket|TriageBucketResponse](triagebucketresponse)|false|No description|

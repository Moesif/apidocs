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
|create:events|Create new API calls/events and associated event metadata|
|read:events|Read/query API calls/events and associated event metadata|
|read:metrics|Read numeric API metrics such as error count|
|read:traces|Read traces and associated event_ids|
|read:triage_buckets|Read triaged errors|
|update:triage_buckets|Update triaged errors such as the status|
|create:users|Create new users and associated user metadata|
|read:users|Read/query users and associated user metadata|
|update:users|Update existing users and associated user metadata|
|create:workspaces|Create a new workspace for API replay|
|read:workspaces|Read workspaces for API replay|
|update:workspaces|Update existing workspaces for API replay|
|delete:workspaces|Delete existing workspaces for API replay|


<h2 id="Management-API-Replay">Replay</h2>


### getWorkspaceToken


<a id="opIdgetWorkspaceToken"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/workspaces/access_token


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


*Get a new Workspace Access Token*


<h4 id="getWorkspaceToken-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>


### createWorkspace


<a id="opIdcreateWorkspace"></a>


> Code samples


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string


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


*Create New Workspace*


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


### getWorkspaces


<a id="opIdgetWorkspaces"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string?take=0


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


*Get Workspaces*


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


### getWorkspace


<a id="opIdgetWorkspace"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string


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


*Get Workspace*


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


### deleteWorkspace


<a id="opIddeleteWorkspace"></a>


> Code samples


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string


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


*Delete Workspace*


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


### updateWorkspaceSequence


<a id="opIdupdateWorkspaceSequence"></a>


> Code samples


```shell
# You can also use wget
curl -X PUT https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence?app_id=string


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


*Update Workspace with Sequence*


<h4 id="updateWorkspaceSequence-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|
|body|body|[com.moesif.docdb.documents.replay.SequenceItem](#schemacom.moesif.docdb.documents.replay.sequenceitem)|false|No description|


<h4 id="updateWorkspaceSequence-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>


### addHistoryEvent


<a id="opIdaddHistoryEvent"></a>


> Code samples


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/history_events?app_id=string


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


*Add New HistoryEvent*


<h4 id="addHistoryEvent-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|body|body|[com.moesif.docdb.documents.replay.HistoryEventsDocument](#schemacom.moesif.docdb.documents.replay.historyeventsdocument)|false|No description|


<h4 id="addHistoryEvent-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:history_events )
</aside>


### deleteHistoryEvent


<a id="opIddeleteHistoryEvent"></a>


> Code samples


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/replay/{orgId}/history_events/{id}?app_id=string


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


*Delete HistoryEvent*


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


### getHistoryEvents


<a id="opIdgetHistoryEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events?app_id=string?take=0


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


*Get HistoryEvents*


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


<h2 id="Management-API-Issue-Tracking">Issue Tracking</h2>


### getJiraAccount


<a id="opIdgetJiraAccount"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string


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


*Get Jira Linked Accunt*


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


### updateJiraAccount


<a id="opIdupdateJiraAccount"></a>


> Code samples


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string


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


*Create or Update New Jira Linked Account*


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


### deleteJiraAccount


<a id="opIddeleteJiraAccount"></a>


> Code samples


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string


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


*Delete Linked Jira Account*


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


<h2 id="Management-API-Health">Health</h2>


### probe


<a id="opIdprobe"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/health/probe


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


*Health Probe*


<h4 id="probe-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="success">
This operation does not require authentication
</aside>


<h2 id="Management-API-Organizations">Organizations</h2>


### getOrganizations


<a id="opIdgetOrganizations"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/organizations


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


*Gets a list of organization for authenticated in user*


<h4 id="getOrganizations-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:organizations )
</aside>


<h2 id="Management-API-Metrics">Metrics</h2>


### getDashMetrics


<a id="opIdgetDashMetrics"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/dash/metrics?from=0


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/dash/metrics?from=0',
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
  'from': '0'
)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/dash/metrics',
  params: {
  'from' => 'integer(epoch)'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/dash/metrics?from=0");
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


*Gets dashboard overview metrics*


<h4 id="getDashMetrics-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|integer(epoch)|true|No description|
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


### getAccessToken


<a id="opIdgetAccessToken"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string?scope=string


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


*Get a new access_token using logged in user's token*


<h4 id="getAccessToken-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|target|query|string|true|No description|
|scope|query|string|true|No description|
|expiration|query|integer(epoch)|false|No description|


<h4 id="getAccessToken-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:access_tokens )
</aside>


### getTokenInfo


<a id="opIdgetTokenInfo"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string


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


*Get info for user's token*


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


<h2 id="Management-API-Signatures">Signatures</h2>


### getSignatureEvents


<a id="opIdgetSignatureEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/signatures/{id}/events?take=0


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


*Get a list of events that matched a particular signature*


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


### getSignatureTraces


<a id="opIdgetSignatureTraces"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/signatures/{id}/traces?take=0


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


*Get a list of traces that matched a particular signature*


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


<h2 id="Management-API-Traces">Traces</h2>


### getTraces


<a id="opIdgetTraces"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/traces?session_token=string?%60triage_bucket%2Estate%60=0?%60triage_bucket%2Everb%60=string?%60triage_bucket%2Estatus%60=0?%60triage_bucket%2Eapi_version%60=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/traces?session_token=string?%60triage_bucket%2Estate%60=0?%60triage_bucket%2Everb%60=string?%60triage_bucket%2Estatus%60=0?%60triage_bucket%2Eapi_version%60=string',
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
],  '`triage_bucket.state`': [
  0
],  '`triage_bucket.verb`': [
  "string"
],  '`triage_bucket.status`': [
  0
],  '`triage_bucket.api_version`': [
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
'`triage_bucket.state`' => 'array[integer]',
'`triage_bucket.verb`' => 'array[string]',
'`triage_bucket.status`' => 'array[integer]',
'`triage_bucket.api_version`' => 'array[string]'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/traces?session_token=string?%60triage_bucket%2Estate%60=0?%60triage_bucket%2Everb%60=string?%60triage_bucket%2Estatus%60=0?%60triage_bucket%2Eapi_version%60=string");
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


*Get a list traces*


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
|created[gte]|query|integer(epoch)|false|No description|
|created[lte]|query|integer(epoch)|false|No description|
|sort|query|string|false|No description|


<h4 id="getTraces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


### getTrace


<a id="opIdgetTrace"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/traces/{id}


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


*Get a single trace*


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


### getTraceEvents


<a id="opIdgetTraceEvents"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/traces/{id}/events?take=0


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


*Get a list of events belonging to a single trace*


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


<h2 id="Management-API-Triage-Buckets">Triage Buckets</h2>


### getTriageBuckets


<a id="opIdgetTriageBuckets"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/triage_buckets?take=0?state=0?verb=string?status=0?api_version=string


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


*Gets a list of triage buckets for authenticated in user under the given organization*


<h4 id="getTriageBuckets-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|take|query|integer(int32)|true|No description|
|before_id|query|string|false|No description|
|after_id|query|string|false|No description|
|state|query|array[integer]|true|No description|
|last_modified[gte]|query|integer(epoch)|false|No description|
|last_modified[lte]|query|integer(epoch)|false|No description|
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


### updateTriageBucket


<a id="opIdupdateTriageBucket"></a>


> Code samples


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}


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


*Updates a Triage Bucket (Null fields ignored)*


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


### getSignatureGraph


<a id="opIdgetSignatureGraph"></a>


> Code samples


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0?%60error_event%2Eduration_ms%5Blte%5D%60=0?%60error_event%2Eduration_ms%5Bgte%5D%60=0?%60error_event%2Erequest%2Etime%5Blte%5D%60=0?%60error_event%2Erequest%2Etime%5Bgte%5D%60=0?%60error_event%2Erequest%2Eip_address%60=string?%60error_event%2Erequest%2Euser_agent%2Eos%60=string?%60error_event%2Erequest%2Euser_agent%2Edevice%60=string?%60error_event%2Eresponse%2Eip_address%60=string?%60error_event%2Esession_token%60=string?%60error_event%2Euser_id%60=string


```


```javascript--nodejs
const request = require('node-fetch');


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0?%60error_event%2Eduration_ms%5Blte%5D%60=0?%60error_event%2Eduration_ms%5Bgte%5D%60=0?%60error_event%2Erequest%2Etime%5Blte%5D%60=0?%60error_event%2Erequest%2Etime%5Bgte%5D%60=0?%60error_event%2Erequest%2Eip_address%60=string?%60error_event%2Erequest%2Euser_agent%2Eos%60=string?%60error_event%2Erequest%2Euser_agent%2Edevice%60=string?%60error_event%2Eresponse%2Eip_address%60=string?%60error_event%2Esession_token%60=string?%60error_event%2Euser_id%60=string',
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
  'depth': '0',  '`error_event.duration_ms[lte]`': [
  0
],  '`error_event.duration_ms[gte]`': [
  0
],  '`error_event.request.time[lte]`': [
  0
],  '`error_event.request.time[gte]`': [
  0
],  '`error_event.request.ip_address`': [
  "string"
],  '`error_event.request.user_agent.os`': [
  "string"
],  '`error_event.request.user_agent.device`': [
  "string"
],  '`error_event.response.ip_address`': [
  "string"
],  '`error_event.session_token`': [
  "string"
],  '`error_event.user_id`': [
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
'`error_event.duration_ms[lte]`' => 'array[integer]',
'`error_event.duration_ms[gte]`' => 'array[integer]',
'`error_event.request.time[lte]`' => 'array[integer]',
'`error_event.request.time[gte]`' => 'array[integer]',
'`error_event.request.ip_address`' => 'array[string]',
'`error_event.request.user_agent.os`' => 'array[string]',
'`error_event.request.user_agent.device`' => 'array[string]',
'`error_event.response.ip_address`' => 'array[string]',
'`error_event.session_token`' => 'array[string]',
'`error_event.user_id`' => 'array[string]'
}


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0?%60error_event%2Eduration_ms%5Blte%5D%60=0?%60error_event%2Eduration_ms%5Bgte%5D%60=0?%60error_event%2Erequest%2Etime%5Blte%5D%60=0?%60error_event%2Erequest%2Etime%5Bgte%5D%60=0?%60error_event%2Erequest%2Eip_address%60=string?%60error_event%2Erequest%2Euser_agent%2Eos%60=string?%60error_event%2Erequest%2Euser_agent%2Edevice%60=string?%60error_event%2Eresponse%2Eip_address%60=string?%60error_event%2Esession_token%60=string?%60error_event%2Euser_id%60=string");
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


*Get a graph of event signatures by triage bucket id*


<h4 id="getSignatureGraph-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|depth|query|integer(int32)|true|No description|
|error_event.duration_ms[lte]|query|array[integer]|true|No description|
|error_event.duration_ms[gte]|query|array[integer]|true|No description|
|error_event.request.time[lte]|query|array[integer]|true|No description|
|error_event.request.time[gte]|query|array[integer]|true|No description|
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


<h2 id="Management-API-URL-Encoder">URL Encoder</h2>


### encodeUrl


<a id="opIdencodeUrl"></a>


> Code samples


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/url_encoder


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


*Encodes the URL to be used with Moesif Collector/Proxy Server*


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


## Schemas


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


<h3 id="tocSjiraaccountupdate">JiraAccountUpdate</h3>


<a id="schemajiraaccountupdate"></a>


```yaml
{
  "instanceUrl": "string",
  "username": "string",
  "password": "string",
  "defaultProjectId": "string",
  "instance_url": "string",
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
|instance_url|string|false|No description|
|default_project_id|string|false|No description|


<h3 id="tocSjiraproject">JiraProject</h3>


<a id="schemajiraproject"></a>


```yaml
{
  "jiraId": "string",
  "key": "string",
  "name": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|jira_id|string|true|No description|
|key|string|true|No description|
|name|string|true|No description|


<h3 id="tocSjiraaccountdocument">JiraAccountDocument</h3>


<a id="schemajiraaccountdocument"></a>


```yaml
{
  "orgId": "string",
  "appId": "string",
  "instanceUrl": "string",
  "username": "string",
  "password": "string",
  "defaultProjectId": "string",
  "projects": [
    {
      "jiraId": "string",
      "key": "string",
      "name": "string"
    }
  ],
  "Id": null
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|org_id|string|true|No description|
|app_id|string|true|No description|
|instance_url|string|false|No description|
|username|string|false|No description|
|password|string|false|No description|
|default_project_id|string|false|No description|
|projects|[[JiraProject](#schemajiraproject)]|false|No description|
|id|org.bson.types.objectid|false|No description|


<h3 id="tocSaccesstoken">AccessToken</h3>


<a id="schemaaccesstoken"></a>


```yaml
{
  "appToken": "string",
  "app_token": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|app_token|string|false|No description|
|app_token|string|true|No description|


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


<h3 id="tocSeventresponse">EventResponse</h3>


<a id="schemaeventresponse"></a>


```yaml
{
  "time": "2018-01-18T22:17:03Z",
  "status": 0,
  "ipAddress": "string",
  "geoIp": {
    "latitude": 0,
    "longitude": 0,
    "timezone": "string",
    "cityName": "string",
    "countryCode2": "string",
    "countryName": "string",
    "regionName": "string",
    "realRegionName": "string",
    "postalCode": "string",
    "region_name": "string",
    "real_region_name": "string",
    "postal_code": "string",
    "city_name": "string",
    "country_code2": "string",
    "country_name": "string"
  },
  "instanceId": "string",
  "headers": {},
  "body": {},
  "geo_ip": {
    "latitude": 0,
    "longitude": 0,
    "timezone": "string",
    "cityName": "string",
    "countryCode2": "string",
    "countryName": "string",
    "regionName": "string",
    "realRegionName": "string",
    "postalCode": "string",
    "region_name": "string",
    "real_region_name": "string",
    "postal_code": "string",
    "city_name": "string",
    "country_code2": "string",
    "country_name": "string"
  },
  "ip_address": "string",
  "instance_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|time|string(date-time)|true|No description|
|status|integer(int32)|true|No description|
|ip_address|string|false|No description|
|geo_ip|[EventGeoIp](#schemaeventgeoip)|false|No description|
|instance_id|string|false|No description|
|headers|object|true|No description|
|body|object|false|No description|
|geo_ip|[EventGeoIp](#schemaeventgeoip)|false|No description|
|ip_address|string|false|No description|
|instance_id|string|false|No description|


<h3 id="tocSeventuseragent">EventUserAgent</h3>


<a id="schemaeventuseragent"></a>


```yaml
{
  "os": "string",
  "major": "string",
  "minor": "string",
  "name": "string",
  "osName": "string",
  "device": "string",
  "os_name": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|os|string|false|No description|
|major|string|false|No description|
|minor|string|false|No description|
|name|string|false|No description|
|os_name|string|false|No description|
|device|string|false|No description|
|os_name|string|false|No description|


<h3 id="tocSeventgeoip">EventGeoIp</h3>


<a id="schemaeventgeoip"></a>


```yaml
{
  "latitude": 0,
  "longitude": 0,
  "timezone": "string",
  "cityName": "string",
  "countryCode2": "string",
  "countryName": "string",
  "regionName": "string",
  "realRegionName": "string",
  "postalCode": "string",
  "region_name": "string",
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
|latitude|number(double)|false|No description|
|longitude|number(double)|false|No description|
|timezone|string|false|No description|
|city_name|string|false|No description|
|country_code2|string|false|No description|
|country_name|string|false|No description|
|region_name|string|false|No description|
|real_region_name|string|false|No description|
|postal_code|string|false|No description|
|region_name|string|false|No description|
|real_region_name|string|false|No description|
|postal_code|string|false|No description|
|city_name|string|false|No description|
|country_code2|string|false|No description|
|country_name|string|false|No description|


<h3 id="tocSeventrequest">EventRequest</h3>


<a id="schemaeventrequest"></a>


```yaml
{
  "time": "2018-01-18T22:17:03Z",
  "uri": "string",
  "route": "string",
  "verb": "string",
  "ipAddress": "string",
  "geoIp": {
    "latitude": 0,
    "longitude": 0,
    "timezone": "string",
    "cityName": "string",
    "countryCode2": "string",
    "countryName": "string",
    "regionName": "string",
    "realRegionName": "string",
    "postalCode": "string",
    "region_name": "string",
    "real_region_name": "string",
    "postal_code": "string",
    "city_name": "string",
    "country_code2": "string",
    "country_name": "string"
  },
  "instanceId": "string",
  "apiVersion": "string",
  "headers": {},
  "userAgent": {
    "os": "string",
    "major": "string",
    "minor": "string",
    "name": "string",
    "osName": "string",
    "device": "string",
    "os_name": "string"
  },
  "body": {},
  "user_agent": {
    "os": "string",
    "major": "string",
    "minor": "string",
    "name": "string",
    "osName": "string",
    "device": "string",
    "os_name": "string"
  },
  "api_version": "string",
  "geo_ip": {
    "latitude": 0,
    "longitude": 0,
    "timezone": "string",
    "cityName": "string",
    "countryCode2": "string",
    "countryName": "string",
    "regionName": "string",
    "realRegionName": "string",
    "postalCode": "string",
    "region_name": "string",
    "real_region_name": "string",
    "postal_code": "string",
    "city_name": "string",
    "country_code2": "string",
    "country_name": "string"
  },
  "ip_address": "string",
  "instance_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|time|string(date-time)|true|No description|
|uri|string|true|No description|
|route|string|true|No description|
|verb|string|true|No description|
|ip_address|string|false|No description|
|geo_ip|[EventGeoIp](#schemaeventgeoip)|false|No description|
|instance_id|string|false|No description|
|api_version|string|false|No description|
|headers|object|true|No description|
|user_agent|[EventUserAgent](#schemaeventuseragent)|false|No description|
|body|object|false|No description|
|user_agent|[EventUserAgent](#schemaeventuseragent)|false|No description|
|api_version|string|false|No description|
|geo_ip|[EventGeoIp](#schemaeventgeoip)|false|No description|
|ip_address|string|true|No description|
|instance_id|string|false|No description|


<h3 id="tocSevent">Event</h3>


<a id="schemaevent"></a>


```yaml
{
  "id": "string",
  "traceId": "string",
  "triageBucketId": "string",
  "request": {
    "time": "2018-01-18T22:17:03Z",
    "uri": "string",
    "route": "string",
    "verb": "string",
    "ipAddress": "string",
    "geoIp": {
      "latitude": 0,
      "longitude": 0,
      "timezone": "string",
      "cityName": "string",
      "countryCode2": "string",
      "countryName": "string",
      "regionName": "string",
      "realRegionName": "string",
      "postalCode": "string",
      "region_name": "string",
      "real_region_name": "string",
      "postal_code": "string",
      "city_name": "string",
      "country_code2": "string",
      "country_name": "string"
    },
    "instanceId": "string",
    "apiVersion": "string",
    "headers": {},
    "userAgent": {
      "os": "string",
      "major": "string",
      "minor": "string",
      "name": "string",
      "osName": "string",
      "device": "string",
      "os_name": "string"
    },
    "body": {},
    "user_agent": {
      "os": "string",
      "major": "string",
      "minor": "string",
      "name": "string",
      "osName": "string",
      "device": "string",
      "os_name": "string"
    },
    "api_version": "string",
    "geo_ip": {
      "latitude": 0,
      "longitude": 0,
      "timezone": "string",
      "cityName": "string",
      "countryCode2": "string",
      "countryName": "string",
      "regionName": "string",
      "realRegionName": "string",
      "postalCode": "string",
      "region_name": "string",
      "real_region_name": "string",
      "postal_code": "string",
      "city_name": "string",
      "country_code2": "string",
      "country_name": "string"
    },
    "ip_address": "string",
    "instance_id": "string"
  },
  "response": {
    "time": "2018-01-18T22:17:03Z",
    "status": 0,
    "ipAddress": "string",
    "geoIp": {
      "latitude": 0,
      "longitude": 0,
      "timezone": "string",
      "cityName": "string",
      "countryCode2": "string",
      "countryName": "string",
      "regionName": "string",
      "realRegionName": "string",
      "postalCode": "string",
      "region_name": "string",
      "real_region_name": "string",
      "postal_code": "string",
      "city_name": "string",
      "country_code2": "string",
      "country_name": "string"
    },
    "instanceId": "string",
    "headers": {},
    "body": {},
    "geo_ip": {
      "latitude": 0,
      "longitude": 0,
      "timezone": "string",
      "cityName": "string",
      "countryCode2": "string",
      "countryName": "string",
      "regionName": "string",
      "realRegionName": "string",
      "postalCode": "string",
      "region_name": "string",
      "real_region_name": "string",
      "postal_code": "string",
      "city_name": "string",
      "country_code2": "string",
      "country_name": "string"
    },
    "ip_address": "string",
    "instance_id": "string"
  },
  "sessionToken": "string",
  "userId": "string",
  "user": {},
  "metadata": {},
  "trace_id": "string",
  "triage_bucket_id": "string",
  "user_id": "string",
  "session_token": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|id|string|true|No description|
|trace_id|string|false|No description|
|triage_bucket_id|string|false|No description|
|request|[EventRequest](#schemaeventrequest)|true|No description|
|response|[EventResponse](#schemaeventresponse)|true|No description|
|session_token|string|false|No description|
|user_id|string|false|No description|
|user|object|false|No description|
|metadata|object|false|No description|
|trace_id|string|false|No description|
|triage_bucket_id|string|false|No description|
|user_id|string|false|No description|
|session_token|string|false|No description|


<h3 id="tocSeventresponse">EventResponse</h3>


<a id="schemaeventresponse"></a>


```yaml
{
  "time": 0,
  "status": 0,
  "ipAddress": "string",
  "headers": null,
  "body": null,
  "transferEncoding": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|time|integer(epoch)|true|No description|
|status|integer(int32)|true|No description|
|ip_address|string|false|No description|
|headers|play.api.libs.json.jsvalue|true|No description|
|body|play.api.libs.json.jsvalue|false|No description|
|transfer_encoding|string|false|No description|


<h3 id="tocSeventrequest">EventRequest</h3>


<a id="schemaeventrequest"></a>


```yaml
{
  "time": 0,
  "uri": "string",
  "verb": "string",
  "ipAddress": "string",
  "headers": null,
  "body": null,
  "transferEncoding": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|time|integer(epoch)|true|No description|
|uri|string|true|No description|
|verb|string|true|No description|
|ip_address|string|true|No description|
|headers|play.api.libs.json.jsvalue|true|No description|
|body|play.api.libs.json.jsvalue|false|No description|
|transfer_encoding|string|false|No description|


<h3 id="tocShistoryeventsdocument">HistoryEventsDocument</h3>


<a id="schemahistoryeventsdocument"></a>


```yaml
{
  "workspaceId": "string",
  "orgId": "string",
  "request": {
    "time": 0,
    "uri": "string",
    "verb": "string",
    "ipAddress": "string",
    "headers": null,
    "body": null,
    "transferEncoding": "string"
  },
  "response": {
    "time": 0,
    "status": 0,
    "ipAddress": "string",
    "headers": null,
    "body": null,
    "transferEncoding": "string"
  },
  "Id": null
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|workspace_id|string|true|No description|
|org_id|string|false|No description|
|request|[EventRequest](#schemaeventrequest)|true|No description|
|response|[EventResponse](#schemaeventresponse)|true|No description|
|id|org.bson.types.objectid|false|No description|


<h3 id="tocSresponsesignature">ResponseSignature</h3>


<a id="schemaresponsesignature"></a>


```yaml
{
  "statusCode": 0,
  "status_code": 0
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|status_code|integer(int32)|false|No description|
|status_code|integer(int32)|true|No description|


<h3 id="tocSsignaturevertex">SignatureVertex</h3>


<a id="schemasignaturevertex"></a>


```yaml
{
  "signatureId": "string",
  "host": "string",
  "route": "string",
  "verb": "string",
  "created": "2018-01-18T22:17:03Z",
  "response": {
    "statusCode": 0,
    "status_code": 0
  },
  "signature_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|signature_id|string|false|No description|
|host|string|false|No description|
|route|string|true|No description|
|verb|string|true|No description|
|created|string(date-time)|true|No description|
|response|[ResponseSignature](#schemaresponsesignature)|false|No description|
|signature_id|string|true|No description|


<h3 id="tocSsignatureedge">SignatureEdge</h3>


<a id="schemasignatureedge"></a>


```yaml
{
  "fromVertex": {
    "signatureId": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "created": "2018-01-18T22:17:03Z",
    "response": {
      "statusCode": 0,
      "status_code": 0
    },
    "signature_id": "string"
  },
  "toVertex": {
    "signatureId": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "created": "2018-01-18T22:17:03Z",
    "response": {
      "statusCode": 0,
      "status_code": 0
    },
    "signature_id": "string"
  },
  "value": 0,
  "timeSpanMs": 0,
  "from_vertex": {
    "signatureId": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "created": "2018-01-18T22:17:03Z",
    "response": {
      "statusCode": 0,
      "status_code": 0
    },
    "signature_id": "string"
  },
  "to_vertex": {
    "signatureId": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "created": "2018-01-18T22:17:03Z",
    "response": {
      "statusCode": 0,
      "status_code": 0
    },
    "signature_id": "string"
  },
  "time_span_ms": 0
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|from_vertex|[SignatureVertex](#schemasignaturevertex)|false|No description|
|to_vertex|[SignatureVertex](#schemasignaturevertex)|false|No description|
|value|number(double)|true|No description|
|time_span_ms|integer(int32)|false|No description|
|from_vertex|[SignatureVertex](#schemasignaturevertex)|true|No description|
|to_vertex|[SignatureVertex](#schemasignaturevertex)|true|No description|
|time_span_ms|integer(int32)|true|No description|


<h3 id="tocSsignaturegraphresponse">SignatureGraphResponse</h3>


<a id="schemasignaturegraphresponse"></a>


```yaml
{
  "triageBucketId": "string",
  "errorSignatureId": "string",
  "edges": [
    {
      "fromVertex": {
        "signatureId": "string",
        "host": "string",
        "route": "string",
        "verb": "string",
        "created": "2018-01-18T22:17:03Z",
        "response": {
          "statusCode": 0,
          "status_code": 0
        },
        "signature_id": "string"
      },
      "toVertex": {
        "signatureId": "string",
        "host": "string",
        "route": "string",
        "verb": "string",
        "created": "2018-01-18T22:17:03Z",
        "response": {
          "statusCode": 0,
          "status_code": 0
        },
        "signature_id": "string"
      },
      "value": 0,
      "timeSpanMs": 0,
      "from_vertex": {
        "signatureId": "string",
        "host": "string",
        "route": "string",
        "verb": "string",
        "created": "2018-01-18T22:17:03Z",
        "response": {
          "statusCode": 0,
          "status_code": 0
        },
        "signature_id": "string"
      },
      "to_vertex": {
        "signatureId": "string",
        "host": "string",
        "route": "string",
        "verb": "string",
        "created": "2018-01-18T22:17:03Z",
        "response": {
          "statusCode": 0,
          "status_code": 0
        },
        "signature_id": "string"
      },
      "time_span_ms": 0
    }
  ],
  "triageBucket": {
    "id": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "apiVersion": "string",
    "status": 0,
    "lastModified": 0,
    "state": 0,
    "eventCount": 0,
    "sessionCount": 0,
    "userCount": 0,
    "session_count": 0,
    "last_modified": "2018-01-18T22:17:03Z",
    "api_version": "string",
    "user_count": 0,
    "event_count": 0
  },
  "triage_bucket_id": "string",
  "error_signature_id": "string",
  "triage_bucket": {
    "id": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "apiVersion": "string",
    "status": 0,
    "lastModified": 0,
    "state": 0,
    "eventCount": 0,
    "sessionCount": 0,
    "userCount": 0,
    "session_count": 0,
    "last_modified": "2018-01-18T22:17:03Z",
    "api_version": "string",
    "user_count": 0,
    "event_count": 0
  }
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|triage_bucket_id|string|false|No description|
|error_signature_id|string|false|No description|
|edges|[[SignatureEdge](#schemasignatureedge)]|false|No description|
|triage_bucket|[TriageBucketResponse](#schematriagebucketresponse)|false|No description|
|triage_bucket_id|string|true|No description|
|error_signature_id|string|true|No description|
|triage_bucket|[TriageBucketResponse](#schematriagebucketresponse)|false|No description|


<h3 id="tocSsigneken">Signeken</h3>


<a id="schemasigneken"></a>


```yaml
{
  "Id": "string",
  "token": "string",
  "_id": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|id|string|false|No description|
|token|string|true|No description|
|_id|string|true|No description|


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


<h3 id="tocSjwtpayload">JWTPayload</h3>


<a id="schemajwtpayload"></a>


```yaml
{
  "jti": "string",
  "iss": "string",
  "sub": "string",
  "oid": "string",
  "aud": "string",
  "exp": 0,
  "iat": 0,
  "ver": "string",
  "org": "string",
  "app": "string",
  "permissions": {}
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|jti|string|false|No description|
|iss|string|false|No description|
|sub|string|false|No description|
|oid|string|false|No description|
|aud|string|false|No description|
|exp|integer(int32)|false|No description|
|iat|integer(int32)|false|No description|
|ver|string|false|No description|
|org|string|false|No description|
|app|string|false|No description|
|permissions|object|false|No description|


<h3 id="tocSkeyvaluepair">KeyValuePair</h3>


<a id="schemakeyvaluepair"></a>


```yaml
{
  "key": "string",
  "val": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|key|string|true|No description|
|val|string|true|No description|


<h3 id="tocSsubmitdata">SubmitData</h3>


<a id="schemasubmitdata"></a>


```yaml
{
  "url": "string",
  "verb": "string",
  "headers": [
    {
      "key": "string",
      "val": "string"
    }
  ],
  "params": [
    {
      "key": "string",
      "val": "string"
    }
  ],
  "body": null
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|url|string|true|No description|
|verb|string|true|No description|
|headers|[[KeyValuePair](#schemakeyvaluepair)]|false|No description|
|params|[[KeyValuePair](#schemakeyvaluepair)]|false|No description|
|body|play.api.libs.json.jsvalue|false|No description|


<h3 id="tocSsequenceitem">SequenceItem</h3>


<a id="schemasequenceitem"></a>


```yaml
{
  "delay": 0,
  "submitData": {
    "url": "string",
    "verb": "string",
    "headers": [
      {
        "key": "string",
        "val": "string"
      }
    ],
    "params": [
      {
        "key": "string",
        "val": "string"
      }
    ],
    "body": null
  }
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|delay|integer(int32)|true|No description|
|submit_data|[SubmitData](#schemasubmitdata)|true|No description|


<h3 id="tocSworkspacedocument">WorkspaceDocument</h3>


<a id="schemaworkspacedocument"></a>


```yaml
{
  "authUserId": "string",
  "orgId": "string",
  "appId": "string",
  "created": 0,
  "sequence": [
    {
      "delay": 0,
      "submitData": {
        "url": "string",
        "verb": "string",
        "headers": [
          {
            "key": "string",
            "val": "string"
          }
        ],
        "params": [
          {
            "key": "string",
            "val": "string"
          }
        ],
        "body": null
      }
    }
  ],
  "Id": null
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|auth_user_id|string|true|No description|
|org_id|string|true|No description|
|app_id|string|true|No description|
|created|integer(epoch)|true|No description|
|sequence|[[SequenceItem](#schemasequenceitem)]|false|No description|
|id|org.bson.types.objectid|false|No description|


<h3 id="tocSdashmetrics">DashMetrics</h3>


<a id="schemadashmetrics"></a>


```yaml
{
  "averageDurationMs": 0,
  "averageDurationMsTs": null,
  "errorCount": 0,
  "errorCountTs": null,
  "errorUserCount": 0,
  "errorUserCountTs": null,
  "userCount": 0,
  "userCountTs": null,
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
|average_duration_ms|integer(int64)|false|No description|
|average_duration_ms_ts|seq[(datetime, long)]|false|No description|
|error_count|integer(int64)|false|No description|
|error_count_ts|seq[(datetime, long)]|false|No description|
|error_user_count|integer(int64)|false|No description|
|error_user_count_ts|seq[(datetime, long)]|false|No description|
|user_count|integer(int64)|false|No description|
|user_count_ts|seq[(datetime, long)]|false|No description|
|average_duration_ms_ts|seq[(datetime, long)]|true|No description|
|error_count|integer(int64)|true|No description|
|error_count_ts|seq[(datetime, long)]|true|No description|
|user_count_ts|seq[(datetime, long)]|true|No description|
|user_count|integer(int64)|true|No description|
|error_user_count|integer(int64)|true|No description|
|average_duration_ms|integer(int64)|true|No description|
|error_user_count_ts|seq[(datetime, long)]|true|No description|


<h3 id="tocStriagebucketresponse">TriageBucketResponse</h3>


<a id="schematriagebucketresponse"></a>


```yaml
{
  "id": "string",
  "host": "string",
  "route": "string",
  "verb": "string",
  "apiVersion": "string",
  "status": 0,
  "lastModified": 0,
  "state": 0,
  "eventCount": 0,
  "sessionCount": 0,
  "userCount": 0,
  "session_count": 0,
  "last_modified": "2018-01-18T22:17:03Z",
  "api_version": "string",
  "user_count": 0,
  "event_count": 0
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|id|string|true|No description|
|host|string|true|No description|
|route|string|true|No description|
|verb|string|true|No description|
|api_version|string|false|No description|
|status|integer(int32)|true|No description|
|last_modified|integer(epoch)|false|No description|
|state|integer(int32)|true|No description|
|event_count|integer(int64)|false|No description|
|session_count|integer(int64)|false|No description|
|user_count|integer(int64)|false|No description|
|session_count|integer(int64)|false|No description|
|last_modified|string(date-time)|true|No description|
|api_version|string|false|No description|
|user_count|integer(int64)|false|No description|
|event_count|integer(int64)|false|No description|


<h3 id="tocStraceresponse">TraceResponse</h3>


<a id="schematraceresponse"></a>


```yaml
{
  "id": "string",
  "created": "2018-01-18T22:17:03Z",
  "sessionToken": "string",
  "userId": "string",
  "triageBucket": {
    "id": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "apiVersion": "string",
    "status": 0,
    "lastModified": 0,
    "state": 0,
    "eventCount": 0,
    "sessionCount": 0,
    "userCount": 0,
    "session_count": 0,
    "last_modified": "2018-01-18T22:17:03Z",
    "api_version": "string",
    "user_count": 0,
    "event_count": 0
  },
  "user_id": "string",
  "triage_bucket": {
    "id": "string",
    "host": "string",
    "route": "string",
    "verb": "string",
    "apiVersion": "string",
    "status": 0,
    "lastModified": 0,
    "state": 0,
    "eventCount": 0,
    "sessionCount": 0,
    "userCount": 0,
    "session_count": 0,
    "last_modified": "2018-01-18T22:17:03Z",
    "api_version": "string",
    "user_count": 0,
    "event_count": 0
  },
  "session_token": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|id|string|true|No description|
|created|string(date-time)|true|No description|
|session_token|string|false|No description|
|user_id|string|false|No description|
|triage_bucket|[TriageBucketResponse](#schematriagebucketresponse)|false|No description|
|user_id|string|false|No description|
|triage_bucket|[TriageBucketResponse](#schematriagebucketresponse)|false|No description|
|session_token|string|false|No description|


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


<h3 id="tocSorganizationresponse">OrganizationResponse</h3>


<a id="schemaorganizationresponse"></a>


```yaml
{
  "id": "string",
  "created": "2018-01-18T22:17:03Z",
  "name": "string",
  "serviceLevel": "string",
  "apps": [
    {
      "id": "string",
      "name": "string"
    }
  ],
  "service_level": "string"
}
```


#### Properties


|Name|Type|Required|Description|
|---|---|---|---|
|id|string|false|No description|
|created|string(date-time)|true|No description|
|name|string|true|No description|
|service_level|string|false|No description|
|apps|[[AppResponse](#schemaappresponse)]|true|No description|
|service_level|string|true|No description|

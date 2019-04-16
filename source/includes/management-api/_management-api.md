<h1 id="Management-API">Management API v1</h1>


> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.


Management API to query data in Moesif. You can use the management API to export data for custom reports or to build custom dashboards.


Base URL:


* <a href="https://api.moesif.com/v1">https://api.moesif.com/v1</a>


<a href="https://www.moesif.com/terms">Terms of service</a>


## Authentication


- Your Management API token must be added to the request _Authorization_ header using the following format:


 `Authorization: Bearer MY_API_TOKEN`


    - Token URL = `https://api.moesif.com/v1/:orgId/oauth/access_tokens`


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
|delete:users|Delete existing users and associated user metadata|


<h2 id="Management-API-Organizations">Organizations</h2>


### Gets Organizations


<a id="opIdgetOrganizations"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/organizations \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/organizations',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/organizations', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/organizations',
  params: {
  }, headers: headers


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


Gets a list of organization for authenticated user/customer


> Example response


```yaml
[
  {
    "name": "string",
    "service_level": "string",
    "id": "string",
    "created": "2018-05-26T05:35:01Z",
    "apps": [
      {
        "id": "string",
        "name": "string"
      }
    ]
  }
]
```


<h4 id="getOrganizations-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getOrganizations-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» name|string|true|No description|
|» service_level|string|true|No description|
|» id|string|false|No description|
|» created|string(date-time)|true|No description|
|» apps|[[AppResponse](#appresponse)]|true|No description|
|»» id|string|false|No description|
|»» name|string|true|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:organizations )
</aside>


<h2 id="Management-API-Replay">Replay</h2>


### Delete a HistoryEvent


<a id="opIddeleteHistoryEvent"></a>


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/replay/{orgId}/history_events/{id}?app_id=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/history_events/{id}?app_id=string',
{
  method: 'DELETE',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.delete('https://api.moesif.com/v1/replay/{orgId}/history_events/{id}', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.delete 'https://api.moesif.com/v1/replay/{orgId}/history_events/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers


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


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers


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


> Example response


<h4 id="getWorkspace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getWorkspace-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>


### Delete a Workspace


<a id="opIddeleteWorkspace"></a>


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string',
{
  method: 'DELETE',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.delete('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.delete 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers


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


### Add a new HistoryEvent


<a id="opIdaddHistoryEvent"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/history_events?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/history_events?app_id=string',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/replay/{orgId}/history_events', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/history_events',
  params: {
  'app_id' => 'string'
}, headers: headers


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
|body|body|_See Below_|false|No description|


> Example response


<h4 id="addHistoryEvent-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|Inline|


<h4 id="addHistoryEvent-responseschema">Response Schema</h4>


Status Code **201**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:history_events )
</aside>


### Create New Workspace


<a id="opIdcreateWorkspace"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/replay/{orgId}/workspaces', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/workspaces',
  params: {
  'app_id' => 'string'
}, headers: headers


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


> Example response


<h4 id="createWorkspace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|Inline|


<h4 id="createWorkspace-responseschema">Response Schema</h4>


Status Code **201**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:workspaces )
</aside>


### Get Workspaces


<a id="opIdgetWorkspaces"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string?take=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces', params={
  'app_id': 'string',  'take': '0'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces',
  params: {
  'app_id' => 'string',
'take' => 'integer(int32)'
}, headers: headers


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


> Example response


```yaml
[]
```


<h4 id="getWorkspaces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getWorkspaces-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>


### Get HistoryEvents


<a id="opIdgetHistoryEvents"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events?app_id=string?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events?app_id=string?take=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events', params={
  'app_id': 'string',  'take': '0'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/history_events',
  params: {
  'app_id' => 'string',
'take' => 'integer(int32)'
}, headers: headers


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


> Example response


```yaml
[]
```


<h4 id="getHistoryEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getHistoryEvents-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:history_events )
</aside>


### Update Workspace Sequence


<a id="opIdupdateWorkspaceSequence"></a>


```shell
# You can also use wget
curl -X PUT https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence?app_id=string',
{
  method: 'PUT',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.put('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.put 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/sequence',
  params: {
  'app_id' => 'string'
}, headers: headers


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
|body|body|_See Below_|false|No description|


> Example response


```yaml
[]
```


<h4 id="updateWorkspaceSequence-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="updateWorkspaceSequence-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>


<h2 id="Management-API-Traces">Traces</h2>


### Get Traces


<a id="opIdgetTraces"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/traces \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/traces',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/traces', params={
  'session_token': [
  null
],  'triage_bucket.state': [
  null
],  'triage_bucket.route': [
  null
],  'triage_bucket.verb': [
  null
],  'triage_bucket.status': [
  null
],  'triage_bucket.api_version': [
  null
],  'created': [
  null
]
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/traces',
  params: {
  'session_token' => 'array[string]',
'triage_bucket.state' => 'array[int]',
'triage_bucket.route' => 'array[string]',
'triage_bucket.verb' => 'array[string]',
'triage_bucket.status' => 'array[int]',
'triage_bucket.api_version' => 'array[string]',
'created' => 'array[datetime]'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/traces");
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
|session_token|query|array[fifilterparamsstring]|true|No description|
|triage_bucket.state|query|array[fifilterparamsint]|true|No description|
|triage_bucket.route|query|array[fifilterparamsstring]|true|No description|
|triage_bucket.verb|query|array[fifilterparamsstring]|true|No description|
|triage_bucket.status|query|array[fifilterparamsint]|true|No description|
|triage_bucket.api_version|query|array[fifilterparamsstring]|true|No description|
|created|query|array[fifilterparamsdatetime]|true|No description|
|sort|query|string|false|No description|


> Example response


```yaml
[
  {
    "user_id": "string",
    "triage_bucket": {
      "state": 0,
      "host": "string",
      "session_count": 0,
      "last_modified": "2018-05-26T05:35:01Z",
      "api_version": "string",
      "id": "string",
      "user_count": 0,
      "status": 0,
      "jsonrpc": {
        "method": "string",
        "code": 0
      },
      "verb": "string",
      "metadata": {},
      "event_count": 0,
      "route": "string",
      "graphql": {
        "operation_name": "string",
        "definitions": [
          {
            "operation_type": "string",
            "name": "string"
          }
        ]
      }
    },
    "id": "string",
    "session_token": "string",
    "created": "2018-05-26T05:35:01Z"
  }
]
```


<h4 id="getTraces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getTraces-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» user_id|string|false|No description|
|» triage_bucket|object|false|No description|
|»» state|integer(int32)|true|No description|
|»» host|string|true|No description|
|»» session_count|integer(int64)|false|No description|
|»» last_modified|string(date-time)|true|No description|
|»» api_version|string|false|No description|
|»» id|string|true|No description|
|»» user_count|integer(int64)|false|No description|
|»» status|integer(int32)|true|No description|
|»» jsonrpc|object|false|No description|
|»»» method|string|false|No description|
|»»» code|integer(int32)|false|No description|
|»» verb|string|true|No description|
|»» metadata|object|false|No description|
|»» event_count|integer(int64)|false|No description|
|»» route|string|true|No description|
|»» graphql|object|false|No description|
|»»» operation_name|string|false|No description|
|»»» definitions|[[SignatureGraphQlDefinition](#signaturegraphqldefinition)]|true|No description|
|»»»» operation_type|string|false|No description|
|»»»» name|string|false|No description|
|»»» id|string|true|No description|
|»»» session_token|string|false|No description|
|»»» created|string(date-time)|true|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


### Get a trace


<a id="opIdgetTrace"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/traces/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/traces/{id}',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/traces/{id}', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/traces/{id}',
  params: {
  }, headers: headers


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


> Example response


```yaml
{
  "user_id": "string",
  "triage_bucket": {
    "state": 0,
    "host": "string",
    "session_count": 0,
    "last_modified": "2018-05-26T05:35:01Z",
    "api_version": "string",
    "id": "string",
    "user_count": 0,
    "status": 0,
    "jsonrpc": {
      "method": "string",
      "code": 0
    },
    "verb": "string",
    "metadata": {},
    "event_count": 0,
    "route": "string",
    "graphql": {
      "operation_name": "string",
      "definitions": [
        {
          "operation_type": "string",
          "name": "string"
        }
      ]
    }
  },
  "id": "string",
  "session_token": "string",
  "created": "2018-05-26T05:35:01Z"
}
```


<h4 id="getTrace-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[TraceResponse](#traceresponse)|


<h4 id="getTrace-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» user_id|string|false|No description|
|» triage_bucket|object|false|No description|
|»» state|integer(int32)|true|No description|
|»» host|string|true|No description|
|»» session_count|integer(int64)|false|No description|
|»» last_modified|string(date-time)|true|No description|
|»» api_version|string|false|No description|
|»» id|string|true|No description|
|»» user_count|integer(int64)|false|No description|
|»» status|integer(int32)|true|No description|
|»» jsonrpc|object|false|No description|
|»»» method|string|false|No description|
|»»» code|integer(int32)|false|No description|
|»» verb|string|true|No description|
|»» metadata|object|false|No description|
|»» event_count|integer(int64)|false|No description|
|»» route|string|true|No description|
|»» graphql|object|false|No description|
|»»» operation_name|string|false|No description|
|»»» definitions|[[SignatureGraphQlDefinition](#signaturegraphqldefinition)]|true|No description|
|»»»» operation_type|string|false|No description|
|»»»» name|string|false|No description|
|»»» id|string|true|No description|
|»»» session_token|string|false|No description|
|»»» created|string(date-time)|true|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


### Get Events


<a id="opIdgetTraceEvents"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/traces/{id}/events?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/traces/{id}/events?take=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/traces/{id}/events', params={
  'take': '0'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/traces/{id}/events',
  params: {
  'take' => 'integer(int32)'
}, headers: headers


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


> Example response


```yaml
[
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
      "time": "2018-05-26T05:35:01Z",
      "headers": {},
      "instance_id": "string",
      "graphql": {
        "operation_name": "string",
        "definitions": [
          {
            "name": "string",
            "directives": [
              {}
            ],
            "operation_type": "string",
            "selections": [
              {}
            ],
            "variables": [
              {}
            ]
          }
        ],
        "variables": {}
      }
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
      "time": "2018-05-26T05:35:01Z",
      "headers": {},
      "instance_id": "string"
    },
    "id": "string",
    "session_token": "string",
    "jsonrpc": {
      "request": {
        "jsonrpc": "string",
        "id": "string",
        "method": "string",
        "params": {}
      },
      "response": {
        "jsonrpc": "string",
        "id": "string",
        "error": {}
      }
    },
    "metadata": {},
    "user": {}
  }
]
```


<h4 id="getTraceEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getTraceEvents-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» request|object|true|No description|
|»» body|object|false|No description|
|»» uri|string|true|No description|
|»» user_agent|object|false|No description|
|»»» name|string|false|No description|
|»»» os|string|false|No description|
|»»» os_name|string|false|No description|
|»»» major|string|false|No description|
|»»» device|string|false|No description|
|»»» minor|string|false|No description|
|»» api_version|string|false|No description|
|»» geo_ip|object|false|No description|
|»»» region_name|string|false|No description|
|»»» latitude|number(double)|false|No description|
|»»» timezone|string|false|No description|
|»»» longitude|number(double)|false|No description|
|»»» real_region_name|string|false|No description|
|»»» postal_code|string|false|No description|
|»»» city_name|string|false|No description|
|»»» country_code2|string|false|No description|
|»»» country_name|string|false|No description|
|»» ip_address|string|true|No description|
|»» verb|string|true|No description|
|»» route|string|true|No description|
|»» time|string(date-time)|true|No description|
|»» headers|object|true|No description|
|»» instance_id|string|false|No description|
|»» graphql|object|false|No description|
|»»» operation_name|string|false|No description|
|»»» definitions|[[EventGraphQlDefinition](#eventgraphqldefinition)]|true|No description|
|»»»» name|string|false|No description|
|»»»» directives|[object]|false|No description|
|»»»» operation_type|string|false|No description|
|»»»» selections|[object]|false|No description|
|»»»» variables|[object]|false|No description|
|»»» variables|object|false|No description|
|»» trace_id|string|false|No description|
|»» triage_bucket_id|string|false|No description|
|»» user_id|string|false|No description|
|»» response|object|true|No description|
|»»» body|object|false|No description|
|»»» geo_ip|object|false|No description|
|»»» ip_address|string|false|No description|
|»»» status|integer(int32)|true|No description|
|»»» time|string(date-time)|true|No description|
|»»» headers|object|true|No description|
|»»» instance_id|string|false|No description|
|»» id|string|true|No description|
|»» session_token|string|false|No description|
|»» jsonrpc|object|false|No description|
|»»» request|object|true|No description|
|»»»» jsonrpc|string|true|No description|
|»»»» id|string|false|No description|
|»»»» method|string|false|No description|
|»»»» params|object|false|No description|
|»»» response|object|false|No description|
|»»»» jsonrpc|string|true|No description|
|»»»» id|string|false|No description|
|»»»» error|object|false|No description|
|»»» metadata|object|false|No description|
|»»» user|object|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:traces )
</aside>


<h2 id="Management-API-Metrics">Metrics</h2>


### Get Dashboard Metrics


<a id="opIdgetDashMetrics"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/dash/metrics?from=2018-05-26T05:35:01Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/dash/metrics?from=2018-05-26T05:35:01Z',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/dash/metrics', params={
  'from': '2018-05-26T05:35:01Z'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/dash/metrics',
  params: {
  'from' => 'string(date-time)'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/dash/metrics?from=2018-05-26T05:35:01Z");
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


> Example response


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


<h4 id="getDashMetrics-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[DashMetrics](#dashmetrics)|


<h4 id="getDashMetrics-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» average_duration_ms_ts|seq[(datetime, long)]|true|No description|
|» error_count|integer(int64)|true|No description|
|» error_count_ts|seq[(datetime, long)]|true|No description|
|» user_count_ts|seq[(datetime, long)]|true|No description|
|» user_count|integer(int64)|true|No description|
|» error_user_count|integer(int64)|true|No description|
|» average_duration_ms|integer(int64)|true|No description|
|» error_user_count_ts|seq[(datetime, long)]|true|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:metrics )
</aside>


<h2 id="Management-API-OAuth">OAuth</h2>


### Get Token Info


<a id="opIdgetTokenInfo"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/~/oauth/tokeninfo', params={
  'scope': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/~/oauth/tokeninfo',
  params: {
  'scope' => 'string'
}, headers: headers


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


> Example response


<h4 id="getTokenInfo-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getTokenInfo-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:access_tokens )
</aside>


### Get a new Access Token


<a id="opIdgetAccessToken"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string?scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string?scope=string',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/oauth/access_tokens', params={
  'target': 'string',  'scope': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/oauth/access_tokens',
  params: {
  'target' => 'string',
'scope' => 'string'
}, headers: headers


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


> Example response


```yaml
{
  "app_token": "string"
}
```


<h4 id="getAccessToken-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AccessToken](#accesstoken)|


<h4 id="getAccessToken-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» app_token|string|true|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:access_tokens )
</aside>


<h2 id="Management-API-URL-Encoder">URL Encoder</h2>


### Encodes a URL


<a id="opIdencodeUrl"></a>


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


Encodes the URL to be used with Moesif Collector/Proxy Server


<h4 id="encodeUrl-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Url](#url)|false|No description|


> Example request 


<h4 id="encodeUrl-requestschema">Request Schema</h4>


```yaml
{
  "url": "string"
}
```


|Name|Type|Required|Description|
|---|---|---|---|
|» url|string|true|No description|


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


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph', params={
  'depth': '0',  'error_event.event_id': [
  null
],  'error_event.duration_ms': [
  null
],  'error_event.request.time': [
  null
],  'error_event.request.verb': [
  null
],  'error_event.request.ip_address': [
  null
],  'error_event.request.route': [
  null
],  'error_event.response.ip_address': [
  null
],  'error_event.response.status': [
  null
],  'error_event.session_token': [
  null
],  'error_event.user_id': [
  null
]
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph',
  params: {
  'depth' => 'integer(int32)',
'error_event.event_id' => 'array[string]',
'error_event.duration_ms' => 'array[int]',
'error_event.request.time' => 'array[datetime]',
'error_event.request.verb' => 'array[string]',
'error_event.request.ip_address' => 'array[string]',
'error_event.request.route' => 'array[string]',
'error_event.response.ip_address' => 'array[string]',
'error_event.response.status' => 'array[int]',
'error_event.session_token' => 'array[string]',
'error_event.user_id' => 'array[string]'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/triage_buckets/{id}/graph?depth=0");
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
|error_event.event_id|query|array[fifilterparamsstring]|true|No description|
|error_event.duration_ms|query|array[fifilterparamsint]|true|No description|
|error_event.request.time|query|array[fifilterparamsdatetime]|true|No description|
|error_event.request.verb|query|array[fifilterparamsstring]|true|No description|
|error_event.request.ip_address|query|array[fifilterparamsstring]|true|No description|
|error_event.request.route|query|array[fifilterparamsstring]|true|No description|
|error_event.response.ip_address|query|array[fifilterparamsstring]|true|No description|
|error_event.response.status|query|array[fifilterparamsint]|true|No description|
|error_event.session_token|query|array[fifilterparamsstring]|true|No description|
|error_event.user_id|query|array[fifilterparamsstring]|true|No description|


> Example response


```yaml
{
  "triage_bucket_id": "string",
  "error_signature_id": "string",
  "edges": [
    {
      "from_vertex": {
        "signature_id": "string",
        "host": "string",
        "session_count": 0,
        "response": {
          "status_code": 0
        },
        "user_count": 0,
        "jsonrpc": {
          "method": "string",
          "code": 0
        },
        "verb": "string",
        "event_count": 0,
        "route": "string",
        "created": "2018-05-26T05:35:01Z",
        "graphql": {
          "operation_name": "string",
          "definitions": [
            {
              "operation_type": "string",
              "name": "string"
            }
          ]
        }
      },
      "to_vertex": {
        "signature_id": "string",
        "host": "string",
        "session_count": 0,
        "response": {
          "status_code": 0
        },
        "user_count": 0,
        "jsonrpc": {
          "method": "string",
          "code": 0
        },
        "verb": "string",
        "event_count": 0,
        "route": "string",
        "created": "2018-05-26T05:35:01Z",
        "graphql": {
          "operation_name": "string",
          "definitions": [
            {
              "operation_type": "string",
              "name": "string"
            }
          ]
        }
      },
      "value": 0
    }
  ],
  "triage_bucket": {
    "state": 0,
    "host": "string",
    "session_count": 0,
    "last_modified": "2018-05-26T05:35:01Z",
    "api_version": "string",
    "id": "string",
    "user_count": 0,
    "status": 0,
    "jsonrpc": {
      "method": "string",
      "code": 0
    },
    "verb": "string",
    "metadata": {},
    "event_count": 0,
    "route": "string",
    "graphql": {
      "operation_name": "string",
      "definitions": [
        {
          "operation_type": "string",
          "name": "string"
        }
      ]
    }
  }
}
```


<h4 id="getSignatureGraph-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[SignatureGraphResponse](#signaturegraphresponse)|


<h4 id="getSignatureGraph-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» triage_bucket_id|string|true|No description|
|» error_signature_id|string|true|No description|
|» edges|[[SignatureEdge](#signatureedge)]|false|No description|
|»» from_vertex|object|true|No description|
|»»» signature_id|string|true|No description|
|»»» host|string|false|No description|
|»»» session_count|integer(int64)|false|No description|
|»»» response|object|false|No description|
|»»»» status_code|integer(int32)|true|No description|
|»»» user_count|integer(int64)|false|No description|
|»»» jsonrpc|object|false|No description|
|»»»» method|string|false|No description|
|»»»» code|integer(int32)|false|No description|
|»»» verb|string|true|No description|
|»»» event_count|integer(int64)|false|No description|
|»»» route|string|true|No description|
|»»» created|string(date-time)|true|No description|
|»»» graphql|object|false|No description|
|»»»» operation_name|string|false|No description|
|»»»» definitions|[[SignatureGraphQlDefinition](#signaturegraphqldefinition)]|true|No description|
|»»»»» operation_type|string|false|No description|
|»»»»» name|string|false|No description|
|»»»» to_vertex|object|true|No description|
|»»»» value|number(double)|true|No description|
|»»» triage_bucket|object|false|No description|
|»»»» state|integer(int32)|true|No description|
|»»»» host|string|true|No description|
|»»»» session_count|integer(int64)|false|No description|
|»»»» last_modified|string(date-time)|true|No description|
|»»»» api_version|string|false|No description|
|»»»» id|string|true|No description|
|»»»» user_count|integer(int64)|false|No description|
|»»»» status|integer(int32)|true|No description|
|»»»» jsonrpc|object|false|No description|
|»»»» verb|string|true|No description|
|»»»» metadata|object|false|No description|
|»»»» event_count|integer(int64)|false|No description|
|»»»» route|string|true|No description|
|»»»» graphql|object|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:triage_buckets )
</aside>


### Gets Triage Buckets


<a id="opIdgetTriageBuckets"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/triage_buckets?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets?take=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/triage_buckets', params={
  'take': '0',  'state': [
  null
],  'last_modified': [
  null
],  'route': [
  null
],  'verb': [
  null
],  'status': [
  null
],  'api_version': [
  null
]
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/triage_buckets',
  params: {
  'take' => 'integer(int32)',
'state' => 'array[int]',
'last_modified' => 'array[datetime]',
'route' => 'array[string]',
'verb' => 'array[string]',
'status' => 'array[int]',
'api_version' => 'array[string]'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/triage_buckets?take=0");
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
|state|query|array[fifilterparamsint]|true|No description|
|last_modified|query|array[fifilterparamsdatetime]|true|No description|
|route|query|array[fifilterparamsstring]|true|No description|
|verb|query|array[fifilterparamsstring]|true|No description|
|status|query|array[fifilterparamsint]|true|No description|
|api_version|query|array[fifilterparamsstring]|true|No description|
|sort|query|string|false|No description|


> Example response


```yaml
[
  {
    "state": 0,
    "host": "string",
    "session_count": 0,
    "last_modified": "2018-05-26T05:35:01Z",
    "api_version": "string",
    "id": "string",
    "user_count": 0,
    "status": 0,
    "jsonrpc": {
      "method": "string",
      "code": 0
    },
    "verb": "string",
    "metadata": {},
    "event_count": 0,
    "route": "string",
    "graphql": {
      "operation_name": "string",
      "definitions": [
        {
          "operation_type": "string",
          "name": "string"
        }
      ]
    }
  }
]
```


<h4 id="getTriageBuckets-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getTriageBuckets-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» state|integer(int32)|true|No description|
|» host|string|true|No description|
|» session_count|integer(int64)|false|No description|
|» last_modified|string(date-time)|true|No description|
|» api_version|string|false|No description|
|» id|string|true|No description|
|» user_count|integer(int64)|false|No description|
|» status|integer(int32)|true|No description|
|» jsonrpc|object|false|No description|
|»» method|string|false|No description|
|»» code|integer(int32)|false|No description|
|» verb|string|true|No description|
|» metadata|object|false|No description|
|» event_count|integer(int64)|false|No description|
|» route|string|true|No description|
|» graphql|object|false|No description|
|»» operation_name|string|false|No description|
|»» definitions|[[SignatureGraphQlDefinition](#signaturegraphqldefinition)]|true|No description|
|»»» operation_type|string|false|No description|
|»»» name|string|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:triage_buckets )
</aside>


### Updates a Triage Bucket


<a id="opIdupdateTriageBucket"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/triage_buckets/{triageBucketId}',
  params: {
  }, headers: headers


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
|body|body|[TriageBucketUpdate](#triagebucketupdate)|false|No description|


> Example response


```yaml
{
  "state": 0,
  "host": "string",
  "session_count": 0,
  "last_modified": "2018-05-26T05:35:01Z",
  "api_version": "string",
  "id": "string",
  "user_count": 0,
  "status": 0,
  "jsonrpc": {
    "method": "string",
    "code": 0
  },
  "verb": "string",
  "metadata": {},
  "event_count": 0,
  "route": "string",
  "graphql": {
    "operation_name": "string",
    "definitions": [
      {
        "operation_type": "string",
        "name": "string"
      }
    ]
  }
}
```


<h4 id="updateTriageBucket-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[TriageBucketResponse](#triagebucketresponse)|


<h4 id="updateTriageBucket-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» state|integer(int32)|true|No description|
|» host|string|true|No description|
|» session_count|integer(int64)|false|No description|
|» last_modified|string(date-time)|true|No description|
|» api_version|string|false|No description|
|» id|string|true|No description|
|» user_count|integer(int64)|false|No description|
|» status|integer(int32)|true|No description|
|» jsonrpc|object|false|No description|
|»» method|string|false|No description|
|»» code|integer(int32)|false|No description|
|» verb|string|true|No description|
|» metadata|object|false|No description|
|» event_count|integer(int64)|false|No description|
|» route|string|true|No description|
|» graphql|object|false|No description|
|»» operation_name|string|false|No description|
|»» definitions|[[SignatureGraphQlDefinition](#signaturegraphqldefinition)]|true|No description|
|»»» operation_type|string|false|No description|
|»»» name|string|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:triage_buckets )
</aside>


<h2 id="Management-API-Signatures">Signatures</h2>


### Get Events


<a id="opIdgetSignatureEvents"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/signatures/{id}/events?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/signatures/{id}/events?take=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/signatures/{id}/events', params={
  'take': '0',  'event_id': [
  null
],  'duration_ms': [
  null
],  'request.time': [
  null
],  'request.verb': [
  null
],  'request.ip_address': [
  null
],  'request.route': [
  null
],  'response.ip_address': [
  null
],  'response.status': [
  null
],  'session_token': [
  null
],  'user_id': [
  null
]
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/signatures/{id}/events',
  params: {
  'take' => 'integer(int32)',
'event_id' => 'array[string]',
'duration_ms' => 'array[int]',
'request.time' => 'array[datetime]',
'request.verb' => 'array[string]',
'request.ip_address' => 'array[string]',
'request.route' => 'array[string]',
'response.ip_address' => 'array[string]',
'response.status' => 'array[int]',
'session_token' => 'array[string]',
'user_id' => 'array[string]'
}, headers: headers


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
|event_id|query|array[fifilterparamsstring]|true|No description|
|duration_ms|query|array[fifilterparamsint]|true|No description|
|request.time|query|array[fifilterparamsdatetime]|true|No description|
|request.verb|query|array[fifilterparamsstring]|true|No description|
|request.ip_address|query|array[fifilterparamsstring]|true|No description|
|request.route|query|array[fifilterparamsstring]|true|No description|
|response.ip_address|query|array[fifilterparamsstring]|true|No description|
|response.status|query|array[fifilterparamsint]|true|No description|
|session_token|query|array[fifilterparamsstring]|true|No description|
|user_id|query|array[fifilterparamsstring]|true|No description|


> Example response


```yaml
[
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
      "time": "2018-05-26T05:35:01Z",
      "headers": {},
      "instance_id": "string",
      "graphql": {
        "operation_name": "string",
        "definitions": [
          {
            "name": "string",
            "directives": [
              {}
            ],
            "operation_type": "string",
            "selections": [
              {}
            ],
            "variables": [
              {}
            ]
          }
        ],
        "variables": {}
      }
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
      "time": "2018-05-26T05:35:01Z",
      "headers": {},
      "instance_id": "string"
    },
    "id": "string",
    "session_token": "string",
    "jsonrpc": {
      "request": {
        "jsonrpc": "string",
        "id": "string",
        "method": "string",
        "params": {}
      },
      "response": {
        "jsonrpc": "string",
        "id": "string",
        "error": {}
      }
    },
    "metadata": {},
    "user": {}
  }
]
```


<h4 id="getSignatureEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getSignatureEvents-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» request|object|true|No description|
|»» body|object|false|No description|
|»» uri|string|true|No description|
|»» user_agent|object|false|No description|
|»»» name|string|false|No description|
|»»» os|string|false|No description|
|»»» os_name|string|false|No description|
|»»» major|string|false|No description|
|»»» device|string|false|No description|
|»»» minor|string|false|No description|
|»» api_version|string|false|No description|
|»» geo_ip|object|false|No description|
|»»» region_name|string|false|No description|
|»»» latitude|number(double)|false|No description|
|»»» timezone|string|false|No description|
|»»» longitude|number(double)|false|No description|
|»»» real_region_name|string|false|No description|
|»»» postal_code|string|false|No description|
|»»» city_name|string|false|No description|
|»»» country_code2|string|false|No description|
|»»» country_name|string|false|No description|
|»» ip_address|string|true|No description|
|»» verb|string|true|No description|
|»» route|string|true|No description|
|»» time|string(date-time)|true|No description|
|»» headers|object|true|No description|
|»» instance_id|string|false|No description|
|»» graphql|object|false|No description|
|»»» operation_name|string|false|No description|
|»»» definitions|[[EventGraphQlDefinition](#eventgraphqldefinition)]|true|No description|
|»»»» name|string|false|No description|
|»»»» directives|[object]|false|No description|
|»»»» operation_type|string|false|No description|
|»»»» selections|[object]|false|No description|
|»»»» variables|[object]|false|No description|
|»»» variables|object|false|No description|
|»» trace_id|string|false|No description|
|»» triage_bucket_id|string|false|No description|
|»» user_id|string|false|No description|
|»» response|object|true|No description|
|»»» body|object|false|No description|
|»»» geo_ip|object|false|No description|
|»»» ip_address|string|false|No description|
|»»» status|integer(int32)|true|No description|
|»»» time|string(date-time)|true|No description|
|»»» headers|object|true|No description|
|»»» instance_id|string|false|No description|
|»» id|string|true|No description|
|»» session_token|string|false|No description|
|»» jsonrpc|object|false|No description|
|»»» request|object|true|No description|
|»»»» jsonrpc|string|true|No description|
|»»»» id|string|false|No description|
|»»»» method|string|false|No description|
|»»»» params|object|false|No description|
|»»» response|object|false|No description|
|»»»» jsonrpc|string|true|No description|
|»»»» id|string|false|No description|
|»»»» error|object|false|No description|
|»»» metadata|object|false|No description|
|»»» user|object|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:signatures )
</aside>


### Get Aggregations


<a id="opIdgetSignatureAggs"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/signatures/{id}/aggs \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/signatures/{id}/aggs',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/{orgId}/signatures/{id}/aggs', params={
  'event_id': [
  null
],  'duration_ms': [
  null
],  'request.time': [
  null
],  'request.verb': [
  null
],  'request.ip_address': [
  null
],  'request.route': [
  null
],  'response.ip_address': [
  null
],  'response.status': [
  null
],  'session_token': [
  null
],  'user_id': [
  null
]
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/{orgId}/signatures/{id}/aggs',
  params: {
  'event_id' => 'array[string]',
'duration_ms' => 'array[int]',
'request.time' => 'array[datetime]',
'request.verb' => 'array[string]',
'request.ip_address' => 'array[string]',
'request.route' => 'array[string]',
'response.ip_address' => 'array[string]',
'response.status' => 'array[int]',
'session_token' => 'array[string]',
'user_id' => 'array[string]'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/signatures/{id}/aggs");
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


`POST /{orgId}/signatures/{id}/aggs`


Get an aggregation of a fields for a particular signature


<h4 id="getSignatureAggs-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|after_id|query|string|false|No description|
|before_id|query|string|false|No description|
|event_id|query|array[fifilterparamsstring]|true|No description|
|duration_ms|query|array[fifilterparamsint]|true|No description|
|request.time|query|array[fifilterparamsdatetime]|true|No description|
|request.verb|query|array[fifilterparamsstring]|true|No description|
|request.ip_address|query|array[fifilterparamsstring]|true|No description|
|request.route|query|array[fifilterparamsstring]|true|No description|
|response.ip_address|query|array[fifilterparamsstring]|true|No description|
|response.status|query|array[fifilterparamsint]|true|No description|
|session_token|query|array[fifilterparamsstring]|true|No description|
|user_id|query|array[fifilterparamsstring]|true|No description|


> Example response


```yaml
[
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
      "time": "2018-05-26T05:35:01Z",
      "headers": {},
      "instance_id": "string",
      "graphql": {
        "operation_name": "string",
        "definitions": [
          {
            "name": "string",
            "directives": [
              {}
            ],
            "operation_type": "string",
            "selections": [
              {}
            ],
            "variables": [
              {}
            ]
          }
        ],
        "variables": {}
      }
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
      "time": "2018-05-26T05:35:01Z",
      "headers": {},
      "instance_id": "string"
    },
    "id": "string",
    "session_token": "string",
    "jsonrpc": {
      "request": {
        "jsonrpc": "string",
        "id": "string",
        "method": "string",
        "params": {}
      },
      "response": {
        "jsonrpc": "string",
        "id": "string",
        "error": {}
      }
    },
    "metadata": {},
    "user": {}
  }
]
```


<h4 id="getSignatureAggs-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getSignatureAggs-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» request|object|true|No description|
|»» body|object|false|No description|
|»» uri|string|true|No description|
|»» user_agent|object|false|No description|
|»»» name|string|false|No description|
|»»» os|string|false|No description|
|»»» os_name|string|false|No description|
|»»» major|string|false|No description|
|»»» device|string|false|No description|
|»»» minor|string|false|No description|
|»» api_version|string|false|No description|
|»» geo_ip|object|false|No description|
|»»» region_name|string|false|No description|
|»»» latitude|number(double)|false|No description|
|»»» timezone|string|false|No description|
|»»» longitude|number(double)|false|No description|
|»»» real_region_name|string|false|No description|
|»»» postal_code|string|false|No description|
|»»» city_name|string|false|No description|
|»»» country_code2|string|false|No description|
|»»» country_name|string|false|No description|
|»» ip_address|string|true|No description|
|»» verb|string|true|No description|
|»» route|string|true|No description|
|»» time|string(date-time)|true|No description|
|»» headers|object|true|No description|
|»» instance_id|string|false|No description|
|»» graphql|object|false|No description|
|»»» operation_name|string|false|No description|
|»»» definitions|[[EventGraphQlDefinition](#eventgraphqldefinition)]|true|No description|
|»»»» name|string|false|No description|
|»»»» directives|[object]|false|No description|
|»»»» operation_type|string|false|No description|
|»»»» selections|[object]|false|No description|
|»»»» variables|[object]|false|No description|
|»»» variables|object|false|No description|
|»» trace_id|string|false|No description|
|»» triage_bucket_id|string|false|No description|
|»» user_id|string|false|No description|
|»» response|object|true|No description|
|»»» body|object|false|No description|
|»»» geo_ip|object|false|No description|
|»»» ip_address|string|false|No description|
|»»» status|integer(int32)|true|No description|
|»»» time|string(date-time)|true|No description|
|»»» headers|object|true|No description|
|»»» instance_id|string|false|No description|
|»» id|string|true|No description|
|»» session_token|string|false|No description|
|»» jsonrpc|object|false|No description|
|»»» request|object|true|No description|
|»»»» jsonrpc|string|true|No description|
|»»»» id|string|false|No description|
|»»»» method|string|false|No description|
|»»»» params|object|false|No description|
|»»» response|object|false|No description|
|»»»» jsonrpc|string|true|No description|
|»»»» id|string|false|No description|
|»»»» error|object|false|No description|
|»»» metadata|object|false|No description|
|»»» user|object|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:signatures )
</aside>


### Get Traces


<a id="opIdgetSignatureTraces"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/signatures/{id}/traces?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/{orgId}/signatures/{id}/traces?take=0',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/{orgId}/signatures/{id}/traces', params={
  'take': '0'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/{orgId}/signatures/{id}/traces',
  params: {
  'take' => 'integer(int32)'
}, headers: headers


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


> Example response


```yaml
[
  {
    "user_id": "string",
    "triage_bucket": {
      "state": 0,
      "host": "string",
      "session_count": 0,
      "last_modified": "2018-05-26T05:35:01Z",
      "api_version": "string",
      "id": "string",
      "user_count": 0,
      "status": 0,
      "jsonrpc": {
        "method": "string",
        "code": 0
      },
      "verb": "string",
      "metadata": {},
      "event_count": 0,
      "route": "string",
      "graphql": {
        "operation_name": "string",
        "definitions": [
          {
            "operation_type": "string",
            "name": "string"
          }
        ]
      }
    },
    "id": "string",
    "session_token": "string",
    "created": "2018-05-26T05:35:01Z"
  }
]
```


<h4 id="getSignatureTraces-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getSignatureTraces-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» user_id|string|false|No description|
|» triage_bucket|object|false|No description|
|»» state|integer(int32)|true|No description|
|»» host|string|true|No description|
|»» session_count|integer(int64)|false|No description|
|»» last_modified|string(date-time)|true|No description|
|»» api_version|string|false|No description|
|»» id|string|true|No description|
|»» user_count|integer(int64)|false|No description|
|»» status|integer(int32)|true|No description|
|»» jsonrpc|object|false|No description|
|»»» method|string|false|No description|
|»»» code|integer(int32)|false|No description|
|»» verb|string|true|No description|
|»» metadata|object|false|No description|
|»» event_count|integer(int64)|false|No description|
|»» route|string|true|No description|
|»» graphql|object|false|No description|
|»»» operation_name|string|false|No description|
|»»» definitions|[[SignatureGraphQlDefinition](#signaturegraphqldefinition)]|true|No description|
|»»»» operation_type|string|false|No description|
|»»»» name|string|false|No description|
|»»» id|string|true|No description|
|»»» session_token|string|false|No description|
|»»» created|string(date-time)|true|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:signatures )
</aside>


<h2 id="Management-API-Health">Health</h2>


### Health Probe


<a id="opIdprobe"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/health/probe \
  -H 'Accept: application/json'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json'


};


fetch('https://api.moesif.com/v1/health/probe',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json'
}


r = requests.get('https://api.moesif.com/v1/health/probe', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json'
}


result = RestClient.get 'https://api.moesif.com/v1/health/probe',
  params: {
  }, headers: headers


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


> Example response


```yaml
{
  "status": true,
  "region": "string"
}
```


<h4 id="probe-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[Status](#status)|


<h4 id="probe-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» status|boolean|true|No description|
|» region|string|true|No description|


<aside class="success">
This operation does not require authentication
</aside>


<h2 id="Management-API-Issue-Tracking">Issue Tracking</h2>


### Get a Jira Accunt


<a id="opIdgetJiraAccount"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account',
  params: {
  'app_id' => 'string'
}, headers: headers


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


> Example response


<h4 id="getJiraAccount-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getJiraAccount-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:jira_accounts )
</aside>


### Update a Jira Account


<a id="opIdupdateJiraAccount"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account',
  params: {
  'app_id' => 'string'
}, headers: headers


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
|body|body|[JiraAccountUpdate](#jiraaccountupdate)|false|No description|


> Example response


<h4 id="updateJiraAccount-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|Inline|


<h4 id="updateJiraAccount-responseschema">Response Schema</h4>


Status Code **201**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:jira_accounts update:jira_accounts )
</aside>


### Delete a Jira Account


<a id="opIddeleteJiraAccount"></a>


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account?app_id=string',
{
  method: 'DELETE',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.delete('https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account', params={
  'app_id': 'string'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.delete 'https://api.moesif.com/v1/issue_tracking/{orgId}/jira/account',
  params: {
  'app_id' => 'string'
}, headers: headers


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


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/{orgId}/mappings/users/properties \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/mappings/users/properties',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/search/{orgId}/mappings/users/properties', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/search/{orgId}/mappings/users/properties',
  params: {
  }, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/mappings/users/properties");
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


`GET /search/{orgId}/mappings/users/properties`


<h4 id="getProperties-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|


> Example response


<h4 id="getProperties-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|


<h4 id="getProperties-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


<h2 id="Management-API-Events">Events</h2>


### Search Events


<a id="opIdsearchEvents"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/{orgId}/search/events?from=2018-05-26T05:35:01Z?to=2018-05-26T05:35:01Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/search/events?from=2018-05-26T05:35:01Z?to=2018-05-26T05:35:01Z',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/search/{orgId}/search/events', params={
  'from': '2018-05-26T05:35:01Z',  'to': '2018-05-26T05:35:01Z'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/search/{orgId}/search/events',
  params: {
  'from' => 'string(date-time)',
'to' => 'string(date-time)'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/search/events?from=2018-05-26T05:35:01Z?to=2018-05-26T05:35:01Z");
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


`POST /search/{orgId}/search/events`


<h4 id="searchEvents-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|No description|
|to|query|string(date-time)|true|No description|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|


> Example response


```yaml
{
  "took": 0,
  "timed_out": false,
  "hits": {
    "total": 0,
    "hits": [
      {
        "_id": "",
        "_source": {
          "duration_ms": 0,
          "request": {
            "body": {},
            "uri": "",
            "user_agent": {
              "patch": "",
              "major": "",
              "minor": "",
              "name": ""
            },
            "geo_ip": {
              "ip": "",
              "region_name": "",
              "continent_code": "",
              "location": [
                0
              ],
              "latitude": 0,
              "timezone": "",
              "area_code": 0,
              "longitude": 0,
              "real_region_name": "",
              "dma_code": 0,
              "postal_code": "",
              "city_name": "",
              "country_code2": "",
              "country_code3": "",
              "country_name": ""
            },
            "ip_address": "",
            "verb": "",
            "route": "",
            "time": "",
            "headers": {
              "_accept-_encoding": "",
              "_connection": "",
              "_cache-_control": "",
              "_user-_agent": "",
              "_host": "",
              "_accept": ""
            }
          },
          "user_id": "",
          "response": {
            "headers": {
              "_date": "",
              "_vary": "",
              "_cache-_control": "",
              "_strict-_transport-_security": "",
              "_access-_control-_expose-_headers": "",
              "_content-_security-_policy": "",
              "_transfer-_encoding": "",
              "_e_tag": "",
              "_content-_type": "",
              "_access-_control-_allow-_origin": ""
            },
            "time": "",
            "body": {},
            "status": 0
          },
          "id": "",
          "session_token": "",
          "metadata": {},
          "app_id": "",
          "org_id": "",
          "user": {}
        },
        "sort": [
          0
        ]
      }
    ]
  }
}
```


<h4 id="searchEvents-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponse](#schemasearcheventsresponse)|


<h4 id="searchEvents-responseschema">Response Schema</h4>


Status Code **201**


|Name|Type|Required|Description|
|---|---|---|---|
|» took|integer|false|No description|
|» timed_out|boolean|false|No description|
|» hits|object|false|No description|
|»» total|integer|false|No description|
|»» hits|[[eventResponse](#schemaeventresponse)]|false|No description|
|»»» _id|string|false|No description|
|»»» _source|object|false|No description|
|»»»» duration_ms|integer|false|No description|
|»»»» request|object|false|No description|
|»»»»» body|object|false|No description|
|»»»»» uri|string|false|No description|
|»»»»» user_agent|object|false|No description|
|»»»»»» patch|string|false|No description|
|»»»»»» major|string|false|No description|
|»»»»»» minor|string|false|No description|
|»»»»»» name|string|false|No description|
|»»»»» geo_ip|object|false|No description|
|»»»»»» ip|string|false|No description|
|»»»»»» region_name|string|false|No description|
|»»»»»» continent_code|string|false|No description|
|»»»»»» location|[double]|false|No description|
|»»»»»» latitude|double|false|No description|
|»»»»»» timezone|string|false|No description|
|»»»»»» area_code|integer|false|No description|
|»»»»»» longitude|double|false|No description|
|»»»»»» real_region_name|string|false|No description|
|»»»»»» dma_code|integer|false|No description|
|»»»»»» postal_code|string|false|No description|
|»»»»»» city_name|string|false|No description|
|»»»»»» country_code2|string|false|No description|
|»»»»»» country_code3|string|false|No description|
|»»»»»» country_name|string|false|No description|
|»»»»» ip_address|string|false|No description|
|»»»»» verb|string|false|No description|
|»»»»» route|string|false|No description|
|»»»»» time|string|false|No description|
|»»»»» headers|object|false|No description|
|»»»»»» _accept-_encoding|string|false|No description|
|»»»»»» _connection|string|false|No description|
|»»»»»» _cache-_control|string|false|No description|
|»»»»»» _user-_agent|string|false|No description|
|»»»»»» _host|string|false|No description|
|»»»»»» _accept|string|false|No description|
|»»»»» user_id|string|false|No description|
|»»»»» response|object|false|No description|
|»»»»»» headers|object|false|No description|
|»»»»»»» _date|string|false|No description|
|»»»»»»» _vary|string|false|No description|
|»»»»»»» _cache-_control|string|false|No description|
|»»»»»»» _strict-_transport-_security|string|false|No description|
|»»»»»»» _access-_control-_expose-_headers|string|false|No description|
|»»»»»»» _content-_security-_policy|string|false|No description|
|»»»»»»» _transfer-_encoding|string|false|No description|
|»»»»»»» _e_tag|string|false|No description|
|»»»»»»» _content-_type|string|false|No description|
|»»»»»»» _access-_control-_allow-_origin|string|false|No description|
|»»»»»» time|string|false|No description|
|»»»»»» body|object|false|No description|
|»»»»»» status|integer|false|No description|
|»»»»» id|string|false|No description|
|»»»»» session_token|string|false|No description|
|»»»»» metadata|object|false|No description|
|»»»»» app_id|string|false|No description|
|»»»»» org_id|string|false|No description|
|»»»»» user|object|false|No description|
|»»»» sort|[integer]|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>


### Get an Event


<a id="opIdgetEvent"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/{orgId}/events/{id}?event_time=2018-05-26T05:35:01Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/events/{id}?event_time=2018-05-26T05:35:01Z',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/search/{orgId}/events/{id}', params={
  'event_time': '2018-05-26T05:35:01Z'
}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/search/{orgId}/events/{id}',
  params: {
  'event_time' => 'string(date-time)'
}, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/events/{id}?event_time=2018-05-26T05:35:01Z");
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


`GET /search/{orgId}/events/{id}`


<h4 id="getEvent-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|
|event_time|query|string(date-time)|true|No description|


> Example response


```yaml
{
  "_id": "",
  "_source": {
    "duration_ms": 0,
    "request": {
      "body": {},
      "uri": "",
      "user_agent": {
        "patch": "",
        "major": "",
        "minor": "",
        "name": ""
      },
      "geo_ip": {
        "ip": "",
        "region_name": "",
        "continent_code": "",
        "location": [
          0
        ],
        "latitude": 0,
        "timezone": "",
        "area_code": 0,
        "longitude": 0,
        "real_region_name": "",
        "dma_code": 0,
        "postal_code": "",
        "city_name": "",
        "country_code2": "",
        "country_code3": "",
        "country_name": ""
      },
      "ip_address": "",
      "verb": "",
      "route": "",
      "time": "",
      "headers": {
        "_accept-_encoding": "",
        "_connection": "",
        "_cache-_control": "",
        "_user-_agent": "",
        "_host": "",
        "_accept": ""
      }
    },
    "user_id": "",
    "response": {
      "headers": {
        "_date": "",
        "_vary": "",
        "_cache-_control": "",
        "_strict-_transport-_security": "",
        "_access-_control-_expose-_headers": "",
        "_content-_security-_policy": "",
        "_transfer-_encoding": "",
        "_e_tag": "",
        "_content-_type": "",
        "_access-_control-_allow-_origin": ""
      },
      "time": "",
      "body": {},
      "status": 0
    },
    "id": "",
    "session_token": "",
    "metadata": {},
    "app_id": "",
    "org_id": "",
    "user": {}
  },
  "sort": [
    0
  ]
}
```


<h4 id="getEvent-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[eventResponse](#schemaeventresponse)|


<h4 id="getEvent-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» _id|string|false|No description|
|» _source|object|false|No description|
|»» duration_ms|integer|false|No description|
|»» request|object|false|No description|
|»»» body|object|false|No description|
|»»» uri|string|false|No description|
|»»» user_agent|object|false|No description|
|»»»» patch|string|false|No description|
|»»»» major|string|false|No description|
|»»»» minor|string|false|No description|
|»»»» name|string|false|No description|
|»»» geo_ip|object|false|No description|
|»»»» ip|string|false|No description|
|»»»» region_name|string|false|No description|
|»»»» continent_code|string|false|No description|
|»»»» location|[double]|false|No description|
|»»»» latitude|double|false|No description|
|»»»» timezone|string|false|No description|
|»»»» area_code|integer|false|No description|
|»»»» longitude|double|false|No description|
|»»»» real_region_name|string|false|No description|
|»»»» dma_code|integer|false|No description|
|»»»» postal_code|string|false|No description|
|»»»» city_name|string|false|No description|
|»»»» country_code2|string|false|No description|
|»»»» country_code3|string|false|No description|
|»»»» country_name|string|false|No description|
|»»» ip_address|string|false|No description|
|»»» verb|string|false|No description|
|»»» route|string|false|No description|
|»»» time|string|false|No description|
|»»» headers|object|false|No description|
|»»»» _accept-_encoding|string|false|No description|
|»»»» _connection|string|false|No description|
|»»»» _cache-_control|string|false|No description|
|»»»» _user-_agent|string|false|No description|
|»»»» _host|string|false|No description|
|»»»» _accept|string|false|No description|
|»»» user_id|string|false|No description|
|»»» response|object|false|No description|
|»»»» headers|object|false|No description|
|»»»»» _date|string|false|No description|
|»»»»» _vary|string|false|No description|
|»»»»» _cache-_control|string|false|No description|
|»»»»» _strict-_transport-_security|string|false|No description|
|»»»»» _access-_control-_expose-_headers|string|false|No description|
|»»»»» _content-_security-_policy|string|false|No description|
|»»»»» _transfer-_encoding|string|false|No description|
|»»»»» _e_tag|string|false|No description|
|»»»»» _content-_type|string|false|No description|
|»»»»» _access-_control-_allow-_origin|string|false|No description|
|»»»» time|string|false|No description|
|»»»» body|object|false|No description|
|»»»» status|integer|false|No description|
|»»» id|string|false|No description|
|»»» session_token|string|false|No description|
|»»» metadata|object|false|No description|
|»»» app_id|string|false|No description|
|»»» org_id|string|false|No description|
|»»» user|object|false|No description|
|»» sort|[integer]|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>


<h2 id="Management-API-Users">Users</h2>


### Update a User


<a id="opIdupdateUsers"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/{orgId}/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/users',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/search/{orgId}/users', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/search/{orgId}/users',
  params: {
  }, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/users");
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


`POST /search/{orgId}/users`


<h4 id="updateUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|[UserUpdate](#userupdate)|false|No description|


> Example response


```yaml
{
  "_id": "",
  "_source": {
    "first_name": "",
    "body": {},
    "name": "",
    "email": "",
    "first_seen_time": "",
    "user_agent": {
      "name": "",
      "os_major": "",
      "os": "",
      "os_name": "",
      "os_minor": "",
      "major": "",
      "device": "",
      "minor": ""
    },
    "geo_ip": {
      "ip": "",
      "region_name": "",
      "continent_code": "",
      "location": {
        "lon": 0,
        "lat": 0
      },
      "latitude": 0,
      "timezone": "",
      "longitude": 0,
      "dma_code": 0,
      "postal_code": "",
      "region_code": "",
      "city_name": "",
      "country_code2": "",
      "country_code3": "",
      "country_name": ""
    },
    "modified_time": "",
    "last_name": "",
    "ip_address": "",
    "session_token": [
      ""
    ],
    "last_seen_time": "",
    "app_id": "",
    "org_id": ""
  },
  "sort": [
    0
  ]
}
```


<h4 id="updateUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponse](#schemauserresponse)|


<h4 id="updateUsers-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» _id|string|false|No description|
|» _source|object|false|No description|
|»» first_name|string|false|No description|
|»» body|object|false|No description|
|»» name|string|false|No description|
|»» email|string|false|No description|
|»» first_seen_time|string|false|No description|
|»» user_agent|object|false|No description|
|»»» name|string|false|No description|
|»»» os_major|string|false|No description|
|»»» os|string|false|No description|
|»»» os_name|string|false|No description|
|»»» os_minor|string|false|No description|
|»»» major|string|false|No description|
|»»» device|string|false|No description|
|»»» minor|string|false|No description|
|»» geo_ip|object|false|No description|
|»»» ip|string|false|No description|
|»»» region_name|string|false|No description|
|»»» continent_code|string|false|No description|
|»»» location|object|false|No description|
|»»»» lon|double|false|No description|
|»»»» lat|double|false|No description|
|»»» latitude|double|false|No description|
|»»» timezone|string|false|No description|
|»»» longitude|double|false|No description|
|»»» dma_code|integer|false|No description|
|»»» postal_code|string|false|No description|
|»»» region_code|string|false|No description|
|»»» city_name|string|false|No description|
|»»» country_code2|string|false|No description|
|»»» country_code3|string|false|No description|
|»»» country_name|string|false|No description|
|»» modified_time|string|false|No description|
|»» last_name|string|false|No description|
|»» ip_address|string|false|No description|
|»» session_token|[string]|false|No description|
|»» last_seen_time|string|false|No description|
|»» app_id|string|false|No description|
|»» org_id|string|false|No description|
|» sort|[integer]|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>


### Search Users


<a id="opIdsearchUsers"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/{orgId}/search/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/search/users',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/search/{orgId}/search/users', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/search/{orgId}/search/users',
  params: {
  }, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/search/users");
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


`POST /search/{orgId}/search/users`


<h4 id="searchUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|


> Example response


```yaml
{
  "took": 0,
  "timed_out": false,
  "hits": {
    "total": 0,
    "hits": [
      {
        "_id": "",
        "_source": {
          "first_name": "",
          "body": {},
          "name": "",
          "email": "",
          "first_seen_time": "",
          "user_agent": {
            "name": "",
            "os_major": "",
            "os": "",
            "os_name": "",
            "os_minor": "",
            "major": "",
            "device": "",
            "minor": ""
          },
          "geo_ip": {
            "ip": "",
            "region_name": "",
            "continent_code": "",
            "location": {
              "lon": 0,
              "lat": 0
            },
            "latitude": 0,
            "timezone": "",
            "longitude": 0,
            "dma_code": 0,
            "postal_code": "",
            "region_code": "",
            "city_name": "",
            "country_code2": "",
            "country_code3": "",
            "country_name": ""
          },
          "modified_time": "",
          "last_name": "",
          "ip_address": "",
          "session_token": [
            ""
          ],
          "last_seen_time": "",
          "app_id": "",
          "org_id": ""
        },
        "sort": [
          0
        ]
      }
    ]
  }
}
```


<h4 id="searchUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchUsersResponse](#schemasearchusersresponse)|


<h4 id="searchUsers-responseschema">Response Schema</h4>


Status Code **201**


|Name|Type|Required|Description|
|---|---|---|---|
|» took|integer|false|No description|
|» timed_out|boolean|false|No description|
|» hits|object|false|No description|
|»» total|integer|false|No description|
|»» hits|[[userResponse](#schemauserresponse)]|false|No description|
|»»» _id|string|false|No description|
|»»» _source|object|false|No description|
|»»»» first_name|string|false|No description|
|»»»» body|object|false|No description|
|»»»» name|string|false|No description|
|»»»» email|string|false|No description|
|»»»» first_seen_time|string|false|No description|
|»»»» user_agent|object|false|No description|
|»»»»» name|string|false|No description|
|»»»»» os_major|string|false|No description|
|»»»»» os|string|false|No description|
|»»»»» os_name|string|false|No description|
|»»»»» os_minor|string|false|No description|
|»»»»» major|string|false|No description|
|»»»»» device|string|false|No description|
|»»»»» minor|string|false|No description|
|»»»» geo_ip|object|false|No description|
|»»»»» ip|string|false|No description|
|»»»»» region_name|string|false|No description|
|»»»»» continent_code|string|false|No description|
|»»»»» location|object|false|No description|
|»»»»»» lon|double|false|No description|
|»»»»»» lat|double|false|No description|
|»»»»» latitude|double|false|No description|
|»»»»» timezone|string|false|No description|
|»»»»» longitude|double|false|No description|
|»»»»» dma_code|integer|false|No description|
|»»»»» postal_code|string|false|No description|
|»»»»» region_code|string|false|No description|
|»»»»» city_name|string|false|No description|
|»»»»» country_code2|string|false|No description|
|»»»»» country_code3|string|false|No description|
|»»»»» country_name|string|false|No description|
|»»»» modified_time|string|false|No description|
|»»»» last_name|string|false|No description|
|»»»» ip_address|string|false|No description|
|»»»» session_token|[string]|false|No description|
|»»»» last_seen_time|string|false|No description|
|»»»» app_id|string|false|No description|
|»»»» org_id|string|false|No description|
|»»» sort|[integer]|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


### Update Users in Batch


<a id="opIdbatchUpdateUsers"></a>


```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/{orgId}/users/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/users/batch',
{
  method: 'POST',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.post('https://api.moesif.com/v1/search/{orgId}/users/batch', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.post 'https://api.moesif.com/v1/search/{orgId}/users/batch',
  params: {
  }, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/users/batch");
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


`POST /search/{orgId}/users/batch`


<h4 id="batchUpdateUsers-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|array[object]|false|No description|


> Example response


```yaml
{
  "_id": "",
  "_source": {
    "first_name": "",
    "body": {},
    "name": "",
    "email": "",
    "first_seen_time": "",
    "user_agent": {
      "name": "",
      "os_major": "",
      "os": "",
      "os_name": "",
      "os_minor": "",
      "major": "",
      "device": "",
      "minor": ""
    },
    "geo_ip": {
      "ip": "",
      "region_name": "",
      "continent_code": "",
      "location": {
        "lon": 0,
        "lat": 0
      },
      "latitude": 0,
      "timezone": "",
      "longitude": 0,
      "dma_code": 0,
      "postal_code": "",
      "region_code": "",
      "city_name": "",
      "country_code2": "",
      "country_code3": "",
      "country_name": ""
    },
    "modified_time": "",
    "last_name": "",
    "ip_address": "",
    "session_token": [
      ""
    ],
    "last_seen_time": "",
    "app_id": "",
    "org_id": ""
  },
  "sort": [
    0
  ]
}
```


<h4 id="batchUpdateUsers-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponse](#schemauserresponse)|


<h4 id="batchUpdateUsers-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» _id|string|false|No description|
|» _source|object|false|No description|
|»» first_name|string|false|No description|
|»» body|object|false|No description|
|»» name|string|false|No description|
|»» email|string|false|No description|
|»» first_seen_time|string|false|No description|
|»» user_agent|object|false|No description|
|»»» name|string|false|No description|
|»»» os_major|string|false|No description|
|»»» os|string|false|No description|
|»»» os_name|string|false|No description|
|»»» os_minor|string|false|No description|
|»»» major|string|false|No description|
|»»» device|string|false|No description|
|»»» minor|string|false|No description|
|»» geo_ip|object|false|No description|
|»»» ip|string|false|No description|
|»»» region_name|string|false|No description|
|»»» continent_code|string|false|No description|
|»»» location|object|false|No description|
|»»»» lon|double|false|No description|
|»»»» lat|double|false|No description|
|»»» latitude|double|false|No description|
|»»» timezone|string|false|No description|
|»»» longitude|double|false|No description|
|»»» dma_code|integer|false|No description|
|»»» postal_code|string|false|No description|
|»»» region_code|string|false|No description|
|»»» city_name|string|false|No description|
|»»» country_code2|string|false|No description|
|»»» country_code3|string|false|No description|
|»»» country_name|string|false|No description|
|»» modified_time|string|false|No description|
|»» last_name|string|false|No description|
|»» ip_address|string|false|No description|
|»» session_token|[string]|false|No description|
|»» last_seen_time|string|false|No description|
|»» app_id|string|false|No description|
|»» org_id|string|false|No description|
|» sort|[integer]|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>


### Get a User


<a id="opIdgetUser"></a>


```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/{orgId}/users/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/users/{id}',
{
  method: 'GET',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.get('https://api.moesif.com/v1/search/{orgId}/users/{id}', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.get 'https://api.moesif.com/v1/search/{orgId}/users/{id}',
  params: {
  }, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/users/{id}");
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


`GET /search/{orgId}/users/{id}`


<h4 id="getUser-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|


> Example response


```yaml
{
  "_id": "",
  "_source": {
    "first_name": "",
    "body": {},
    "name": "",
    "email": "",
    "first_seen_time": "",
    "user_agent": {
      "name": "",
      "os_major": "",
      "os": "",
      "os_name": "",
      "os_minor": "",
      "major": "",
      "device": "",
      "minor": ""
    },
    "geo_ip": {
      "ip": "",
      "region_name": "",
      "continent_code": "",
      "location": {
        "lon": 0,
        "lat": 0
      },
      "latitude": 0,
      "timezone": "",
      "longitude": 0,
      "dma_code": 0,
      "postal_code": "",
      "region_code": "",
      "city_name": "",
      "country_code2": "",
      "country_code3": "",
      "country_name": ""
    },
    "modified_time": "",
    "last_name": "",
    "ip_address": "",
    "session_token": [
      ""
    ],
    "last_seen_time": "",
    "app_id": "",
    "org_id": ""
  },
  "sort": [
    0
  ]
}
```


<h4 id="getUser-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponse](#schemauserresponse)|


<h4 id="getUser-responseschema">Response Schema</h4>


Status Code **200**


|Name|Type|Required|Description|
|---|---|---|---|
|» _id|string|false|No description|
|» _source|object|false|No description|
|»» first_name|string|false|No description|
|»» body|object|false|No description|
|»» name|string|false|No description|
|»» email|string|false|No description|
|»» first_seen_time|string|false|No description|
|»» user_agent|object|false|No description|
|»»» name|string|false|No description|
|»»» os_major|string|false|No description|
|»»» os|string|false|No description|
|»»» os_name|string|false|No description|
|»»» os_minor|string|false|No description|
|»»» major|string|false|No description|
|»»» device|string|false|No description|
|»»» minor|string|false|No description|
|»» geo_ip|object|false|No description|
|»»» ip|string|false|No description|
|»»» region_name|string|false|No description|
|»»» continent_code|string|false|No description|
|»»» location|object|false|No description|
|»»»» lon|double|false|No description|
|»»»» lat|double|false|No description|
|»»» latitude|double|false|No description|
|»»» timezone|string|false|No description|
|»»» longitude|double|false|No description|
|»»» dma_code|integer|false|No description|
|»»» postal_code|string|false|No description|
|»»» region_code|string|false|No description|
|»»» city_name|string|false|No description|
|»»» country_code2|string|false|No description|
|»»» country_code3|string|false|No description|
|»»» country_name|string|false|No description|
|»» modified_time|string|false|No description|
|»» last_name|string|false|No description|
|»» ip_address|string|false|No description|
|»» session_token|[string]|false|No description|
|»» last_seen_time|string|false|No description|
|»» app_id|string|false|No description|
|»» org_id|string|false|No description|
|» sort|[integer]|false|No description|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>


### Delete a User


<a id="opIddeleteUser"></a>


```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/search/{orgId}/users/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_APITOKEN'


```


```javascript--nodejs
const request = require('node-fetch');


const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_APITOKEN'


};


fetch('https://api.moesif.com/v1/search/{orgId}/users/{id}',
{
  method: 'DELETE',


  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});


```


```python
import requests
headers = {
  'Authorization': 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


r = requests.delete('https://api.moesif.com/v1/search/{orgId}/users/{id}', params={


}, headers = headers)


print r.json()


```


```ruby
require 'rest-client'
require 'json'


headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_APITOKEN'
}


result = RestClient.delete 'https://api.moesif.com/v1/search/{orgId}/users/{id}',
  params: {
  }, headers: headers


p JSON.parse(result)


```


```java
URL obj = new URL("https://api.moesif.com/v1/search/{orgId}/users/{id}");
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


`DELETE /search/{orgId}/users/{id}`


<h4 id="deleteUser-parameters">Parameters</h4>


|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|


<h4 id="deleteUser-responses">Responses</h4>


|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|


<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:users )
</aside>



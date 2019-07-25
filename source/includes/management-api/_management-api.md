---
title: Management API
language_tabs:
  - shell: Shell
  - javascript--nodejs: Javascript
  - python: Python
  - ruby: Ruby
  - php: PHP
  - go: Go
  - csharp: 'C#'
  - java: Java
toc_footers:
  - '<a href="https://moesif.com/docs">Developer Docs</a>'
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="management-api">Management API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Management API to query data in Moesif. You can use the management API to export data for custom reports or to build custom dashboards.

Base URL:

* <a href="https://api.moesif.com/v1">https://api.moesif.com/v1</a>

<a href="https://www.moesif.com/terms">Terms of service</a>

## Authentication

- Your Management API token must be added to the request _Authorization_ header using the following format:

 `Authorization: Bearer MY_API_TOKEN`

    - Token URL = [https://api.moesif.com/v1/:orgId/oauth/access_tokens](https://api.moesif.com/v1/:orgId/oauth/access_tokens)

|Scope|Scope Description|
|---|---|
|read:public_workspaces|Read public workspaces/shared links|
|read:virtual_eventtypes|Read existing virtual events/tags|
|read:traces|Read traces and associated event_ids|
|update:companies|Update existing companies and associated company metadata|
|create:companies|Create new companies and associated company metadata|
|update:triage_buckets|Update triaged errors such as the status|
|create:reports|Create a new report such as SmartDiff|
|delete:workspaces|Delete existing workspaces|
|create:workspaces|Create a new workspace/chart that can be shared|
|read:workspaces|Read existing workspaces|
|update:virtual_eventtypes|Update existing virtual events/tags|
|read:events|Read/query API calls/events and associated event metadata|
|create:events|Create new API calls/events and associated event metadata|
|update:apps|Update an existing application|
|create:access_tokens|Create new tokens to access the Management API or Collector API|
|create:users|Create new users and associated user metadata|
|read:metrics|Read numeric API metrics such as error count|
|create:apps|Create a new application/project under the organization|
|update:workspaces|Update existing workspaces|
|read:users|Read/query users and associated user metadata|
|delete:virtual_eventtypes|Delete existing virtual events/tags|
|read:reports|Read reports such as SmartDiff|
|delete:reports|Delete existing reports such as SmartDiff|
|update:users|Update existing users and associated user metadata|
|read:companies|Read/query companies and associated company metadata|
|create:virtual_eventtypes|Create virtual events/tags|
|read:apps|Read the organization's applications|
|read:triage_buckets|Read triaged errors|
|create:eth_abi|Create/upload new Ethereum ABI Entries|

<h2 id="management-api-routes">routes</h2>

### undefined

<a id="opIdupdateVirtualEventType"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}?app_id=string&update_old_events=true

```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}?app_id=string&update_old_events=true',
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

r = requests.post('https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}', params={
  'app_id': 'string',  'update_old_events': 'true'
)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}',
  params: {
  'app_id' => 'string',
'update_old_events' => 'boolean'
}

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/virtual_event_types/{id}?app_id=string&update_old_events=true");
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

`POST /{orgId}/virtual_event_types/{id}`

<h4 id="updateVirtualEventType-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|
|update_old_events|query|boolean|true|No description|

<h4 id="updateVirtualEventType-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

### undefined

<a id="opIdsearchCompanies"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/search/companies?app_id=string

```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://api.moesif.com/v1/{orgId}/search/companies?app_id=string',
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

r = requests.post('https://api.moesif.com/v1/{orgId}/search/companies', params={
  'app_id': 'string'
)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/companies',
  params: {
  'app_id' => 'string'
}

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/search/companies', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/search/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/companies?app_id=string");
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

`POST /{orgId}/search/companies`

<h4 id="searchCompanies-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|

<h4 id="searchCompanies-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

<h2 id="management-api-Workspaces">Workspaces</h2>

### Add ACL permission

<a id="opIdaddACLPermissions"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl?app_id=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl?app_id=string");
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

`POST /replay/{orgId}/workspaces/{id}/policy/acl`

<h4 id="addACLPermissions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|
|grantee|query|string|false|No description|
|permission|query|string|false|No description|

<h4 id="addACLPermissions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:workspaces )
</aside>

### Delete ACL permission

<a id="opIddeleteACLPermissions"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl?app_id=string&grantee=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl?app_id=string&grantee=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl', params={
  'app_id': 'string',  'grantee': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl',
  params: {
  'app_id' => 'string',
'grantee' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}/policy/acl?app_id=string&grantee=string");
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

`DELETE /replay/{orgId}/workspaces/{id}/policy/acl`

<h4 id="deleteACLPermissions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|
|grantee|query|string|true|No description|

<h4 id="deleteACLPermissions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:workspaces )
</aside>

### Update a Workspace

<a id="opIdupdateWorkspace"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string");
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

`POST /replay/{orgId}/workspaces/{id}`

<h4 id="updateWorkspace-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|

<h4 id="updateWorkspace-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

### Get a Workspace

<a id="opIdgetWorkspace"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

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
  'Authorization': 'Bearer {access-token}'
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
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

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
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

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
  'Authorization': 'Bearer {access-token}'
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
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/replay/{orgId}/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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

### Create New Workspace

<a id="opIdcreateWorkspace"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

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
  'Authorization': 'Bearer {access-token}'
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
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/replay/{orgId}/workspaces',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/replay/{orgId}/workspaces', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/replay/{orgId}/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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
|expiration|query|string(date-time)|false|No description|

> Example response

<h4 id="createWorkspace-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

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
curl -X GET https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string&take=0&access=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string&take=0&access=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/replay/{orgId}/workspaces', params={
  'app_id': 'string',  'take': '0',  'access': [
  "string"
]
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/replay/{orgId}/workspaces',
  params: {
  'app_id' => 'string',
'take' => 'integer(int32)',
'access' => 'array[string]'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/replay/{orgId}/workspaces', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/replay/{orgId}/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/replay/{orgId}/workspaces?app_id=string&take=0&access=string");
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
|type|query|string|false|No description|
|access|query|array[string]|true|No description|

> Example response

> 200 undefined

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

<h2 id="management-api-OAuth">OAuth</h2>

### Get Token Info

<a id="opIdgetTokenInfo"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

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
  'Authorization': 'Bearer {access-token}'
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
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/oauth/tokeninfo',
  params: {
  'scope' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/oauth/tokeninfo', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/oauth/tokeninfo", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

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
curl -X GET https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string&scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string&scope=string',
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
  'Authorization': 'Bearer {access-token}'
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
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/{orgId}/oauth/access_tokens',
  params: {
  'target' => 'string',
'scope' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/{orgId}/oauth/access_tokens', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/{orgId}/oauth/access_tokens", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/oauth/access_tokens?target=string&scope=string");
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

> 200 undefined

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

<h2 id="management-api-URL-Encoder">URL Encoder</h2>

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

```php
<?php

require 'vendor/autoload.php';

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/url_encoder', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/url_encoder", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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

<h2 id="management-api-Organizations">Organizations</h2>

### Create a new App

<a id="opIdaddApp"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/apps \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/apps',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/apps', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/apps',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/apps', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/apps", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/apps");
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

`POST /{orgId}/apps`

Create a new app under the selected organization

<h4 id="addApp-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|body|body|[AppCreate](#appcreate)|false|No description|

> Example response

> 200 undefined

```yaml
{
  "id": "string",
  "name": "string"
}
```

<h4 id="addApp-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AppResponse](#appresponse)|

<h4 id="addApp-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|
|» id|string|false|No description|
|» name|string|true|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:apps )
</aside>

### Gets Apps

<a id="opIdgetApps"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/apps?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/apps?take=0',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/{orgId}/apps', params={
  'take': '0'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/{orgId}/apps',
  params: {
  'take' => 'integer(int32)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/{orgId}/apps', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/{orgId}/apps", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/apps?take=0");
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

`GET /{orgId}/apps`

Gets a list of apps for the selected organization

<h4 id="getApps-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|take|query|integer(int32)|true|No description|
|before_id|query|string|false|No description|

> Example response

> 200 undefined

```yaml
[
  {
    "id": "string",
    "name": "string"
  }
]
```

<h4 id="getApps-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h4 id="getApps-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|
|» id|string|false|No description|
|» name|string|true|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:apps )
</aside>

### Update Apps

<a id="opIdupdateApp"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/apps/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/apps/{id}',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/apps/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/apps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/apps/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/apps/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/apps/{id}");
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

`POST /{orgId}/apps/{id}`

Update the name of the app for the selected organization

<h4 id="updateApp-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|

> Example response

> 200 undefined

```yaml
{
  "name": "string"
}
```

<h4 id="updateApp-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AppUpdate](#appupdate)|

<h4 id="updateApp-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|
|» name|string|true|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:apps )
</aside>

### Delete Apps

<a id="opIddeleteApp"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/{orgId}/apps/{id} \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/apps/{id}',
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
  'Accept': '0',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.moesif.com/v1/{orgId}/apps/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '0',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/{orgId}/apps/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => '0',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/{orgId}/apps/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"0"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/{orgId}/apps/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/apps/{id}");
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

`DELETE /{orgId}/apps/{id}`

Delete the app for the selected organization

<h4 id="deleteApp-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|id|path|string|true|No description|

> Example response

<h4 id="deleteApp-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="deleteApp-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:apps )
</aside>

<h2 id="management-api-Health">Health</h2>

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

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/health/probe', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/health/probe", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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

> 200 undefined

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

<h2 id="management-api-UserMetrics">UserMetrics</h2>

### Search UserMetrics/Metrics

<a id="opIdsearchUserMetricsChild"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z',
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
  'Accept': '0',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics', params={
  'app_id': 'string',  'from': '2019-07-25T04:28:30Z',  'to': '2019-07-25T04:28:30Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '0',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics',
  params: {
  'app_id' => 'string',
'from' => 'string(date-time)',
'to' => 'string(date-time)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => '0',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"0"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/usermetrics/metrics?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z");
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

`POST /{orgId}/search/usermetrics/metrics`

<h4 id="searchUserMetricsChild-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

<h4 id="searchUserMetricsChild-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="searchUserMetricsChild-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

### Search UserMetrics/Users

<a id="opIdsearchUserMetricsParent"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/search/usermetrics/users?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/search/usermetrics/users?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z',
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
  'Accept': '0',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/search/usermetrics/users', params={
  'app_id': 'string',  'from': '2019-07-25T04:28:30Z',  'to': '2019-07-25T04:28:30Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '0',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/usermetrics/users',
  params: {
  'app_id' => 'string',
'from' => 'string(date-time)',
'to' => 'string(date-time)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => '0',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/search/usermetrics/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"0"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/search/usermetrics/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/usermetrics/users?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z");
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

`POST /{orgId}/search/usermetrics/users`

<h4 id="searchUserMetricsParent-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

<h4 id="searchUserMetricsParent-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="searchUserMetricsParent-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

<h2 id="management-api-Properties">Properties</h2>

### Get Property Mapping for Users

<a id="opIdgetProperties"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/mappings/users/properties?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/mappings/users/properties?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/{orgId}/mappings/users/properties', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/{orgId}/mappings/users/properties',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/{orgId}/mappings/users/properties', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/{orgId}/mappings/users/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/mappings/users/properties?app_id=string");
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
|app_id|query|string|true|No description|

> Example response

<h4 id="getProperties-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getProperties-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

<h2 id="management-api-Companies">Companies</h2>

### Get a Company

<a id="opIdgetCompany"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/{orgId}/companies/{id}?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/companies/{id}?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/{orgId}/companies/{id}', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/{orgId}/companies/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/{orgId}/companies/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/{orgId}/companies/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/companies/{id}?app_id=string");
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

`GET /{orgId}/companies/{id}`

<h4 id="getCompany-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|id|path|string|true|No description|

> Example response

<h4 id="getCompany-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getCompany-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

### Delete a Company

<a id="opIddeleteCompany"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/{orgId}/companies/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/companies/{id}',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.moesif.com/v1/{orgId}/companies/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/{orgId}/companies/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/{orgId}/companies/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/{orgId}/companies/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/companies/{id}");
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

`DELETE /{orgId}/companies/{id}`

<h4 id="deleteCompany-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

<h4 id="deleteCompany-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:companies )
</aside>

### Update a Company

<a id="opIdupdateCompanies"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/companies \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/companies',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/companies', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/companies',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/companies', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/companies");
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

`POST /{orgId}/companies`

<h4 id="updateCompanies-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|[CompanyUpdate](#companyupdate)|false|No description|

> Example response

<h4 id="updateCompanies-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="updateCompanies-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:companies update:companies )
</aside>

### Update Companies in Batch

<a id="opIdbatchUpdateCompanies"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/companies/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/companies/batch',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/companies/batch', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/companies/batch',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/companies/batch', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/companies/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/companies/batch");
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

`POST /{orgId}/companies/batch`

<h4 id="batchUpdateCompanies-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|array[object]|false|No description|

> Example response

<h4 id="batchUpdateCompanies-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="batchUpdateCompanies-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:companies update:companies )
</aside>

### Count Companies

<a id="opIdcountCompanies"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/count/companies?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/count/companies?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/count/companies', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/count/companies',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/count/companies', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/count/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/count/companies?app_id=string");
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

`POST /{orgId}/count/companies`

<h4 id="countCompanies-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|body|body|_See Below_|false|A query to restrict the results specified with the Elasticsearch Query DSL|

> Example response

<h4 id="countCompanies-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="countCompanies-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

<h2 id="management-api-Events">Events</h2>

### Search Events in Saved Workspace

<a id="opIdsearchWorkspaceEvents"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events', params={
  'app_id': 'string',  'from': '2019-07-25T04:28:30Z',  'to': '2019-07-25T04:28:30Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events',
  params: {
  'app_id' => 'string',
'from' => 'string(date-time)',
'to' => 'string(date-time)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/workspaces/{workspaceId}/search/events?app_id=string&from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z");
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

`POST /{orgId}/workspaces/{workspaceId}/search/events`

<h4 id="searchWorkspaceEvents-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|workspaceId|path|string|true|No description|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

> 201 undefined

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

<h4 id="searchWorkspaceEvents-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponse](#schemasearcheventsresponse)|

<h4 id="searchWorkspaceEvents-responseschema">Response Schema</h4>

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

### Count Events

<a id="opIdcountEvents"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/count/events?from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/count/events?from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/count/events', params={
  'from': '2019-07-25T04:28:30Z',  'to': '2019-07-25T04:28:30Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/count/events',
  params: {
  'from' => 'string(date-time)',
'to' => 'string(date-time)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/count/events', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/count/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/count/events?from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z");
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
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

<h4 id="countEvents-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="countEvents-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

### Search Events

<a id="opIdsearchEvents"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/search/events?from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/search/events?from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/search/events', params={
  'from': '2019-07-25T04:28:30Z',  'to': '2019-07-25T04:28:30Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/events',
  params: {
  'from' => 'string(date-time)',
'to' => 'string(date-time)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/search/events', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/search/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/events?from=2019-07-25T04:28:30Z&to=2019-07-25T04:28:30Z");
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
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

> 201 undefined

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
curl -X GET https://api.moesif.com/v1/{orgId}/events/{id}?event_time=2019-07-25T04:28:30Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/events/{id}?event_time=2019-07-25T04:28:30Z',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/{orgId}/events/{id}', params={
  'event_time': '2019-07-25T04:28:30Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/{orgId}/events/{id}',
  params: {
  'event_time' => 'string(date-time)'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/{orgId}/events/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/{orgId}/events/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/events/{id}?event_time=2019-07-25T04:28:30Z");
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
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|event_time|query|string(date-time)|true|No description|

> Example response

> 200 undefined

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

<h2 id="management-api-Users">Users</h2>

### Count Users

<a id="opIdcountUsers"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/count/users?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/count/users?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/count/users', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/count/users',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/count/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/count/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/count/users?app_id=string");
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
|app_id|query|string|true|No description|
|body|body|_See Below_|false|A query to restrict the results specified with the Elasticsearch Query DSL|

> Example response

<h4 id="countUsers-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="countUsers-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

### Update a User

<a id="opIdupdateUsers"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/{orgId}/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/users',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/users', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/users',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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
|body|body|[UserUpdate](#userupdate)|false|No description|

> Example response

> 200 undefined

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
curl -X POST https://api.moesif.com/v1/{orgId}/search/users?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/search/users?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/search/users', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/search/users',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/search/users', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/search/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/search/users?app_id=string");
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
|app_id|query|string|true|No description|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

> 201 undefined

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
curl -X POST https://api.moesif.com/v1/{orgId}/users/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/users/batch',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.moesif.com/v1/{orgId}/users/batch', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/{orgId}/users/batch',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/{orgId}/users/batch', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/{orgId}/users/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

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
|body|body|array[object]|false|No description|

> Example response

> 200 undefined

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
curl -X GET https://api.moesif.com/v1/{orgId}/users/{id}?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/users/{id}?app_id=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/{orgId}/users/{id}', params={
  'app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/{orgId}/users/{id}',
  params: {
  'app_id' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/{orgId}/users/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/{orgId}/users/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/users/{id}?app_id=string");
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
|app_id|query|string|true|No description|
|id|path|string|true|No description|

> Example response

> 200 undefined

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
curl -X DELETE https://api.moesif.com/v1/{orgId}/users/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/{orgId}/users/{id}',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.moesif.com/v1/{orgId}/users/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/{orgId}/users/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/{orgId}/users/{id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Authorization": []string{"Bearer {access-token}"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/{orgId}/users/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/{orgId}/users/{id}");
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

`DELETE /{orgId}/users/{id}`

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


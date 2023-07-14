<h1 id="management-api">Management API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Management API to query data in Moesif. You can use the management API to export data for custom reports or to build custom dashboards.
Only SSL encrypted traffic is allowed. 

|Base URL (Public)|Base URL (When using Secure Proxy)|
|--|--|
|`api.moesif.com/v1`|`localhost:9500/api`

If you're using the [Moesif's Secure Proxy](https://www.moesif.com/docs/platform/secure-proxy/) feature, the base URL is `http://localhost:9500/api`, assuming it's running on port `9500`. Do not include the /v1 path segment when using Secure Proxy. 

<a href="https://www.moesif.com/terms">Terms of service</a>

## Authentication

- Your Management API token must be added to the request <strong>Authorization</strong> header using the following format:

`curl -X POST -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY' https://api.moesif.com/v1`

You can generate a Management API Key by logging into Moesif and clicking on <strong>API Keys</strong> from the bottom left menu. On the <strong>API Keys</strong> screen, you can use the <strong>Management API Key</strong> pane to generate the key.

|Scope|Scope Description|
|---|---|
|create:encrypted_keys|Create encrypted Keys for the Moesif secure proxy|
|delete:dashboards|Delete existing dashboards|
|update:dashboards|Update existing dashboards|
|create:dashboards|Create a new team dashboard that can be shared|
|read:public_workspaces|Read public workspaces/shared links|
|read:virtual_eventtypes|Read existing virtual events/tags|
|update:companies|Update existing companies and associated company metadata|
|create:companies|Create new companies and associated company metadata|
|create:reports|Create a new report such as SmartDiff|
|delete:workspaces|Delete existing workspaces|
|create:workspaces|Create a new workspace/chart that can be shared|
|read:workspaces|Read existing workspaces|
|update:virtual_eventtypes|Update existing virtual events/tags|
|create:cohorts|Save new customer cohorts|
|delete:encrypted_keys|Delete encrypted Keys for the Moesif secure proxy|
|read:dashboards|Read existing dashboards|
|read:events|Read/query events and associated event metadata|
|create:events|Create new events and associated event metadata|
|read:cohorts|Read previously saved customer cohorts|
|read:encrypted_keys|Read encrypted Keys for the Moesif secure proxy|
|update:apps|Update an existing application|
|update:encrypted_keys|Update encrypted Keys for the Moesif secure proxy|
|update:organizations|Update an existing application|
|create:access_tokens|Create new tokens to access the Management API or Collector API|
|create:users|Create new users and associated user metadata|
|create:apps|Create a new application/project under the organization|
|update:workspaces|Update existing workspaces|
|delete:cohorts|Delete previously saved customer cohorts|
|read:users|Read/query users and associated user metadata|
|delete:virtual_eventtypes|Delete existing virtual events/tags|
|read:reports|Read reports such as SmartDiff|
|delete:reports|Delete existing reports such as SmartDiff|
|update:users|Update existing users and associated user metadata|
|update:cohorts|Update previously saved customer cohorts|
|read:companies|Read/query companies and associated company metadata|
|create:virtual_eventtypes|Create virtual events/tags|
|delete:apps|Delete an existing application|
|delete:companies|Delete existing companies and associated company metadata|
|read:apps|Read the organization's applications|
|create:eth_abi|Create/upload new Ethereum ABI Entries|
|delete:users|Delete existing users and associated user metadata|

<h2 id="management-api-routes">Routes</h2>

### Get Email Template

<a id="opIdgetDefaultEmailTemplates"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/emails/templates/default

```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://api.moesif.com/v1/~/emails/templates/default',
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

r = requests.get('https://api.moesif.com/v1/~/emails/templates/default', params={

)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

result = RestClient.get 'https://api.moesif.com/v1/~/emails/templates/default',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/emails/templates/default', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates/default", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/emails/templates/default");
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

`GET https://api.moesif.com/v1/~/emails/templates/default`

<h4 id="getDefaultEmailTemplates-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|

<h4 id="getDefaultEmailTemplates-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

### Initialize an App

<a id="opIdinitApp"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/apps/{appId}/default

```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://api.moesif.com/v1/~/apps/{appId}/default',
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

r = requests.post('https://api.moesif.com/v1/~/apps/{appId}/default', params={

)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

result = RestClient.post 'https://api.moesif.com/v1/~/apps/{appId}/default',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/apps/{appId}/default', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/apps/{appId}/default", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/apps/{appId}/default");
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

`POST https://api.moesif.com/v1/~/apps/{appId}/default`

<h4 id="initApp-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|appId|path|string|true|No description|

<h4 id="initApp-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

<h2 id="management-api-GovernanceRules">Governance Rules</h2>

### Create New Governance Rules

<a id="opIdcreateGovernanceRule"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/governance/rules \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/governance/rules',
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

r = requests.post('https://api.moesif.com/v1/~/governance/rules', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/governance/rules',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/governance/rules', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/governance/rules", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/governance/rules");
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

`POST https://api.moesif.com/v1/~/governance/rules`

<h4 id="createGovernanceRule-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|_See Below_|false|No description|

> Example response

<h4 id="createGovernanceRule-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="createGovernanceRule-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:governance_rules )
</aside>

### Get Governance Rules

<a id="opIdgetGovernanceRules"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/governance/rules \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/governance/rules',
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

r = requests.get('https://api.moesif.com/v1/~/governance/rules', params={

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

result = RestClient.get 'https://api.moesif.com/v1/~/governance/rules',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/governance/rules', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/governance/rules", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/governance/rules");
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

`GET https://api.moesif.com/v1/~/governance/rules`

<h4 id="getGovernanceRules-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|

> Example response

<h4 id="getGovernanceRules-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getGovernanceRules-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:governance_rules )
</aside>

### Update a Governance Rule

<a id="opIdupdateGovernanceRule"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/governance/rules/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/governance/rules/{id}',
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

r = requests.post('https://api.moesif.com/v1/~/governance/rules/{id}', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/governance/rules/{id}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/governance/rules/{id}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/governance/rules/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/governance/rules/{id}");
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

`POST https://api.moesif.com/v1/~/governance/rules/{id}`

<h4 id="updateGovernanceRule-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|body|body|_See Below_|false|No description|

> Example response

<h4 id="updateGovernanceRule-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="updateGovernanceRule-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:governance_rules )
</aside>

### Get a Governance Rule

<a id="opIdgetGovernanceRule"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/governance/rules/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/governance/rules/{id}',
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

r = requests.get('https://api.moesif.com/v1/~/governance/rules/{id}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/~/governance/rules/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/governance/rules/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/governance/rules/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/governance/rules/{id}");
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

`GET https://api.moesif.com/v1/~/governance/rules/{id}`

<h4 id="getGovernanceRule-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

> Example response

<h4 id="getGovernanceRule-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getGovernanceRule-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:governance_rules )
</aside>

### Delete a Governance Rule

<a id="opIddeleteGovernanceRule"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/governance/rules/{id} \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/governance/rules/{id}',
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

r = requests.delete('https://api.moesif.com/v1/~/governance/rules/{id}', params={

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

result = RestClient.delete 'https://api.moesif.com/v1/~/governance/rules/{id}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/governance/rules/{id}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/governance/rules/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/governance/rules/{id}");
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

`DELETE https://api.moesif.com/v1/~/governance/rules/{id}`

<h4 id="deleteGovernanceRule-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

> Example response

<h4 id="deleteGovernanceRule-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|success|None|

<h4 id="deleteGovernanceRule-responseschema">Response Schema</h4>

Status Code **204**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:governance_rules )
</aside>

<h2 id="management-api-Dashboards">Dashboards</h2>

### Update a Dashboard

<a id="opIdupdateDashboard"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/{dashId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards/{dashId}',
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

r = requests.post('https://api.moesif.com/v1/~/dashboards/{dashId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/dashboards/{dashId}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards/{dashId}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards/{dashId}");
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

`POST https://api.moesif.com/v1/~/dashboards/{dashId}`

<h4 id="updateDashboard-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|dashId|path|string|true|No description|

<h4 id="updateDashboard-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:dashboards )
</aside>

### Delete a Dashboard

<a id="opIddeleteDashboard"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboards/{dashId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards/{dashId}',
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

r = requests.delete('https://api.moesif.com/v1/~/dashboards/{dashId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/dashboards/{dashId}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboards/{dashId}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards/{dashId}");
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

`DELETE https://api.moesif.com/v1/~/dashboards/{dashId}`

<h4 id="deleteDashboard-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|dashId|path|string|true|No description|

<h4 id="deleteDashboard-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

### Cascade delete a Dashboard

<a id="opIdcascadeDeleteDashboard"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboards/{dashId}/cascade \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards/{dashId}/cascade',
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

r = requests.delete('https://api.moesif.com/v1/~/dashboards/{dashId}/cascade', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/dashboards/{dashId}/cascade',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboards/{dashId}/cascade', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{dashId}/cascade", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards/{dashId}/cascade");
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

`DELETE https://api.moesif.com/v1/~/dashboards/{dashId}/cascade`

<h4 id="cascadeDeleteDashboard-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|dashId|path|string|true|No description|

<h4 id="cascadeDeleteDashboard-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

### Delete a Dashboard

<a id="opIddeleteDashboards"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboard/{dashId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboard/{dashId}',
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

r = requests.delete('https://api.moesif.com/v1/~/dashboard/{dashId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/dashboard/{dashId}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboard/{dashId}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboard/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboard/{dashId}");
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

`DELETE https://api.moesif.com/v1/~/dashboard/{dashId}`

<h4 id="deleteDashboards-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|dashId|path|string|true|No description|
|parent_id|query|string|false|No description|

<h4 id="deleteDashboards-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

### Select Profile View Dashboard

<a id="opIdpromoteToProfileView"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}',
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

r = requests.post('https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}");
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

`POST https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}`

<h4 id="promoteToProfileView-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|appId|path|string|true|No description|
|entity|path|string|true|No description|
|dashId|path|string|true|No description|

<h4 id="promoteToProfileView-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:dashboards update:profile_view_config )
</aside>

### Add Dashboards ACL permission

<a id="opIdaddACLPermissions"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/{id}/policy/acl \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards/{id}/policy/acl',
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

r = requests.post('https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/dashboards/{id}/policy/acl',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards/{id}/policy/acl");
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

`POST https://api.moesif.com/v1/~/dashboards/{id}/policy/acl`

<h4 id="addACLPermissions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|grantee|query|string|false|No description|
|permission|query|string|false|No description|

<h4 id="addACLPermissions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

### Delete Dashboards ACL permission

<a id="opIddeleteACLPermissions"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboards/{id}/policy/acl?grantee=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards/{id}/policy/acl?grantee=string',
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

r = requests.delete('https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', params={
  'grantee': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/dashboards/{id}/policy/acl',
  params: {
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards/{id}/policy/acl?grantee=string");
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

`DELETE https://api.moesif.com/v1/~/dashboards/{id}/policy/acl`

<h4 id="deleteACLPermissions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|grantee|query|string|true|No description|

<h4 id="deleteACLPermissions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

### Partial Update Dashboards in Batch

<a id="opIdupdateDashboardsBatch"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboard/batch \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboard/batch',
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

r = requests.post('https://api.moesif.com/v1/~/dashboard/batch', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/dashboard/batch',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboard/batch', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboard/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboard/batch");
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

`POST https://api.moesif.com/v1/~/dashboard/batch`

<h4 id="updateDashboardsBatch-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|

<h4 id="updateDashboardsBatch-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:dashboards )
</aside>

### Copy Dashboard

<a id="opIdcopyDashboard"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboard/{id}/copy \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboard/{id}/copy',
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

r = requests.post('https://api.moesif.com/v1/~/dashboard/{id}/copy', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/dashboard/{id}/copy',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboard/{id}/copy', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboard/{id}/copy", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboard/{id}/copy");
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

`POST https://api.moesif.com/v1/~/dashboard/{id}/copy`

<h4 id="copyDashboard-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|to_app_id|query|string|false|No description|

<h4 id="copyDashboard-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

### Copy All Dashboards

<a id="opIdcopyAllDashboards"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/copy?app_id=string&to_app_id=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards/copy?app_id=string&to_app_id=string',
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

r = requests.post('https://api.moesif.com/v1/~/dashboards/copy', params={
  'app_id': 'string',  'to_app_id': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/dashboards/copy',
  params: {
  'app_id' => 'string',
'to_app_id' => 'string'
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards/copy', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/copy", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards/copy?app_id=string&to_app_id=string");
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

`POST https://api.moesif.com/v1/~/dashboards/copy`

<h4 id="copyAllDashboards-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|to_app_id|query|string|true|No description|

<h4 id="copyAllDashboards-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

### Create New Dashboard

<a id="opIdcreateDashboard"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards',
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

r = requests.post('https://api.moesif.com/v1/~/dashboards', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/dashboards',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards");
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

`POST https://api.moesif.com/v1/~/dashboards`

<h4 id="createDashboard-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|

> Example response

<h4 id="createDashboard-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="createDashboard-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

### Get a Dashboard

<a id="opIdgetDashboards"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/dashboards \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/dashboards',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/~/dashboards', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/dashboards',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/dashboards', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/dashboards");
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

`GET https://api.moesif.com/v1/~/dashboards`

<h4 id="getDashboards-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|

<h4 id="getDashboards-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:dashboards )
</aside>

<h2 id="management-api-Keystore">Keystore</h2>

### Create New Encrypted key/s

<a id="opIdcreateEncryptedKeys"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/v1/~/keystore \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/v1/~/keystore',
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

r = requests.post('https://api.moesif.com/v1/v1/~/keystore', params={

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

result = RestClient.post 'https://api.moesif.com/v1/v1/~/keystore',
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
    $response = $client->request('POST','https://api.moesif.com/v1/v1/~/keystore', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/v1/~/keystore", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/v1/~/keystore");
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

`POST https://api.moesif.com/v1/v1/~/keystore`

<h4 id="createEncryptedKeys-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|_See Below_|false|No description|

> Example response

<h4 id="createEncryptedKeys-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="createEncryptedKeys-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:encrypted_keys )
</aside>

### Get Encrypted keys

<a id="opIdgetEncryptedKeys"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/v1/~/keystore \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/v1/~/keystore',
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

r = requests.get('https://api.moesif.com/v1/v1/~/keystore', params={

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

result = RestClient.get 'https://api.moesif.com/v1/v1/~/keystore',
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
    $response = $client->request('GET','https://api.moesif.com/v1/v1/~/keystore', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/v1/~/keystore", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/v1/~/keystore");
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

`GET https://api.moesif.com/v1/v1/~/keystore`

<h4 id="getEncryptedKeys-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|false|No description|
|to|query|string(date-time)|false|No description|
|type|undefined|_See Below_|false|No description|

> Example response

<h4 id="getEncryptedKeys-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getEncryptedKeys-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:encrypted_keys )
</aside>

### Get Encrypted key

<a id="opIdgetEncryptedKey"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/v1/~/keystore/{keyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/v1/~/keystore/{keyId}',
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

r = requests.get('https://api.moesif.com/v1/v1/~/keystore/{keyId}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/v1/~/keystore/{keyId}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/v1/~/keystore/{keyId}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/v1/~/keystore/{keyId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/v1/~/keystore/{keyId}");
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

`GET https://api.moesif.com/v1/v1/~/keystore/{keyId}`

<h4 id="getEncryptedKey-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|keyId|path|string|true|No description|

> Example response

<h4 id="getEncryptedKey-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getEncryptedKey-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:encrypted_keys )
</aside>

<h2 id="management-api-Workspaces">Workspaces</h2>

### Get new Workspace Token

<a id="opIdgetWorkspaceToken"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/workspaces/access_token \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/workspaces/access_token',
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

r = requests.get('https://api.moesif.com/v1/workspaces/access_token', params={

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

result = RestClient.get 'https://api.moesif.com/v1/workspaces/access_token',
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
    $response = $client->request('GET','https://api.moesif.com/v1/workspaces/access_token', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/workspaces/access_token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/workspaces/access_token");
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

`GET https://api.moesif.com/v1/workspaces/access_token`

Get a new Workspace Access Token

> Example response

> 200 undefined

```yaml
{
  "_id": "string",
  "token": "string",
  "url": "string"
}
```

<h4 id="getWorkspaceToken-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[Signeken](#signeken)|

<h4 id="getWorkspaceToken-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|
|» _id|string|true|No description|
|» token|string|true|No description|
|» url|string|false|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

### Get Workspace Templates

<a id="opIdgetWorkspaceTemplates"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/workspaces/templates \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/templates',
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

r = requests.get('https://api.moesif.com/v1/~/workspaces/templates', params={

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

result = RestClient.get 'https://api.moesif.com/v1/~/workspaces/templates',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces/templates', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/templates");
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

`GET https://api.moesif.com/v1/~/workspaces/templates`

<h4 id="getWorkspaceTemplates-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|

> Example response

> 200 undefined

```yaml
[]
```

<h4 id="getWorkspaceTemplates-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h4 id="getWorkspaceTemplates-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

### Update Existing Comment

<a id="opIdupdateComment"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}',
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

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}");
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

`POST https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}`

<h4 id="updateComment-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|commentId|path|string|true|No description|

<h4 id="updateComment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

### Delete a Comment

<a id="opIddeleteComment"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}',
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

r = requests.delete('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}");
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

`DELETE https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}`

<h4 id="deleteComment-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|commentId|path|string|true|No description|

<h4 id="deleteComment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

### Update a Workspace

<a id="opIdupdateWorkspace"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}',
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

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}");
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

`POST https://api.moesif.com/v1/~/workspaces/{id}`

<h4 id="updateWorkspace-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X GET https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}',
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

r = requests.get('https://api.moesif.com/v1/~/workspaces/{id}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/~/workspaces/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}");
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

`GET https://api.moesif.com/v1/~/workspaces/{id}`

<h4 id="getWorkspace-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X DELETE https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}',
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

r = requests.delete('https://api.moesif.com/v1/~/workspaces/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/workspaces/{id}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/workspaces/{id}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}");
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

`DELETE https://api.moesif.com/v1/~/workspaces/{id}`

<h4 id="deleteWorkspace-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

<h4 id="deleteWorkspace-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:workspaces )
</aside>

### Get a Public Workspace

<a id="opIdgetPublicWorkspace"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/workspaces/public/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/workspaces/public/{id}',
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

r = requests.get('https://api.moesif.com/v1/workspaces/public/{id}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/workspaces/public/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/workspaces/public/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/workspaces/public/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/workspaces/public/{id}");
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

`GET https://api.moesif.com/v1/workspaces/public/{id}`

<h4 id="getPublicWorkspace-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|No description|

> Example response

<h4 id="getPublicWorkspace-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getPublicWorkspace-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:public_workspaces )
</aside>

### Add ACL permission

<a id="opIdaddACLPermissions"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/policy/acl \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/policy/acl',
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

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}/policy/acl',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}/policy/acl");
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

`POST https://api.moesif.com/v1/~/workspaces/{id}/policy/acl`

<h4 id="addACLPermissions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X DELETE https://api.moesif.com/v1/~/workspaces/{id}/policy/acl?grantee=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/policy/acl?grantee=string',
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

r = requests.delete('https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', params={
  'grantee': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/workspaces/{id}/policy/acl',
  params: {
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}/policy/acl?grantee=string");
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

`DELETE https://api.moesif.com/v1/~/workspaces/{id}/policy/acl`

<h4 id="deleteACLPermissions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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

### Create New Workspace

<a id="opIdcreateWorkspace"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces',
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

r = requests.post('https://api.moesif.com/v1/~/workspaces', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces");
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

`POST https://api.moesif.com/v1/~/workspaces`

<h4 id="createWorkspace-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X GET https://api.moesif.com/v1/~/workspaces?take=0&access=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces?take=0&access=string',
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

r = requests.get('https://api.moesif.com/v1/~/workspaces', params={
  'take': '0',  'access': [
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

result = RestClient.get 'https://api.moesif.com/v1/~/workspaces',
  params: {
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces?take=0&access=string");
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

`GET https://api.moesif.com/v1/~/workspaces`

<h4 id="getWorkspaces-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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

### Create a New Comment

<a id="opIdcreateComment"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/comments \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/comments',
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

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/comments', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}/comments',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}/comments', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/comments", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}/comments");
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

`POST https://api.moesif.com/v1/~/workspaces/{id}/comments`

<h4 id="createComment-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

<h4 id="createComment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

### Get All Comments

<a id="opIdgetComments"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/workspaces/{id}/comments \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/comments',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/~/workspaces/{id}/comments', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/workspaces/{id}/comments',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces/{id}/comments', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/{id}/comments", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/{id}/comments");
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

`GET https://api.moesif.com/v1/~/workspaces/{id}/comments`

<h4 id="getComments-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

<h4 id="getComments-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

### Create New Workspace

<a id="opIdcreateDefaultWorkspaces"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/default?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/workspaces/default?app_id=string',
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

r = requests.post('https://api.moesif.com/v1/~/workspaces/default', params={
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

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/default',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/default', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/default", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/workspaces/default?app_id=string");
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

`POST https://api.moesif.com/v1/~/workspaces/default`

<h4 id="createDefaultWorkspaces-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|

> Example response

<h4 id="createDefaultWorkspaces-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="createDefaultWorkspaces-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:workspaces )
</aside>

<h2 id="management-api-Cohorts">Cohorts</h2>

### Update a Cohort

<a id="opIdupdateCohort"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/cohorts/{cohortId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/cohorts/{cohortId}',
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

r = requests.post('https://api.moesif.com/v1/~/cohorts/{cohortId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/cohorts/{cohortId}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/cohorts/{cohortId}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/cohorts/{cohortId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/cohorts/{cohortId}");
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

`POST https://api.moesif.com/v1/~/cohorts/{cohortId}`

<h4 id="updateCohort-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|cohortId|path|string|true|No description|
|body|body|_See Below_|false|No description|

<h4 id="updateCohort-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:cohorts )
</aside>

### Get Cohort

<a id="opIdgetCohort"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/cohorts/{cohortId}?cohort_type=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/cohorts/{cohortId}?cohort_type=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/~/cohorts/{cohortId}', params={
  'cohort_type': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/cohorts/{cohortId}',
  params: {
  'cohort_type' => 'string'
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/cohorts/{cohortId}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/cohorts/{cohortId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/cohorts/{cohortId}?cohort_type=string");
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

`GET https://api.moesif.com/v1/~/cohorts/{cohortId}`

<h4 id="getCohort-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|cohort_type|query|string|true|No description|
|cohortId|path|string|true|No description|

<h4 id="getCohort-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:cohorts )
</aside>

### Delete Cohort

<a id="opIddeleteCohort"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/cohorts/{cohortId} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/cohorts/{cohortId}',
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

r = requests.delete('https://api.moesif.com/v1/~/cohorts/{cohortId}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/cohorts/{cohortId}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/cohorts/{cohortId}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/cohorts/{cohortId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/cohorts/{cohortId}");
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

`DELETE https://api.moesif.com/v1/~/cohorts/{cohortId}`

<h4 id="deleteCohort-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|cohortId|path|string|true|No description|

<h4 id="deleteCohort-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:cohorts )
</aside>

### Delete Sample Rate for a Cohort

<a id="opIddeleteCohortSampleRate"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate',
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

r = requests.delete('https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate");
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

`DELETE https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate`

<h4 id="deleteCohortSampleRate-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|cohortId|path|string|true|No description|

<h4 id="deleteCohortSampleRate-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:cohorts )
</aside>

### Create New Cohort

<a id="opIdcreateCohort"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/cohorts \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/cohorts',
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

r = requests.post('https://api.moesif.com/v1/~/cohorts', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/cohorts',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/cohorts', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/cohorts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/cohorts");
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

`POST https://api.moesif.com/v1/~/cohorts`

<h4 id="createCohort-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|_See Below_|false|No description|

> Example response

<h4 id="createCohort-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="createCohort-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:cohorts )
</aside>

### Get Cohorts

<a id="opIdgetCohorts"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/cohorts?cohort_type=string \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/cohorts?cohort_type=string',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/~/cohorts', params={
  'cohort_type': 'string'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/cohorts',
  params: {
  'cohort_type' => 'string'
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/cohorts', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/cohorts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/cohorts?cohort_type=string");
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

`GET https://api.moesif.com/v1/~/cohorts`

<h4 id="getCohorts-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|cohort_type|query|string|true|No description|

<h4 id="getCohorts-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:cohorts )
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

`GET https://api.moesif.com/v1/~/oauth/tokeninfo`

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
curl -X GET https://api.moesif.com/v1/~/oauth/access_tokens?target=string&scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/oauth/access_tokens?target=string&scope=string',
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

r = requests.get('https://api.moesif.com/v1/~/oauth/access_tokens', params={
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

result = RestClient.get 'https://api.moesif.com/v1/~/oauth/access_tokens',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/oauth/access_tokens', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/oauth/access_tokens", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/oauth/access_tokens?target=string&scope=string");
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

`GET https://api.moesif.com/v1/~/oauth/access_tokens`

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

`POST https://api.moesif.com/v1/url_encoder`

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

<h2 id="management-api-Applications">Applications</h2>

### Create a new App

<a id="opIdaddApp"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/apps \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/apps',
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

r = requests.post('https://api.moesif.com/v1/~/apps', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/apps',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/apps', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/apps", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/apps");
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

`POST https://api.moesif.com/v1/~/apps`

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
  "name": "string",
  "custom_app_id": "string",
  "search_api_base_url": "string",
  "week_starts_on": 0,
  "id": "string",
  "portal_api_base_url": "string",
  "secure_proxy": true,
  "time_zone": "string"
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
|» name|string|true|No description|
|» custom_app_id|string|false|No description|
|» search_api_base_url|string|false|No description|
|» week_starts_on|integer(int32)|false|No description|
|» id|string|false|No description|
|» portal_api_base_url|string|false|No description|
|» secure_proxy|boolean|false|No description|
|» time_zone|string|false|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:apps )
</aside>

### Gets Apps

<a id="opIdgetApps"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/apps?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/apps?take=0',
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

r = requests.get('https://api.moesif.com/v1/~/apps', params={
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

result = RestClient.get 'https://api.moesif.com/v1/~/apps',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/apps', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/apps", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/apps?take=0");
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

`GET https://api.moesif.com/v1/~/apps`

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
    "name": "string",
    "custom_app_id": "string",
    "search_api_base_url": "string",
    "week_starts_on": 0,
    "id": "string",
    "portal_api_base_url": "string",
    "secure_proxy": true,
    "time_zone": "string"
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
|» name|string|true|No description|
|» custom_app_id|string|false|No description|
|» search_api_base_url|string|false|No description|
|» week_starts_on|integer(int32)|false|No description|
|» id|string|false|No description|
|» portal_api_base_url|string|false|No description|
|» secure_proxy|boolean|false|No description|
|» time_zone|string|false|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:apps )
</aside>

### Update Apps

<a id="opIdupdateApp"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/apps/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/apps/{id}',
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

r = requests.post('https://api.moesif.com/v1/~/apps/{id}', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/apps/{id}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/apps/{id}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/apps/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/apps/{id}");
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

`POST https://api.moesif.com/v1/~/apps/{id}`

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
  "name": "string",
  "custom_app_id": "string",
  "search_api_base_url": "string",
  "week_starts_on": 0,
  "portal_api_base_url": "string",
  "secure_proxy": true,
  "time_zone": "string"
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
|» name|string|false|No description|
|» custom_app_id|string|false|No description|
|» search_api_base_url|string|false|No description|
|» week_starts_on|integer(int32)|false|No description|
|» portal_api_base_url|string|false|No description|
|» secure_proxy|boolean|false|No description|
|» time_zone|string|false|No description|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:apps )
</aside>

### Delete Apps

<a id="opIddeleteApp"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/apps/{id} \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/apps/{id}',
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

r = requests.delete('https://api.moesif.com/v1/~/apps/{id}', params={

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

result = RestClient.delete 'https://api.moesif.com/v1/~/apps/{id}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/apps/{id}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/apps/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/apps/{id}");
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

`DELETE https://api.moesif.com/v1/~/apps/{id}`

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

<h2 id="management-api-EmailTemplates">Email Templates</h2>

### Create New Email Template

<a id="opIdcreateEmailTemplate"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/emails/templates \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/emails/templates',
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

r = requests.post('https://api.moesif.com/v1/~/emails/templates', params={

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

result = RestClient.post 'https://api.moesif.com/v1/~/emails/templates',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/emails/templates', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/emails/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/emails/templates");
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

`POST https://api.moesif.com/v1/~/emails/templates`

<h4 id="createEmailTemplate-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|_See Below_|false|No description|

> Example response

<h4 id="createEmailTemplate-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="createEmailTemplate-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:email_templates )
</aside>

### Get Email Templates

<a id="opIdgetEmailTemplates"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/emails/templates \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/emails/templates',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/~/emails/templates', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/emails/templates',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/emails/templates', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/emails/templates");
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

`GET https://api.moesif.com/v1/~/emails/templates`

<h4 id="getEmailTemplates-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|cohort_id|query|string|false|No description|

<h4 id="getEmailTemplates-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:email_templates )
</aside>

### Update an Email Template

<a id="opIdupdateEmailTemplate"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/emails/templates/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/emails/templates/{id}',
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

r = requests.post('https://api.moesif.com/v1/~/emails/templates/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.moesif.com/v1/~/emails/templates/{id}',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/emails/templates/{id}', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/emails/templates/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/emails/templates/{id}");
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

`POST https://api.moesif.com/v1/~/emails/templates/{id}`

<h4 id="updateEmailTemplate-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|body|body|_See Below_|false|No description|

<h4 id="updateEmailTemplate-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:email_templates )
</aside>

### Get Email Template

<a id="opIdgetEmailTemplate"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/emails/templates/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/emails/templates/{id}',
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
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.moesif.com/v1/~/emails/templates/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.moesif.com/v1/~/emails/templates/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/~/emails/templates/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/emails/templates/{id}");
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

`GET https://api.moesif.com/v1/~/emails/templates/{id}`

<h4 id="getEmailTemplate-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

<h4 id="getEmailTemplate-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:email_templates )
</aside>

### Delete Email Template

<a id="opIddeleteEmailTemplate"></a>

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/emails/templates/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/emails/templates/{id}',
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

r = requests.delete('https://api.moesif.com/v1/~/emails/templates/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/emails/templates/{id}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/emails/templates/{id}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/emails/templates/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/emails/templates/{id}");
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

`DELETE https://api.moesif.com/v1/~/emails/templates/{id}`

<h4 id="deleteEmailTemplate-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

<h4 id="deleteEmailTemplate-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:email_templates )
</aside>

<h2 id="management-api-content">Content</h2>

### Upload content

<a id="opIduploadContent"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/content?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/~/content?app_id=string',
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

r = requests.post('https://api.moesif.com/v1/~/content', params={
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

result = RestClient.post 'https://api.moesif.com/v1/~/content',
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
    $response = $client->request('POST','https://api.moesif.com/v1/~/content', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/content", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/content?app_id=string");
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

`POST https://api.moesif.com/v1/~/content`

<h4 id="uploadContent-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|

> Example response

<h4 id="uploadContent-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="uploadContent-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:content )
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

`GET https://api.moesif.com/v1/health/probe`

> Example response

> 200 undefined

```yaml
{
  "status": true,
  "region": "string",
  "build": "string",
  "health": "string",
  "name": "string"
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
|» build|string|false|No description|
|» health|string|true|No description|
|» name|string|true|No description|

<aside class="success">
This operation does not require authentication
</aside>

<h2 id="management-api-CompanyMetrics">Company Metrics</h2>

### Search CompanyMetrics/Companies

<a id="opIdsearchCompanyMetricsParent"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/companymetrics/companies \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/companymetrics/companies',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/companymetrics/companies', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/companymetrics/companies',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/companymetrics/companies', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/companymetrics/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/companymetrics/companies");
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

`POST https://api.moesif.com/v1/search/~/search/companymetrics/companies`

<h4 id="searchCompanyMetricsParent-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|false|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

<h4 id="searchCompanyMetricsParent-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="searchCompanyMetricsParent-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

### Search CompanyMetrics/Metrics

<a id="opIdsearchCompanyMetricsChild"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/companymetrics/metrics?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/companymetrics/metrics?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/companymetrics/metrics', params={
  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/companymetrics/metrics',
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
    'Accept' => '0',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/companymetrics/metrics', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/companymetrics/metrics", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/companymetrics/metrics?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`POST https://api.moesif.com/v1/search/~/search/companymetrics/metrics`

<h4 id="searchCompanyMetricsChild-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

<h4 id="searchCompanyMetricsChild-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="searchCompanyMetricsChild-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

<h2 id="management-api-UserMetrics">User Metrics</h2>

### Search UserMetrics/Metrics

<a id="opIdsearchUserMetricsChild"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/usermetrics/metrics?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/usermetrics/metrics?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/usermetrics/metrics', params={
  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/usermetrics/metrics',
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
    'Accept' => '0',
    'Authorization' => 'Bearer {access-token}',
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/usermetrics/metrics', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/usermetrics/metrics", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/usermetrics/metrics?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`POST https://api.moesif.com/v1/search/~/search/usermetrics/metrics`

<h4 id="searchUserMetricsChild-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
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

### Search User Metrics/Users

<a id="opIdsearchUserMetricsParent"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/usermetrics/users \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/usermetrics/users',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/usermetrics/users', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/usermetrics/users',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/usermetrics/users', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/usermetrics/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/usermetrics/users");
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

`POST https://api.moesif.com/v1/search/~/search/usermetrics/users`

<h4 id="searchUserMetricsParent-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|false|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
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

### Get Property Mapping for CompanyMetrics

<a id="opIdgetProperties"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/companymetrics/properties?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/mappings/companymetrics/properties?app_id=string',
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

r = requests.get('https://api.moesif.com/v1/search/~/mappings/companymetrics/properties', params={
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

result = RestClient.get 'https://api.moesif.com/v1/search/~/mappings/companymetrics/properties',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/companymetrics/properties', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/companymetrics/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/companymetrics/properties?app_id=string");
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

`GET https://api.moesif.com/v1/search/~/mappings/companymetrics/properties`

<h4 id="getProperties-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|false|No description|

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
managementAPIToken ( Scopes: read:companies )
</aside>

### Get Property Mapping for Events Request Body

<a id="opIdgetRequestBodyProperties"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/events/request/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/mappings/events/request/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.get('https://api.moesif.com/v1/search/~/mappings/events/request/body/properties', params={
  'app_id': 'string',  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.get 'https://api.moesif.com/v1/search/~/mappings/events/request/body/properties',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/events/request/body/properties', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/events/request/body/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/events/request/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`GET https://api.moesif.com/v1/search/~/mappings/events/request/body/properties`

<h4 id="getRequestBodyProperties-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|true|No description|
|to|query|string(date-time)|true|No description|
|include_values|query|boolean|false|No description|
|key_path|query|string|false|No description|

> Example response

<h4 id="getRequestBodyProperties-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getRequestBodyProperties-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:request_body_properties )
</aside>

### Get Property Mapping for Events Response Body

<a id="opIdgetResponseBodyProperties"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/events/response/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/mappings/events/response/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.get('https://api.moesif.com/v1/search/~/mappings/events/response/body/properties', params={
  'app_id': 'string',  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.get 'https://api.moesif.com/v1/search/~/mappings/events/response/body/properties',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/events/response/body/properties', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/events/response/body/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/events/response/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`GET https://api.moesif.com/v1/search/~/mappings/events/response/body/properties`

<h4 id="getResponseBodyProperties-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|true|No description|
|to|query|string(date-time)|true|No description|
|include_values|query|boolean|false|No description|
|key_path|query|string|false|No description|

> Example response

<h4 id="getResponseBodyProperties-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getResponseBodyProperties-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:response_body_properties )
</aside>

### Get Property Mapping for Company and User Metrics from the request or response body

<a id="opIdgetBodyProperties"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: 0'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'0'

};

fetch('https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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
  'Accept': '0'
}

r = requests.get('https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties', params={
  'app_id': 'string',  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '0'
}

result = RestClient.get 'https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties',
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
    
    );

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties', array(
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
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties?app_id=string&from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`GET https://api.moesif.com/v1/search/~/mappings/{metricsType}/{subType}/body/properties`

<h4 id="getBodyProperties-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|metricsType|path|string|true|No description|
|subType|path|string|true|No description|
|app_id|query|string|true|No description|
|from|query|string(date-time)|true|No description|
|to|query|string(date-time)|true|No description|
|include_values|query|boolean|false|No description|
|key_path|query|string|false|No description|

> Example response

<h4 id="getBodyProperties-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getBodyProperties-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods: managementAPIToken ( Scopes: read:response_body_properties )
</aside>

<h2 id="management-api-Subscriptions">Subscriptions</h2>

### Get a Subscription

<a id="opIdgetSubscription"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/subscriptions/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/subscriptions/{id}',
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

r = requests.get('https://api.moesif.com/v1/search/~/subscriptions/{id}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/search/~/subscriptions/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/subscriptions/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/subscriptions/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/subscriptions/{id}");
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

`GET https://api.moesif.com/v1/search/~/subscriptions/{id}`

<h4 id="getSubscription-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

> Example response

<h4 id="getSubscription-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getSubscription-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:subscriptions )
</aside>

### Create or Update Subscriptions in Batch

<a id="opIdbatchCreateSubscriptions"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/subscriptions/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/subscriptions/batch',
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

r = requests.post('https://api.moesif.com/v1/search/~/subscriptions/batch', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/subscriptions/batch',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/subscriptions/batch', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/subscriptions/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/subscriptions/batch");
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

`POST https://api.moesif.com/v1/search/~/subscriptions/batch`

<h4 id="batchCreateSubscriptions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|[Subscription](#subscription)|false|No description|

> Example response

<h4 id="batchCreateSubscriptions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="batchCreateSubscriptions-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:subscriptions update:subscriptions )
</aside>

### Create or Update a Subscription

<a id="opIdcreateSubscription"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/subscriptions \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/subscriptions',
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

r = requests.post('https://api.moesif.com/v1/search/~/subscriptions', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/subscriptions',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/subscriptions', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/subscriptions", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/subscriptions");
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

`POST https://api.moesif.com/v1/search/~/subscriptions`

<h4 id="createSubscription-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|[Subscription](#subscription)|false|No description|

> Example response

<h4 id="createSubscription-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="createSubscription-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:subscriptions update:subscriptions )
</aside>

<h2 id="management-api-Companies">Companies</h2>

### Get a Company

<a id="opIdgetCompany"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/companies/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/companies/{id}',
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

r = requests.get('https://api.moesif.com/v1/search/~/companies/{id}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/search/~/companies/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/companies/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/companies/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/companies/{id}");
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

`GET https://api.moesif.com/v1/search/~/companies/{id}`

<h4 id="getCompany-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X DELETE https://api.moesif.com/v1/search/~/companies/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/companies/{id}',
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

r = requests.delete('https://api.moesif.com/v1/search/~/companies/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/search/~/companies/{id}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/search/~/companies/{id}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/search/~/companies/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/companies/{id}");
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

`DELETE https://api.moesif.com/v1/search/~/companies/{id}`

<h4 id="deleteCompany-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|delete_events|query|boolean|false|Delete events associated with the company which can be set to true or false(default)|

<h4 id="deleteCompany-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:companies )
</aside>

### Search Companies

<a id="opIdsearchCompanies"></a>

<aside class="info">
The Moesif UI has a query generator that makes it easy to create a new query. From any workspace view in Moesif, click the <strong>Embed/API</strong> button and then select <strong>Search API</strong>.
</aside>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/companies \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/companies',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/companies', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/companies',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/companies', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/companies");
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

`POST https://api.moesif.com/v1/search/~/search/companies`

<h4 id="searchCompanies-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|body|body|_See Below_|false|The search definition using the Elasticsearch Query DSL|

> Example response

<h4 id="searchCompanies-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h4 id="searchCompanies-responseschema">Response Schema</h4>

Status Code **201**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

### Get the Subscriptions of a Company

<a id="opIdgetCompanySubscriptions"></a>

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/companies/{id}/subscriptions \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/companies/{id}/subscriptions',
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

r = requests.get('https://api.moesif.com/v1/search/~/companies/{id}/subscriptions', params={

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

result = RestClient.get 'https://api.moesif.com/v1/search/~/companies/{id}/subscriptions',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/companies/{id}/subscriptions', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/companies/{id}/subscriptions", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/companies/{id}/subscriptions");
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

`GET https://api.moesif.com/v1/search/~/companies/{id}/subscriptions`

<h4 id="getCompanySubscriptions-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|

> Example response

<h4 id="getCompanySubscriptions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h4 id="getCompanySubscriptions-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

### Update a Company

<a id="opIdupdateCompanies"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/companies \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/companies',
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

r = requests.post('https://api.moesif.com/v1/search/~/companies', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/companies',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/companies', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/companies");
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

`POST https://api.moesif.com/v1/search/~/companies`

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
curl -X POST https://api.moesif.com/v1/search/~/companies/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/companies/batch',
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

r = requests.post('https://api.moesif.com/v1/search/~/companies/batch', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/companies/batch',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/companies/batch', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/companies/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/companies/batch");
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

`POST https://api.moesif.com/v1/search/~/companies/batch`

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
curl -X POST https://api.moesif.com/v1/search/~/count/companies?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/count/companies?app_id=string',
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

r = requests.post('https://api.moesif.com/v1/search/~/count/companies', params={
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/count/companies',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/count/companies', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/count/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/count/companies?app_id=string");
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

`POST https://api.moesif.com/v1/search/~/count/companies`

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

### Count Events

<aside class="info">
The Moesif UI has a query generator that makes it easy to create a new query. From any workspace view in Moesif, click the <strong>Embed/API</strong> button and then select <strong>Search API</strong>.
</aside>
<a id="opIdcountEvents"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/count/events?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/count/events?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.post('https://api.moesif.com/v1/search/~/count/events', params={
  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/count/events',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/count/events', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/count/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/count/events?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`POST https://api.moesif.com/v1/search/~/count/events`

<h4 id="countEvents-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|track_total_hits|query|boolean|false|No description|
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

<aside class="info">
The Moesif UI has a query generator that makes it easy to create a new query. From any workspace view in Moesif, click the <strong>Embed/API</strong> button and then select <strong>Search API</strong>.
</aside>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/events?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/events?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/events', params={
  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/events',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/events', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/events?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`POST https://api.moesif.com/v1/search/~/search/events`

<h4 id="searchEvents-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
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

### Search Events in saved public Workspace

<a id="opIdsearchPublicWorkspaces"></a>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z',
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

r = requests.post('https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search', params={
  'from': '2023-07-12T19:24:07Z',  'to': '2023-07-12T19:24:07Z'
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2023-07-12T19:24:07Z&to=2023-07-12T19:24:07Z");
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

`POST https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search`

<h4 id="searchPublicWorkspaces-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|workspaceId|path|string|true|No description|
|include_details|query|boolean|false|No description|
|take|query|integer(int32)|false|No description|
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

<h4 id="searchPublicWorkspaces-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponse](#schemasearcheventsresponse)|

<h4 id="searchPublicWorkspaces-responseschema">Response Schema</h4>

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
curl -X GET https://api.moesif.com/v1/search/~/events/{id}?event_time=2023-07-12T19:24:07Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/events/{id}?event_time=2023-07-12T19:24:07Z',
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

r = requests.get('https://api.moesif.com/v1/search/~/events/{id}', params={
  'event_time': '2023-07-12T19:24:07Z'
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

result = RestClient.get 'https://api.moesif.com/v1/search/~/events/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/events/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/events/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/events/{id}?event_time=2023-07-12T19:24:07Z");
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

`GET https://api.moesif.com/v1/search/~/events/{id}`

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
curl -X POST https://api.moesif.com/v1/search/~/count/users?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/count/users?app_id=string',
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

r = requests.post('https://api.moesif.com/v1/search/~/count/users', params={
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

result = RestClient.post 'https://api.moesif.com/v1/search/~/count/users',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/count/users', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/count/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/count/users?app_id=string");
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

`POST https://api.moesif.com/v1/search/~/count/users`

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
curl -X POST https://api.moesif.com/v1/search/~/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/users',
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

r = requests.post('https://api.moesif.com/v1/search/~/users', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/users',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/users', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/users");
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

`POST https://api.moesif.com/v1/search/~/users`

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

<aside class="info">
The Moesif UI has a query generator that makes it easy to create a new query. From any workspace view in Moesif, click the <strong>Embed/API</strong> button and then select <strong>Search API</strong>.
</aside>

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/search/users',
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

r = requests.post('https://api.moesif.com/v1/search/~/search/users', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/users',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/users', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/users");
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

`POST https://api.moesif.com/v1/search/~/search/users`

<h4 id="searchUsers-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X POST https://api.moesif.com/v1/search/~/users/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/users/batch',
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

r = requests.post('https://api.moesif.com/v1/search/~/users/batch', params={

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

result = RestClient.post 'https://api.moesif.com/v1/search/~/users/batch',
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
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/users/batch', array(
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
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/users/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/users/batch");
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

`POST https://api.moesif.com/v1/search/~/users/batch`

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
curl -X GET https://api.moesif.com/v1/search/~/users/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/users/{id}',
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

r = requests.get('https://api.moesif.com/v1/search/~/users/{id}', params={

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

result = RestClient.get 'https://api.moesif.com/v1/search/~/users/{id}',
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
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/users/{id}', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/users/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/users/{id}");
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

`GET https://api.moesif.com/v1/search/~/users/{id}`

<h4 id="getUser-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
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
curl -X DELETE https://api.moesif.com/v1/search/~/users/{id} \
  -H 'Authorization: Bearer {access-token}'

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'

};

fetch('https://api.moesif.com/v1/search/~/users/{id}',
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

r = requests.delete('https://api.moesif.com/v1/search/~/users/{id}', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.moesif.com/v1/search/~/users/{id}',
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
    $response = $client->request('DELETE','https://api.moesif.com/v1/search/~/users/{id}', array(
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
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/search/~/users/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/users/{id}");
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

`DELETE https://api.moesif.com/v1/search/~/users/{id}`

<h4 id="deleteUser-parameters">Parameters</h4>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|orgId|path|string|true|No description|
|app_id|query|string|false|No description|
|id|path|string|true|No description|
|delete_events|query|boolean|false|Delete events associated with the user which can be set to true or false(default)|

<h4 id="deleteUser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:users )
</aside>


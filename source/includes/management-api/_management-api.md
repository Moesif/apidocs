<h1 id="management-api">Management API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Management API to query data in Moesif. You can use the management API to export data for custom reports or to build custom dashboards.

Base URLs:

If you're using the [Moesif secure proxy](https://www.moesif.com/docs/platform/secure-proxy/), the base URL is `http://localhost:9500/api/v1` assuming it's running on port `9500`.

* <a href="https://api.moesif.com/v1">https://api.moesif.com/v1</a>

<a href="https://www.moesif.com/terms">Terms of service</a>

# Authentication

- oAuth2 authentication. Your Management API token must be added to the request _Authorization_ header using the following format:

 `Authorization: Bearer YOUR_MANAGEMENT_API_KEY`

    - Flow: password

    - Token URL = [https://api.moesif.com/v1/:orgId/oauth/access_tokens](https://api.moesif.com/v1/:orgId/oauth/access_tokens)

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

<h1 id="management-api-governance">Governance</h1>

## createGovernanceRule

<a id="opIdcreateGovernanceRule"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/governance/rules \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/governance/rules', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/governance/rules", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/governance/rules";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create New Governance Rules*

<h3 id="creategovernancerule-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[GovernanceRuleCreateItem](#schemagovernancerulecreateitem)|false|none|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "_id": "string",
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string",
  "org_id": "string"
}
```

<h3 id="creategovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[GovernanceRulesDocument](#schemagovernancerulesdocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:governance_rules )
</aside>

## getGovernanceRules

<a id="opIdgetGovernanceRules"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/governance/rules \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/governance/rules', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/governance/rules", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/governance/rules";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Governance Rules*

<h3 id="getgovernancerules-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "_id": "string",
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string",
  "org_id": "string"
}
```

<h3 id="getgovernancerules-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[GovernanceRulesDocument](#schemagovernancerulesdocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:governance_rules )
</aside>

## updateGovernanceRule

<a id="opIdupdateGovernanceRule"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/governance/rules/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/governance/rules/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/governance/rules/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/governance/rules/{id}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update a Governance Rule*

<h3 id="updategovernancerule-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[GovernanceRuleUpdateItem](#schemagovernanceruleupdateitem)|false|none|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "_id": "string",
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string",
  "org_id": "string"
}
```

<h3 id="updategovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[GovernanceRulesDocument](#schemagovernancerulesdocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:governance_rules )
</aside>

## getGovernanceRule

<a id="opIdgetGovernanceRule"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/governance/rules/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/governance/rules/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/governance/rules/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/governance/rules/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a Governance Rule*

<h3 id="getgovernancerule-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "_id": "string",
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string",
  "org_id": "string"
}
```

<h3 id="getgovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[GovernanceRulesDocument](#schemagovernancerulesdocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:governance_rules )
</aside>

## deleteGovernanceRule

<a id="opIddeleteGovernanceRule"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/governance/rules/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/governance/rules/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/governance/rules/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/governance/rules/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a Governance Rule*

<h3 id="deletegovernancerule-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="deletegovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:governance_rules )
</aside>

<h1 id="management-api-dashboards">Dashboards</h1>

## updateDashboard

<a id="opIdupdateDashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/{dashId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/dashboards/{dashId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/dashboards/{dashId}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update a Dashboard*

<h3 id="updatedashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|dashId|path|string|true|none|

<h3 id="updatedashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:dashboards )
</aside>

## deleteDashboard

<a id="opIddeleteDashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboards/{dashId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/dashboards/{dashId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/dashboards/{dashId}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a Dashboard*

<h3 id="deletedashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|dashId|path|string|true|none|

<h3 id="deletedashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

## cascadeDeleteDashboard

<a id="opIdcascadeDeleteDashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboards/{dashId}/cascade \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/dashboards/{dashId}/cascade', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{dashId}/cascade", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/dashboards/{dashId}/cascade";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Casccade delete a Dashboard*

<h3 id="cascadedeletedashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|dashId|path|string|true|none|

<h3 id="cascadedeletedashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

## deleteDashboards

<a id="opIddeleteDashboards"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboard/{dashId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/dashboard/{dashId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboard/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/dashboard/{dashId}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a Dashboard*

<h3 id="deletedashboards-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|dashId|path|string|true|none|
|parent_id|query|string|false|none|

<h3 id="deletedashboards-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

## promoteToProfileView

<a id="opIdpromoteToProfileView"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/{appId}/{entity}/promotedashboard/{dashId}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Select Profile View Dashboard*

<h3 id="promotetoprofileview-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|appId|path|string|true|none|
|entity|path|string|true|none|
|dashId|path|string|true|none|

<h3 id="promotetoprofileview-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:dashboards update:profile_view_config )
</aside>

## addACLPermissions

<a id="opIdaddACLPermissions"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/{id}/policy/acl \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Add Dashboards ACL permission*

<h3 id="addaclpermissions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|grantee|query|string|false|none|
|permission|query|string|false|none|

<h3 id="addaclpermissions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

## deleteACLPermissions

<a id="opIddeleteACLPermissions"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/dashboards/{id}/policy/acl?grantee=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', params={
  'grantee': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete Dashboards ACL permission*

<h3 id="deleteaclpermissions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|grantee|query|string|true|none|

<h3 id="deleteaclpermissions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:dashboards )
</aside>

## copyDashboard

<a id="opIdcopyDashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboard/{id}/copy \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/dashboard/{id}/copy', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboard/{id}/copy", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/dashboard/{id}/copy";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Copy Dashboard*

<h3 id="copydashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="copydashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

## copyAllDashboards

<a id="opIdcopyAllDashboards"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/copy?app_id=string&to_app_id=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/dashboards/copy', params={
  'app_id': 'string',  'to_app_id': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/copy", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/dashboards/copy";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Copy All Dashboards*

<h3 id="copyalldashboards-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

<h3 id="copyalldashboards-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

## createDashboard

<a id="opIdcreateDashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/dashboards', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/dashboards";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create New Dashboard*

<h3 id="createdashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

> Example responses

> 201 Response

```json
{
  "parent": "string",
  "name": "string",
  "_id": "string",
  "auth_user_id": "string",
  "profile_view_promotion": "string",
  "app_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0,
  "dashboard_ids": [
    "string"
  ],
  "policy": {
    "acl": [
      {
        "grantee": "string",
        "permission": "string"
      }
    ],
    "resource": {},
    "api_scopes": [
      "string"
    ],
    "original_encoded_resource": "string"
  },
  "org_id": "string",
  "migration": {},
  "created": "2019-08-24T14:15:22Z"
}
```

<h3 id="createdashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[DashboardDocument](#schemadashboarddocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:dashboards )
</aside>

## getDashboards

<a id="opIdgetDashboards"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/dashboards \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/dashboards', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/dashboards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/dashboards";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a Dashboard*

<h3 id="getdashboards-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

<h3 id="getdashboards-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:dashboards )
</aside>

<h1 id="management-api-billing-reports">Billing Reports</h1>

## getBillingReports

<a id="opIdgetBillingReports"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/reports \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/reports',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/reports', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/reports',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/reports', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/reports", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/reports";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/reports");
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

`GET https://api.moesif.com/v1/~/billing/reports`

*Get BillingReports*

Query audit history of billing reports to external billing providers

<h3 id="getbillingreports-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|none|
|to|query|string(date-time)|false|none|
|billing_meter_id|query|string|false|none|
|company_id|query|string|false|none|
|provider|query|string|false|none|
|subscription_id|query|string|false|none|
|success|query|boolean|false|none|
|status_code|query|integer(int32)|false|none|
|error_code|query|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "company_id": "string",
    "success": true,
    "provider": "string",
    "report_version": 0,
    "usage_end_time": "2019-08-24T14:15:22Z",
    "_id": "string",
    "meter_usage": 0,
    "last_success_time": "2019-08-24T14:15:22Z",
    "billing_meter_id": "string",
    "amount": 0,
    "usage_start_time": "2019-08-24T14:15:22Z",
    "provider_requests": [
      null
    ],
    "currency": "string",
    "report_total_usage": 0,
    "channel_requests": [
      null
    ],
    "created_at": "2019-08-24T14:15:22Z",
    "app_id": "string",
    "subscription_id": "string",
    "updated_at": "2019-08-24T14:15:22Z",
    "org_id": "string",
    "meter_metric": 0
  }
]
```

<h3 id="getbillingreports-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getbillingreports-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[.BillingReport](#schema.billingreport)]|false|none|none|
|» company_id|string|true|none|none|
|» success|boolean|true|none|none|
|» provider|string|true|none|none|
|» report_version|integer(int32)|false|none|none|
|» usage_end_time|string(date-time)|true|none|none|
|» _id|string|false|none|none|
|» meter_usage|integer(int64)|true|none|none|
|» last_success_time|string(date-time)|false|none|none|
|» billing_meter_id|string|true|none|none|
|» amount|number(double)|false|none|none|
|» usage_start_time|string(date-time)|true|none|none|
|» provider_requests|[providerrequest]|true|none|none|
|» currency|string|false|none|none|
|» report_total_usage|integer(int64)|true|none|none|
|» channel_requests|[channelrequest]|true|none|none|
|» created_at|string(date-time)|false|none|none|
|» app_id|string|true|none|none|
|» subscription_id|string|true|none|none|
|» updated_at|string(date-time)|false|none|none|
|» org_id|string|true|none|none|
|» meter_metric|integer(int64)|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:billing_meters )
</aside>

## getBillingReportsMetrics

<a id="opIdgetBillingReportsMetrics"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/reports/metrics?billing_meter_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json'
};

fetch('https://api.moesif.com/v1/~/billing/reports/metrics?billing_meter_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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

r = requests.get('https://api.moesif.com/v1/~/billing/reports/metrics', params={
  'billing_meter_id': 'string',  'from': '2019-08-24T14:15:22Z',  'to': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/reports/metrics',
  params: {
  'billing_meter_id' => 'string',
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
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/reports/metrics', array(
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
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/reports/metrics", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/reports/metrics";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/reports/metrics?billing_meter_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
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

`GET https://api.moesif.com/v1/~/billing/reports/metrics`

*Get BillingReports' values for a given meter and time range for a single company or all companies*

Get BillingReports' values for a given meter and time range for a single company or all companies

<h3 id="getbillingreportsmetrics-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|billing_meter_id|query|string|true|none|
|from|query|string(date-time)|true|none|
|to|query|string(date-time)|true|none|
|success|query|boolean|false|none|
|aggregator|query|string|false|none|
|interval|query|string|false|none|
|company_id|query|string|false|none|
|subscription_id|query|string|false|none|

> Example responses

> 200 Response

```json
{
  "billing_meter_id": "string",
  "buckets": [
    {
      "start": "2019-08-24T14:15:22Z",
      "metric": null,
      "usage": null,
      "errors": [
        "string"
      ]
    }
  ]
}
```

<h3 id="getbillingreportsmetrics-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|three buckets of aggregates for the given meter and time range including Metric Value, Reported Usage, and list of errors.|[BillingMetricResponse](#schemabillingmetricresponse)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="management-api-keystore">Keystore</h1>

## createEncryptedKeys

<a id="opIdcreateEncryptedKeys"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/v1/~/keystore \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/v1/~/keystore', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/v1/~/keystore", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/v1/~/keystore";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create New Encrypted key/s*

<h3 id="createencryptedkeys-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[EncryptedKeyCreateItem](#schemaencryptedkeycreateitem)|false|none|

> Example responses

> 201 Response

```json
{
  "_id": "string",
  "to": "2019-08-24T14:15:22Z",
  "encrypted_key": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "from": "2019-08-24T14:15:22Z",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "type": "string",
  "org_id": "string",
  "month": "string"
}
```

<h3 id="createencryptedkeys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[EncryptedKeyDocument](#schemaencryptedkeydocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:encrypted_keys )
</aside>

## getEncryptedKeys

<a id="opIdgetEncryptedKeys"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/v1/~/keystore \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/v1/~/keystore', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/v1/~/keystore", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/v1/~/keystore";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Encrypted keys*

<h3 id="getencryptedkeys-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|none|
|to|query|string(date-time)|false|none|
|type|undefined|undefined|false|none|

> Example responses

> 200 Response

```json
{
  "_id": "string",
  "to": "2019-08-24T14:15:22Z",
  "encrypted_key": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "from": "2019-08-24T14:15:22Z",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "type": "string",
  "org_id": "string",
  "month": "string"
}
```

<h3 id="getencryptedkeys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[EncryptedKeyDocument](#schemaencryptedkeydocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:encrypted_keys )
</aside>

## getEncryptedKey

<a id="opIdgetEncryptedKey"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/v1/~/keystore/{keyId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/v1/~/keystore/{keyId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/v1/~/keystore/{keyId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/v1/~/keystore/{keyId}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Encrypted key*

<h3 id="getencryptedkey-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|keyId|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "_id": "string",
  "to": "2019-08-24T14:15:22Z",
  "encrypted_key": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "from": "2019-08-24T14:15:22Z",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "type": "string",
  "org_id": "string",
  "month": "string"
}
```

<h3 id="getencryptedkey-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[EncryptedKeyDocument](#schemaencryptedkeydocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:encrypted_keys )
</aside>

<h1 id="management-api-workspaces">Workspaces</h1>

## getWorkspaceToken

<a id="opIdgetWorkspaceToken"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/workspaces/access_token \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/workspaces/access_token', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/workspaces/access_token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/workspaces/access_token";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get new Workspace Token*

Get a new Workspace Access Token

> Example responses

> 200 Response

```json
{
  "_id": "string",
  "token": "string",
  "url": "string"
}
```

<h3 id="getworkspacetoken-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[com.moesif.dash.SignedTokenDTO](#schemacom.moesif.dash.signedtokendto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

## getWorkspaceTemplates

<a id="opIdgetWorkspaceTemplates"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/workspaces/templates \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/workspaces/templates', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/templates";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Workspace Templates*

<h3 id="getworkspacetemplates-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

> Example responses

> 200 Response

```json
[
  {
    "name": "string",
    "is_default": true,
    "view_count": 0,
    "_id": "string",
    "is_template": true,
    "dashboard": {},
    "auth_user_id": "string",
    "colors": {},
    "sequence": [
      {
        "delay": 0,
        "submit_data": {
          "body": {},
          "url": "string",
          "params": [
            {
              "key": "string",
              "val": "string"
            }
          ],
          "verb": "string",
          "headers": [
            {
              "key": "string",
              "val": "string"
            }
          ]
        }
      }
    ],
    "drawings": [
      {
        "name": "string",
        "direction": "string",
        "id": "string",
        "type": "string",
        "value": 0
      }
    ],
    "chart": {
      "original_encoded_view_elements": "string",
      "funnel_query": {},
      "url_query": "string",
      "to": "string",
      "view_elements": {},
      "from": "string",
      "original_encoded_funnel_query": "string",
      "es_query": {},
      "args": "string",
      "original_encoded_query": "string",
      "time_zone": "string",
      "view": "string"
    },
    "template": {
      "dynamic_fields": [
        "string"
      ],
      "dynamic_time": true
    },
    "app_id": "string",
    "type": "string",
    "width": 0,
    "sort_order": 0,
    "policy": {
      "acl": [
        {
          "grantee": "string",
          "permission": "string"
        }
      ],
      "resource": {},
      "api_scopes": [
        "string"
      ],
      "original_encoded_resource": "string"
    },
    "org_id": "string",
    "migration": {},
    "created": "2019-08-24T14:15:22Z",
    "comments": {
      "summary": {
        "count": 0,
        "latest_comment": {
          "auth_user_id": "string",
          "comment_id": "string",
          "mentions": [
            "string"
          ],
          "partner_user_id": "string",
          "message": "string",
          "created_at": "2019-08-24T14:15:22Z",
          "updated_at": "2019-08-24T14:15:22Z"
        }
      }
    }
  }
]
```

<h3 id="getworkspacetemplates-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getworkspacetemplates-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[WorkspaceDocument](#schemaworkspacedocument)]|false|none|none|
|» name|string|false|none|none|
|» is_default|boolean|false|none|none|
|» view_count|integer(int32)|true|none|none|
|» _id|string|false|none|none|
|» is_template|boolean|false|none|none|
|» dashboard|object|false|none|none|
|» auth_user_id|string|true|none|none|
|» colors|object|false|none|none|
|» sequence|[[SequenceItem](#schemasequenceitem)]|false|none|none|
|»» delay|integer(int32)|true|none|none|
|»» submit_data|object|true|none|none|
|»»» body|object|false|none|none|
|»»» url|string|true|none|none|
|»»» params|[[KeyValuePair](#schemakeyvaluepair)]|false|none|none|
|»»»» key|string|true|none|none|
|»»»» val|string|true|none|none|
|»»» verb|string|true|none|none|
|»»» headers|[[KeyValuePair](#schemakeyvaluepair)]|false|none|none|
|» drawings|[[DrawingItem](#schemadrawingitem)]|false|none|none|
|»» name|string|true|none|none|
|»» direction|string|true|none|none|
|»» id|string|true|none|none|
|»» type|string|true|none|none|
|»» value|number(double)|true|none|none|
|» chart|object|false|none|none|
|»» original_encoded_view_elements|string|false|none|none|
|»» funnel_query|object|false|none|none|
|»» url_query|string|true|none|none|
|»» to|string|false|none|none|
|»» view_elements|object|false|none|none|
|»» from|string|false|none|none|
|»» original_encoded_funnel_query|string|false|none|none|
|»» es_query|object|false|none|none|
|»» args|string|false|none|none|
|»» original_encoded_query|string|false|none|none|
|»» time_zone|string|false|none|none|
|»» view|string|true|none|none|
|» template|object|false|none|none|
|»» dynamic_fields|[string]|true|none|none|
|»» dynamic_time|boolean|false|none|none|
|» app_id|string|true|none|none|
|» type|string|false|none|none|
|» width|number(double)|false|none|none|
|» sort_order|number(double)|false|none|none|
|» policy|object|false|none|none|
|»» acl|[[ACLItem](#schemaaclitem)]|true|none|none|
|»»» grantee|string|true|none|none|
|»»» permission|string|true|none|none|
|»» resource|object|true|none|none|
|»» api_scopes|[string]|false|none|none|
|»» original_encoded_resource|string|false|none|none|
|» org_id|string|true|none|none|
|» migration|object|false|none|none|
|» created|string(date-time)|true|none|none|
|» comments|object|false|none|none|
|»» summary|object|true|none|none|
|»»» count|integer(int32)|true|none|none|
|»»» latest_comment|object|false|none|none|
|»»»» auth_user_id|string|false|none|none|
|»»»» comment_id|string|false|none|none|
|»»»» mentions|[string]|false|none|none|
|»»»» partner_user_id|string|false|none|none|
|»»»» message|string|false|none|none|
|»»»» created_at|string(date-time)|false|none|none|
|»»»» updated_at|string(date-time)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

## updateComment

<a id="opIdupdateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update Existing Comment*

<h3 id="updatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|commentId|path|string|true|none|

<h3 id="updatecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

## deleteComment

<a id="opIddeleteComment"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a Comment*

<h3 id="deletecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|commentId|path|string|true|none|

<h3 id="deletecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

## updateWorkspace

<a id="opIdupdateWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/{id}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update a Workspace*

<h3 id="updateworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="updateworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces update:public_workspaces )
</aside>

## getWorkspace

<a id="opIdgetWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/workspaces/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a Workspace*

<h3 id="getworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "_id": "string",
  "is_template": true,
  "dashboard": {},
  "auth_user_id": "string",
  "colors": {},
  "sequence": [
    {
      "delay": 0,
      "submit_data": {
        "body": {},
        "url": "string",
        "params": [
          {
            "key": "string",
            "val": "string"
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": "string",
            "val": "string"
          }
        ]
      }
    }
  ],
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0
    }
  ],
  "chart": {
    "original_encoded_view_elements": "string",
    "funnel_query": {},
    "url_query": "string",
    "to": "string",
    "view_elements": {},
    "from": "string",
    "original_encoded_funnel_query": "string",
    "es_query": {},
    "args": "string",
    "original_encoded_query": "string",
    "time_zone": "string",
    "view": "string"
  },
  "template": {
    "dynamic_fields": [
      "string"
    ],
    "dynamic_time": true
  },
  "app_id": "string",
  "type": "string",
  "width": 0,
  "sort_order": 0,
  "policy": {
    "acl": [
      {
        "grantee": "string",
        "permission": "string"
      }
    ],
    "resource": {},
    "api_scopes": [
      "string"
    ],
    "original_encoded_resource": "string"
  },
  "org_id": "string",
  "migration": {},
  "created": "2019-08-24T14:15:22Z",
  "comments": {
    "summary": {
      "count": 0,
      "latest_comment": {
        "auth_user_id": "string",
        "comment_id": "string",
        "mentions": [
          "string"
        ],
        "partner_user_id": "string",
        "message": "string",
        "created_at": "2019-08-24T14:15:22Z",
        "updated_at": "2019-08-24T14:15:22Z"
      }
    }
  }
}
```

<h3 id="getworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[WorkspaceDocument](#schemaworkspacedocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

## deleteWorkspace

<a id="opIddeleteWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/workspaces/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/workspaces/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a Workspace*

<h3 id="deleteworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="deleteworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:workspaces )
</aside>

## getPublicWorkspace

<a id="opIdgetPublicWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/workspaces/public/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/workspaces/public/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/workspaces/public/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/workspaces/public/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a Public Workspace*

<h3 id="getpublicworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "_id": "string",
  "is_template": true,
  "dashboard": {},
  "auth_user_id": "string",
  "colors": {},
  "sequence": [
    {
      "delay": 0,
      "submit_data": {
        "body": {},
        "url": "string",
        "params": [
          {
            "key": "string",
            "val": "string"
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": "string",
            "val": "string"
          }
        ]
      }
    }
  ],
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0
    }
  ],
  "chart": {
    "original_encoded_view_elements": "string",
    "funnel_query": {},
    "url_query": "string",
    "to": "string",
    "view_elements": {},
    "from": "string",
    "original_encoded_funnel_query": "string",
    "es_query": {},
    "args": "string",
    "original_encoded_query": "string",
    "time_zone": "string",
    "view": "string"
  },
  "template": {
    "dynamic_fields": [
      "string"
    ],
    "dynamic_time": true
  },
  "app_id": "string",
  "type": "string",
  "width": 0,
  "sort_order": 0,
  "policy": {
    "acl": [
      {
        "grantee": "string",
        "permission": "string"
      }
    ],
    "resource": {},
    "api_scopes": [
      "string"
    ],
    "original_encoded_resource": "string"
  },
  "org_id": "string",
  "migration": {},
  "created": "2019-08-24T14:15:22Z",
  "comments": {
    "summary": {
      "count": 0,
      "latest_comment": {
        "auth_user_id": "string",
        "comment_id": "string",
        "mentions": [
          "string"
        ],
        "partner_user_id": "string",
        "message": "string",
        "created_at": "2019-08-24T14:15:22Z",
        "updated_at": "2019-08-24T14:15:22Z"
      }
    }
  }
}
```

<h3 id="getpublicworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[WorkspaceDocument](#schemaworkspacedocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:public_workspaces )
</aside>

## addACLPermissions

<a id="opIdaddACLPermissions"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/policy/acl \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Add ACL permission*

<h3 id="addaclpermissions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|grantee|query|string|false|none|
|permission|query|string|false|none|

<h3 id="addaclpermissions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:workspaces )
</aside>

## deleteACLPermissions

<a id="opIddeleteACLPermissions"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/workspaces/{id}/policy/acl?grantee=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', params={
  'grantee': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete ACL permission*

<h3 id="deleteaclpermissions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|grantee|query|string|true|none|

<h3 id="deleteaclpermissions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:workspaces )
</aside>

## createWorkspace

<a id="opIdcreateWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/workspaces', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create New Workspace*

<h3 id="createworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|expiration|query|string(date-time)|false|none|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "_id": "string",
  "is_template": true,
  "dashboard": {},
  "auth_user_id": "string",
  "colors": {},
  "sequence": [
    {
      "delay": 0,
      "submit_data": {
        "body": {},
        "url": "string",
        "params": [
          {
            "key": "string",
            "val": "string"
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": "string",
            "val": "string"
          }
        ]
      }
    }
  ],
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0
    }
  ],
  "chart": {
    "original_encoded_view_elements": "string",
    "funnel_query": {},
    "url_query": "string",
    "to": "string",
    "view_elements": {},
    "from": "string",
    "original_encoded_funnel_query": "string",
    "es_query": {},
    "args": "string",
    "original_encoded_query": "string",
    "time_zone": "string",
    "view": "string"
  },
  "template": {
    "dynamic_fields": [
      "string"
    ],
    "dynamic_time": true
  },
  "app_id": "string",
  "type": "string",
  "width": 0,
  "sort_order": 0,
  "policy": {
    "acl": [
      {
        "grantee": "string",
        "permission": "string"
      }
    ],
    "resource": {},
    "api_scopes": [
      "string"
    ],
    "original_encoded_resource": "string"
  },
  "org_id": "string",
  "migration": {},
  "created": "2019-08-24T14:15:22Z",
  "comments": {
    "summary": {
      "count": 0,
      "latest_comment": {
        "auth_user_id": "string",
        "comment_id": "string",
        "mentions": [
          "string"
        ],
        "partner_user_id": "string",
        "message": "string",
        "created_at": "2019-08-24T14:15:22Z",
        "updated_at": "2019-08-24T14:15:22Z"
      }
    }
  }
}
```

<h3 id="createworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[WorkspaceDocument](#schemaworkspacedocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:workspaces create:public_workspaces )
</aside>

## getWorkspaces

<a id="opIdgetWorkspaces"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/workspaces?take=0&access=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/workspaces', params={
  'take': '0',  'access': [
  "string"
]
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Workspaces*

<h3 id="getworkspaces-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|take|query|integer(int32)|true|none|
|before_id|query|string|false|none|
|`type`|query|string|false|none|
|access|query|array[string]|true|none|

> Example responses

> 200 Response

```json
[
  {
    "name": "string",
    "is_default": true,
    "view_count": 0,
    "_id": "string",
    "is_template": true,
    "dashboard": {},
    "auth_user_id": "string",
    "colors": {},
    "sequence": [
      {
        "delay": 0,
        "submit_data": {
          "body": {},
          "url": "string",
          "params": [
            {
              "key": "string",
              "val": "string"
            }
          ],
          "verb": "string",
          "headers": [
            {
              "key": "string",
              "val": "string"
            }
          ]
        }
      }
    ],
    "drawings": [
      {
        "name": "string",
        "direction": "string",
        "id": "string",
        "type": "string",
        "value": 0
      }
    ],
    "chart": {
      "original_encoded_view_elements": "string",
      "funnel_query": {},
      "url_query": "string",
      "to": "string",
      "view_elements": {},
      "from": "string",
      "original_encoded_funnel_query": "string",
      "es_query": {},
      "args": "string",
      "original_encoded_query": "string",
      "time_zone": "string",
      "view": "string"
    },
    "template": {
      "dynamic_fields": [
        "string"
      ],
      "dynamic_time": true
    },
    "app_id": "string",
    "type": "string",
    "width": 0,
    "sort_order": 0,
    "policy": {
      "acl": [
        {
          "grantee": "string",
          "permission": "string"
        }
      ],
      "resource": {},
      "api_scopes": [
        "string"
      ],
      "original_encoded_resource": "string"
    },
    "org_id": "string",
    "migration": {},
    "created": "2019-08-24T14:15:22Z",
    "comments": {
      "summary": {
        "count": 0,
        "latest_comment": {
          "auth_user_id": "string",
          "comment_id": "string",
          "mentions": [
            "string"
          ],
          "partner_user_id": "string",
          "message": "string",
          "created_at": "2019-08-24T14:15:22Z",
          "updated_at": "2019-08-24T14:15:22Z"
        }
      }
    }
  }
]
```

<h3 id="getworkspaces-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getworkspaces-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[WorkspaceDocument](#schemaworkspacedocument)]|false|none|none|
|» name|string|false|none|none|
|» is_default|boolean|false|none|none|
|» view_count|integer(int32)|true|none|none|
|» _id|string|false|none|none|
|» is_template|boolean|false|none|none|
|» dashboard|object|false|none|none|
|» auth_user_id|string|true|none|none|
|» colors|object|false|none|none|
|» sequence|[[SequenceItem](#schemasequenceitem)]|false|none|none|
|»» delay|integer(int32)|true|none|none|
|»» submit_data|object|true|none|none|
|»»» body|object|false|none|none|
|»»» url|string|true|none|none|
|»»» params|[[KeyValuePair](#schemakeyvaluepair)]|false|none|none|
|»»»» key|string|true|none|none|
|»»»» val|string|true|none|none|
|»»» verb|string|true|none|none|
|»»» headers|[[KeyValuePair](#schemakeyvaluepair)]|false|none|none|
|» drawings|[[DrawingItem](#schemadrawingitem)]|false|none|none|
|»» name|string|true|none|none|
|»» direction|string|true|none|none|
|»» id|string|true|none|none|
|»» type|string|true|none|none|
|»» value|number(double)|true|none|none|
|» chart|object|false|none|none|
|»» original_encoded_view_elements|string|false|none|none|
|»» funnel_query|object|false|none|none|
|»» url_query|string|true|none|none|
|»» to|string|false|none|none|
|»» view_elements|object|false|none|none|
|»» from|string|false|none|none|
|»» original_encoded_funnel_query|string|false|none|none|
|»» es_query|object|false|none|none|
|»» args|string|false|none|none|
|»» original_encoded_query|string|false|none|none|
|»» time_zone|string|false|none|none|
|»» view|string|true|none|none|
|» template|object|false|none|none|
|»» dynamic_fields|[string]|true|none|none|
|»» dynamic_time|boolean|false|none|none|
|» app_id|string|true|none|none|
|» type|string|false|none|none|
|» width|number(double)|false|none|none|
|» sort_order|number(double)|false|none|none|
|» policy|object|false|none|none|
|»» acl|[[ACLItem](#schemaaclitem)]|true|none|none|
|»»» grantee|string|true|none|none|
|»»» permission|string|true|none|none|
|»» resource|object|true|none|none|
|»» api_scopes|[string]|false|none|none|
|»» original_encoded_resource|string|false|none|none|
|» org_id|string|true|none|none|
|» migration|object|false|none|none|
|» created|string(date-time)|true|none|none|
|» comments|object|false|none|none|
|»» summary|object|true|none|none|
|»»» count|integer(int32)|true|none|none|
|»»» latest_comment|object|false|none|none|
|»»»» auth_user_id|string|false|none|none|
|»»»» comment_id|string|false|none|none|
|»»»» mentions|[string]|false|none|none|
|»»»» partner_user_id|string|false|none|none|
|»»»» message|string|false|none|none|
|»»»» created_at|string(date-time)|false|none|none|
|»»»» updated_at|string(date-time)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

## createComment

<a id="opIdcreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/comments \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/comments', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/comments", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/{id}/comments";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create a New Comment*

<h3 id="createcomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="createcomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:workspaces )
</aside>

## getComments

<a id="opIdgetComments"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/workspaces/{id}/comments \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/workspaces/{id}/comments', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/{id}/comments", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/workspaces/{id}/comments";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get all Comments*

<h3 id="getcomments-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="getcomments-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
</aside>

<h1 id="management-api-cohorts">Cohorts</h1>

## updateCohort

<a id="opIdupdateCohort"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/cohorts/{cohortId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/cohorts/{cohortId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/cohorts/{cohortId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/cohorts/{cohortId}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update a Cohort*

<h3 id="updatecohort-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohortId|path|string|true|none|
|body|body|[CohortUpdateItem](#schemacohortupdateitem)|false|none|

<h3 id="updatecohort-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:cohorts )
</aside>

## getCohort

<a id="opIdgetCohort"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/cohorts/{cohortId}?cohort_type=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/cohorts/{cohortId}', params={
  'cohort_type': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/cohorts/{cohortId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/cohorts/{cohortId}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Cohort*

<h3 id="getcohort-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohort_type|query|string|true|none|
|cohortId|path|string|true|none|

<h3 id="getcohort-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:cohorts )
</aside>

## deleteCohort

<a id="opIddeleteCohort"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/cohorts/{cohortId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/cohorts/{cohortId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/cohorts/{cohortId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/cohorts/{cohortId}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete Cohort*

<h3 id="deletecohort-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohortId|path|string|true|none|

<h3 id="deletecohort-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:cohorts )
</aside>

## deleteCohortSampleRate

<a id="opIddeleteCohortSampleRate"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete Sample Rate for a Cohort*

<h3 id="deletecohortsamplerate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohortId|path|string|true|none|

<h3 id="deletecohortsamplerate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:cohorts )
</aside>

## createCohort

<a id="opIdcreateCohort"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/cohorts \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/cohorts', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/cohorts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/cohorts";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create New Cohort*

<h3 id="createcohort-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CohortCreateItem](#schemacohortcreateitem)|false|none|

> Example responses

> 201 Response

```json
{
  "channels": null,
  "priority": 0,
  "url_query": "string",
  "criteria": "string",
  "_id": "string",
  "sample_rate": 0,
  "notification_rule": {
    "send_on_addition": true,
    "send_on_removal": true,
    "period": "string",
    "fields": [
      "string"
    ]
  },
  "cohort_name": "string",
  "to": "string",
  "week_starts_on": 0,
  "locked_by": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "from": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "cohort_type": "string",
  "time_zone": "string",
  "org_id": "string"
}
```

<h3 id="createcohort-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[CohortDocument](#schemacohortdocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:cohorts )
</aside>

## getCohorts

<a id="opIdgetCohorts"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/cohorts?cohort_type=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/cohorts', params={
  'cohort_type': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/cohorts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/cohorts";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Cohorts*

<h3 id="getcohorts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohort_type|query|string|true|none|

<h3 id="getcohorts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:cohorts )
</aside>

<h1 id="management-api-billing-meters">Billing Meters</h1>

## getMeter

<a id="opIdgetMeter"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/meters/{meterId} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/meters/{meterId}',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/meters/{meterId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/meters/{meterId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/meters/{meterId}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/meters/{meterId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/meters/{meterId}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/meters/{meterId}");
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

`GET https://api.moesif.com/v1/~/billing/meters/{meterId}`

*Get Billing Meter by id*

Get Billing Meter by id

<h3 id="getmeter-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|meterId|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "billing_plan": {
    "provider_slug": "string",
    "friendly_name": "string",
    "params": {
      "usage_rounding_mode": "string",
      "webhook_params": {
        "reporting": {
          "report_when": [
            "string"
          ]
        },
        "channel_ids": [
          "string"
        ],
        "custom_plan": {
          "plan_id": "string"
        }
      },
      "recurly_params": {
        "plan": {
          "name": "string",
          "id": "string",
          "code": "string"
        },
        "add_on": {
          "name": "string",
          "currencies": [
            {
              "currency": "string",
              "unit_amount": null,
              "unit_amount_decimal": "string"
            }
          ],
          "usage_percentage": null,
          "add_on_type": "string",
          "external_sku": "string",
          "state": "string",
          "tiers": [
            {
              "ending_quantity": 0,
              "currencies": [
                {
                  "currency": "string",
                  "unit_amount": null,
                  "unit_amount_decimal": "string"
                }
              ]
            }
          ],
          "tier_type": "string",
          "code": "string",
          "plan_id": "string",
          "id": "string",
          "percentage_tiers": [
            {
              "tiers": [
                {
                  "ending_amount": null,
                  "usage_percent": "string"
                }
              ],
              "currency": "string"
            }
          ],
          "usage_type": "string",
          "created_at": "string",
          "usage_calculation_type": "string",
          "updated_at": "string",
          "deleted_at": "string"
        },
        "add_ons": [
          {
            "name": "string",
            "currencies": [
              {
                "currency": "string",
                "unit_amount": null,
                "unit_amount_decimal": "string"
              }
            ],
            "usage_percentage": null,
            "add_on_type": "string",
            "external_sku": "string",
            "state": "string",
            "tiers": [
              {
                "ending_quantity": 0,
                "currencies": [
                  {
                    "currency": "string",
                    "unit_amount": null,
                    "unit_amount_decimal": "string"
                  }
                ]
              }
            ],
            "tier_type": "string",
            "code": "string",
            "plan_id": "string",
            "id": "string",
            "percentage_tiers": [
              {
                "tiers": [
                  {
                    "ending_amount": null,
                    "usage_percent": "string"
                  }
                ],
                "currency": "string"
              }
            ],
            "usage_type": "string",
            "created_at": "string",
            "usage_calculation_type": "string",
            "updated_at": "string",
            "deleted_at": "string"
          }
        ]
      },
      "chargebee_params": {
        "item_plan": {
          "name": "string",
          "item_family_id": "string",
          "description": "string",
          "usage_calculation": "string",
          "external_name": "string",
          "metered": true,
          "id": "string",
          "status": "string",
          "unit": "string",
          "updated_at": 0,
          "archived_at": 0
        },
        "item_price": {
          "name": "string",
          "item_id": "string",
          "description": "string",
          "price": 0,
          "price_in_decimal": "string",
          "external_name": "string",
          "tiers": [
            {
              "starting_unit": 0,
              "ending_unit": 0,
              "price": 0
            }
          ],
          "trial_end_action": "string",
          "trial_period": 0,
          "id": "string",
          "status": "string",
          "pricing_model": "string",
          "created_at": 0,
          "period_unit": "string",
          "updated_at": 0,
          "trial_period_unit": "string",
          "item_type": "string",
          "currency_code": "string",
          "archived_at": 0,
          "free_quantity": 0,
          "period": 0
        },
        "item_prices": [
          {
            "name": "string",
            "item_id": "string",
            "description": "string",
            "price": 0,
            "price_in_decimal": "string",
            "external_name": "string",
            "tiers": [
              {
                "starting_unit": 0,
                "ending_unit": 0,
                "price": 0
              }
            ],
            "trial_end_action": "string",
            "trial_period": 0,
            "id": "string",
            "status": "string",
            "pricing_model": "string",
            "created_at": 0,
            "period_unit": "string",
            "updated_at": 0,
            "trial_period_unit": "string",
            "item_type": "string",
            "currency_code": "string",
            "archived_at": 0,
            "free_quantity": 0,
            "period": 0
          }
        ],
        "reporting": {
          "reporting_period": "string"
        }
      },
      "stripe_params": {
        "product": {
          "name": "string",
          "description": "string",
          "unit_label": "string",
          "id": "string",
          "usage_type": "string"
        },
        "price": {
          "tiers_mode": "string",
          "transform_quantity": {
            "divide_by": 0,
            "round": "string"
          },
          "price_id": "string",
          "tiers": [
            {
              "flat_amount_decimal": "string",
              "up_to": 0,
              "unit_amount_decimal": "string",
              "flat_amount": 0,
              "unit_amount": 0
            }
          ],
          "recurring": {
            "trial_period_days": 0,
            "interval": "string",
            "usage_type": "string",
            "interval_count": 0,
            "aggregate_usage": "string"
          },
          "unit_amount_decimal": "string",
          "price_nickname": "string",
          "currency": "string",
          "billing_scheme": "string",
          "unit_amount": 0,
          "created": 0,
          "active": true
        },
        "prices": [
          {
            "tiers_mode": "string",
            "transform_quantity": {
              "divide_by": 0,
              "round": "string"
            },
            "price_id": "string",
            "tiers": [
              {
                "flat_amount_decimal": "string",
                "up_to": 0,
                "unit_amount_decimal": "string",
                "flat_amount": 0,
                "unit_amount": 0
              }
            ],
            "recurring": {
              "trial_period_days": 0,
              "interval": "string",
              "usage_type": "string",
              "interval_count": 0,
              "aggregate_usage": "string"
            },
            "unit_amount_decimal": "string",
            "price_nickname": "string",
            "currency": "string",
            "billing_scheme": "string",
            "unit_amount": 0,
            "created": 0,
            "active": true
          }
        ],
        "reporting": {
          "reporting_period": "string"
        }
      },
      "zuora_params": {
        "plan_id": "string",
        "price_id": "string",
        "price_ids": [
          "string"
        ]
      },
      "usage_multiplier": null
    }
  },
  "url_query": "string",
  "_id": "string",
  "slug": "string",
  "status": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "es_query": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "org_id": "string"
}
```

<h3 id="getmeter-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[BillingMeterDocument](#schemabillingmeterdocument)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:billing_meters )
</aside>

## deleteMeter

<a id="opIddeleteMeter"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/billing/meters/{meterId} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/meters/{meterId}',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/billing/meters/{meterId}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/billing/meters/{meterId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/billing/meters/{meterId}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/billing/meters/{meterId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/billing/meters/{meterId}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/meters/{meterId}");
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

`DELETE https://api.moesif.com/v1/~/billing/meters/{meterId}`

*Delete Billing Meter by id*

Delete Billing Meter by id

<h3 id="deletemeter-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|meterId|path|string|true|none|

<h3 id="deletemeter-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:billing_meters )
</aside>

## listMeters

<a id="opIdlistMeters"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/meters \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/meters',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/meters', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/meters',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/meters', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/meters", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/meters";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/meters");
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

`GET https://api.moesif.com/v1/~/billing/meters`

*List Billing Meters*

List Billing Meters

<h3 id="listmeters-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

> Example responses

> 200 Response

```json
[
  {
    "name": "string",
    "billing_plan": {
      "provider_slug": "string",
      "friendly_name": "string",
      "params": {
        "usage_rounding_mode": "string",
        "webhook_params": {
          "reporting": {
            "report_when": [
              "string"
            ]
          },
          "channel_ids": [
            "string"
          ],
          "custom_plan": {
            "plan_id": "string"
          }
        },
        "recurly_params": {
          "plan": {
            "name": "string",
            "id": "string",
            "code": "string"
          },
          "add_on": {
            "name": "string",
            "currencies": [
              {
                "currency": "string",
                "unit_amount": null,
                "unit_amount_decimal": "string"
              }
            ],
            "usage_percentage": null,
            "add_on_type": "string",
            "external_sku": "string",
            "state": "string",
            "tiers": [
              {
                "ending_quantity": 0,
                "currencies": [
                  {
                    "currency": "string",
                    "unit_amount": null,
                    "unit_amount_decimal": "string"
                  }
                ]
              }
            ],
            "tier_type": "string",
            "code": "string",
            "plan_id": "string",
            "id": "string",
            "percentage_tiers": [
              {
                "tiers": [
                  {
                    "ending_amount": null,
                    "usage_percent": "string"
                  }
                ],
                "currency": "string"
              }
            ],
            "usage_type": "string",
            "created_at": "string",
            "usage_calculation_type": "string",
            "updated_at": "string",
            "deleted_at": "string"
          },
          "add_ons": [
            {
              "name": "string",
              "currencies": [
                {
                  "currency": "string",
                  "unit_amount": null,
                  "unit_amount_decimal": "string"
                }
              ],
              "usage_percentage": null,
              "add_on_type": "string",
              "external_sku": "string",
              "state": "string",
              "tiers": [
                {
                  "ending_quantity": 0,
                  "currencies": [
                    {
                      "currency": "string",
                      "unit_amount": null,
                      "unit_amount_decimal": "string"
                    }
                  ]
                }
              ],
              "tier_type": "string",
              "code": "string",
              "plan_id": "string",
              "id": "string",
              "percentage_tiers": [
                {
                  "tiers": [
                    {
                      "ending_amount": null,
                      "usage_percent": "string"
                    }
                  ],
                  "currency": "string"
                }
              ],
              "usage_type": "string",
              "created_at": "string",
              "usage_calculation_type": "string",
              "updated_at": "string",
              "deleted_at": "string"
            }
          ]
        },
        "chargebee_params": {
          "item_plan": {
            "name": "string",
            "item_family_id": "string",
            "description": "string",
            "usage_calculation": "string",
            "external_name": "string",
            "metered": true,
            "id": "string",
            "status": "string",
            "unit": "string",
            "updated_at": 0,
            "archived_at": 0
          },
          "item_price": {
            "name": "string",
            "item_id": "string",
            "description": "string",
            "price": 0,
            "price_in_decimal": "string",
            "external_name": "string",
            "tiers": [
              {
                "starting_unit": 0,
                "ending_unit": 0,
                "price": 0
              }
            ],
            "trial_end_action": "string",
            "trial_period": 0,
            "id": "string",
            "status": "string",
            "pricing_model": "string",
            "created_at": 0,
            "period_unit": "string",
            "updated_at": 0,
            "trial_period_unit": "string",
            "item_type": "string",
            "currency_code": "string",
            "archived_at": 0,
            "free_quantity": 0,
            "period": 0
          },
          "item_prices": [
            {
              "name": "string",
              "item_id": "string",
              "description": "string",
              "price": 0,
              "price_in_decimal": "string",
              "external_name": "string",
              "tiers": [
                {
                  "starting_unit": 0,
                  "ending_unit": 0,
                  "price": 0
                }
              ],
              "trial_end_action": "string",
              "trial_period": 0,
              "id": "string",
              "status": "string",
              "pricing_model": "string",
              "created_at": 0,
              "period_unit": "string",
              "updated_at": 0,
              "trial_period_unit": "string",
              "item_type": "string",
              "currency_code": "string",
              "archived_at": 0,
              "free_quantity": 0,
              "period": 0
            }
          ],
          "reporting": {
            "reporting_period": "string"
          }
        },
        "stripe_params": {
          "product": {
            "name": "string",
            "description": "string",
            "unit_label": "string",
            "id": "string",
            "usage_type": "string"
          },
          "price": {
            "tiers_mode": "string",
            "transform_quantity": {
              "divide_by": 0,
              "round": "string"
            },
            "price_id": "string",
            "tiers": [
              {
                "flat_amount_decimal": "string",
                "up_to": 0,
                "unit_amount_decimal": "string",
                "flat_amount": 0,
                "unit_amount": 0
              }
            ],
            "recurring": {
              "trial_period_days": 0,
              "interval": "string",
              "usage_type": "string",
              "interval_count": 0,
              "aggregate_usage": "string"
            },
            "unit_amount_decimal": "string",
            "price_nickname": "string",
            "currency": "string",
            "billing_scheme": "string",
            "unit_amount": 0,
            "created": 0,
            "active": true
          },
          "prices": [
            {
              "tiers_mode": "string",
              "transform_quantity": {
                "divide_by": 0,
                "round": "string"
              },
              "price_id": "string",
              "tiers": [
                {
                  "flat_amount_decimal": "string",
                  "up_to": 0,
                  "unit_amount_decimal": "string",
                  "flat_amount": 0,
                  "unit_amount": 0
                }
              ],
              "recurring": {
                "trial_period_days": 0,
                "interval": "string",
                "usage_type": "string",
                "interval_count": 0,
                "aggregate_usage": "string"
              },
              "unit_amount_decimal": "string",
              "price_nickname": "string",
              "currency": "string",
              "billing_scheme": "string",
              "unit_amount": 0,
              "created": 0,
              "active": true
            }
          ],
          "reporting": {
            "reporting_period": "string"
          }
        },
        "zuora_params": {
          "plan_id": "string",
          "price_id": "string",
          "price_ids": [
            "string"
          ]
        },
        "usage_multiplier": null
      }
    },
    "url_query": "string",
    "_id": "string",
    "slug": "string",
    "status": "string",
    "modified_at": "2019-08-24T14:15:22Z",
    "es_query": "string",
    "created_at": "2019-08-24T14:15:22Z",
    "app_id": "string",
    "org_id": "string"
  }
]
```

<h3 id="listmeters-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="listmeters-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[BillingMeterDocument](#schemabillingmeterdocument)]|false|none|none|
|» name|string|true|none|none|
|» billing_plan|object|true|none|none|
|»» provider_slug|string|true|none|none|
|»» friendly_name|string|false|none|none|
|»» params|object|false|none|none|
|»»» usage_rounding_mode|string|false|none|none|
|»»» webhook_params|object|false|none|none|
|»»»» reporting|object|false|none|none|
|»»»»» report_when|[string]|true|none|none|
|»»»» channel_ids|[string]|true|none|none|
|»»»» custom_plan|object|true|none|none|
|»»»»» plan_id|string|true|none|none|
|»»» recurly_params|object|false|none|none|
|»»»» plan|object|false|none|none|
|»»»»» name|string|false|none|none|
|»»»»» id|string|false|none|none|
|»»»»» code|string|true|none|none|
|»»»» add_on|object|false|none|none|
|»»»»» name|string|false|none|none|
|»»»»» currencies|[[RecurlyCurrencyAmount](#schemarecurlycurrencyamount)]|false|none|none|
|»»»»»» currency|string|true|none|none|
|»»»»»» unit_amount|double|false|none|none|
|»»»»»» unit_amount_decimal|string|false|none|none|
|»»»»» usage_percentage|double|false|none|none|
|»»»»» add_on_type|string|false|none|none|
|»»»»» external_sku|string|false|none|none|
|»»»»» state|string|false|none|none|
|»»»»» tiers|[[RecurlyAddOnTier](#schemarecurlyaddontier)]|false|none|none|
|»»»»»» ending_quantity|integer(int64)|false|none|none|
|»»»»»» currencies|[[RecurlyCurrencyAmount](#schemarecurlycurrencyamount)]|true|none|none|
|»»»»» tier_type|string|false|none|none|
|»»»»» code|string|true|none|none|
|»»»»» plan_id|string|false|none|none|
|»»»»» id|string|false|none|none|
|»»»»» percentage_tiers|[[RecurlyAddOnPercentageTiers](#schemarecurlyaddonpercentagetiers)]|false|none|none|
|»»»»»» tiers|[[RecurlyAddOnPercentageTier](#schemarecurlyaddonpercentagetier)]|false|none|none|
|»»»»»»» ending_amount|double|false|none|none|
|»»»»»»» usage_percent|string|false|none|none|
|»»»»»» currency|string|false|none|none|
|»»»»» usage_type|string|false|none|none|
|»»»»» created_at|string|false|none|none|
|»»»»» usage_calculation_type|string|false|none|none|
|»»»»» updated_at|string|false|none|none|
|»»»»» deleted_at|string|false|none|none|
|»»»» add_ons|[[RecurlyPlanAddOn](#schemarecurlyplanaddon)]|false|none|none|
|»»» chargebee_params|object|false|none|none|
|»»»» item_plan|object|false|none|none|
|»»»»» name|string|false|none|none|
|»»»»» item_family_id|string|false|none|none|
|»»»»» description|string|false|none|none|
|»»»»» usage_calculation|string|false|none|none|
|»»»»» external_name|string|false|none|none|
|»»»»» metered|boolean|false|none|none|
|»»»»» id|string|true|none|none|
|»»»»» status|string|false|none|none|
|»»»»» unit|string|false|none|none|
|»»»»» updated_at|integer(int64)|false|none|none|
|»»»»» archived_at|integer(int64)|false|none|none|
|»»»» item_price|object|false|none|none|
|»»»»» name|string|false|none|none|
|»»»»» item_id|string|false|none|none|
|»»»»» description|string|false|none|none|
|»»»»» price|integer(int64)|false|none|none|
|»»»»» price_in_decimal|string|false|none|none|
|»»»»» external_name|string|false|none|none|
|»»»»» tiers|[[ChargebeeItemPriceTier](#schemachargebeeitempricetier)]|false|none|none|
|»»»»»» starting_unit|integer(int32)|true|none|none|
|»»»»»» ending_unit|integer(int32)|false|none|none|
|»»»»»» price|integer(int32)|true|none|none|
|»»»»» trial_end_action|string|false|none|none|
|»»»»» trial_period|integer(int64)|false|none|none|
|»»»»» id|string|true|none|none|
|»»»»» status|string|false|none|none|
|»»»»» pricing_model|string|false|none|none|
|»»»»» created_at|integer(int64)|false|none|none|
|»»»»» period_unit|string|false|none|none|
|»»»»» updated_at|integer(int64)|false|none|none|
|»»»»» trial_period_unit|string|false|none|none|
|»»»»» item_type|string|false|none|none|
|»»»»» currency_code|string|false|none|none|
|»»»»» archived_at|integer(int64)|false|none|none|
|»»»»» free_quantity|integer(int64)|false|none|none|
|»»»»» period|integer(int64)|false|none|none|
|»»»» item_prices|[[ChargebeeItemPrice](#schemachargebeeitemprice)]|false|none|none|
|»»»» reporting|object|false|none|none|
|»»»»» reporting_period|string|false|none|none|
|»»» stripe_params|object|false|none|none|
|»»»» product|object|false|none|none|
|»»»»» name|string|true|none|none|
|»»»»» description|string|false|none|none|
|»»»»» unit_label|string|false|none|none|
|»»»»» id|string|true|none|none|
|»»»»» usage_type|string|false|none|none|
|»»»» price|object|false|none|none|
|»»»»» tiers_mode|string|false|none|none|
|»»»»» transform_quantity|object|false|none|none|
|»»»»»» divide_by|integer(int64)|false|none|none|
|»»»»»» round|string|false|none|none|
|»»»»» price_id|string|true|none|none|
|»»»»» tiers|[[StripeTier](#schemastripetier)]|false|none|none|
|»»»»»» flat_amount_decimal|string|false|none|none|
|»»»»»» up_to|integer(int64)|false|none|none|
|»»»»»» unit_amount_decimal|string|false|none|none|
|»»»»»» flat_amount|integer(int64)|false|none|none|
|»»»»»» unit_amount|integer(int64)|false|none|none|
|»»»»» recurring|object|false|none|none|
|»»»»»» trial_period_days|integer(int64)|false|none|none|
|»»»»»» interval|string|false|none|none|
|»»»»»» usage_type|string|false|none|none|
|»»»»»» interval_count|integer(int64)|false|none|none|
|»»»»»» aggregate_usage|string|false|none|none|
|»»»»» unit_amount_decimal|string|false|none|none|
|»»»»» price_nickname|string|false|none|none|
|»»»»» currency|string|false|none|none|
|»»»»» billing_scheme|string|false|none|none|
|»»»»» unit_amount|integer(int64)|false|none|none|
|»»»»» created|integer(int64)|false|none|none|
|»»»»» active|boolean|false|none|none|
|»»»» prices|[[StripePrice](#schemastripeprice)]|false|none|none|
|»»»» reporting|object|false|none|none|
|»»» zuora_params|object|false|none|none|
|»»»» plan_id|string|false|none|none|
|»»»» price_id|string|false|none|none|
|»»»» price_ids|[string]|false|none|none|
|»»» usage_multiplier|double|false|none|none|
|» url_query|string|true|none|none|
|» _id|string|false|none|none|
|» slug|string|true|none|none|
|» status|string|true|none|none|
|» modified_at|string(date-time)|true|none|none|
|» es_query|string|true|none|none|
|» created_at|string(date-time)|true|none|none|
|» app_id|string|true|none|none|
|» org_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:billing_meters )
</aside>

<h1 id="management-api-oauth">OAuth</h1>

## getTokenInfo

<a id="opIdgetTokenInfo"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/oauth/tokeninfo?scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/oauth/tokeninfo', params={
  'scope': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/oauth/tokeninfo", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/oauth/tokeninfo";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Token Info*

Get info for user's token

<h3 id="gettokeninfo-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|scope|query|string|true|none|

> Example responses

<h3 id="gettokeninfo-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="gettokeninfo-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:access_tokens )
</aside>

## getAccessToken

<a id="opIdgetAccessToken"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/oauth/access_tokens?target=string&scope=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/oauth/access_tokens', params={
  'target': 'string',  'scope': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/oauth/access_tokens", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/oauth/access_tokens";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a new Access Token*

Get a new access_token using logged in user's token

<h3 id="getaccesstoken-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|target|query|string|true|none|
|scope|query|string|true|none|
|publishable|query|boolean|false|none|
|expiration|query|string(date-time)|false|none|

> Example responses

> 200 Response

```json
{
  "app_token": "string"
}
```

<h3 id="getaccesstoken-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AccessTokenDTO](#schemaaccesstokendto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:access_tokens )
</aside>

<h1 id="management-api-profile-view">Profile View</h1>

## createProfileViewConfig

<a id="opIdcreateProfileViewConfig"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/profileviewconfigs?entity=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/profileviewconfigs?entity=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/profileviewconfigs', params={
  'entity': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.post 'https://api.moesif.com/v1/~/profileviewconfigs',
  params: {
  'entity' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/profileviewconfigs', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/profileviewconfigs", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/profileviewconfigs";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/profileviewconfigs?entity=string");
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

`POST https://api.moesif.com/v1/~/profileviewconfigs`

*Create a new Profile View of a given entity type.  Note the compound index (orgId, appId, entity) is unique in this collection*

<h3 id="createprofileviewconfig-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|entity|query|string|true|none|
|body|body|undefined|false|none|

> Example responses

<h3 id="createprofileviewconfig-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|created|None|

<h3 id="createprofileviewconfig-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:profileiew )
</aside>

## getProfileViewConfig

<a id="opIdgetProfileViewConfig"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/profileviewconfigs?entity=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/profileviewconfigs?entity=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/profileviewconfigs', params={
  'entity': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/profileviewconfigs',
  params: {
  'entity' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/profileviewconfigs', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/profileviewconfigs", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/profileviewconfigs";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/profileviewconfigs?entity=string");
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

`GET https://api.moesif.com/v1/~/profileviewconfigs`

*Get a Profile View*

Get the Profile View of a given entity type for authenticated users

<h3 id="getprofileviewconfig-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|entity|query|string|true|none|

> Example responses

<h3 id="getprofileviewconfig-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getprofileviewconfig-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:profileiew )
</aside>

## deleteProfileViewConfig

<a id="opIddeleteProfileViewConfig"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/profileviewconfigs?entity=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/profileviewconfigs?entity=string',
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
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/profileviewconfigs', params={
  'entity': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/profileviewconfigs',
  params: {
  'entity' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/profileviewconfigs', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/profileviewconfigs", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/profileviewconfigs";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/profileviewconfigs?entity=string");
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

`DELETE https://api.moesif.com/v1/~/profileviewconfigs`

*Delete a Profile View*

<h3 id="deleteprofileviewconfig-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|entity|query|string|true|none|

> Example responses

<h3 id="deleteprofileviewconfig-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="deleteprofileviewconfig-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:profileview )
</aside>

## upsertProfileViewConfig

<a id="opIdupsertProfileViewConfig"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.moesif.com/v1/~/profileviewconfigs?entity=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/profileviewconfigs?entity=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.put('https://api.moesif.com/v1/~/profileviewconfigs', params={
  'entity': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.put 'https://api.moesif.com/v1/~/profileviewconfigs',
  params: {
  'entity' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.moesif.com/v1/~/profileviewconfigs', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.moesif.com/v1/~/profileviewconfigs", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    /// Make a dummy request
    public async Task MakePutRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/profileviewconfigs";

      
      
      var result = await PutAsync(id, null, url);
          
    }

    /// Performs a PUT Request
    public async Task PutAsync(int id, undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute PUT request
        HttpResponseMessage response = await Client.PutAsync(url + $"/{id}", jsonContent);

        //Return response
        return await DeserializeObject(response);
    }
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/profileviewconfigs?entity=string");
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

`PUT https://api.moesif.com/v1/~/profileviewconfigs`

*Update a Profile View*

<h3 id="upsertprofileviewconfig-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|entity|query|string|true|none|
|body|body|undefined|false|none|

> Example responses

> 200 Response

```json
{}
```

<h3 id="upsertprofileviewconfig-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="upsertprofileviewconfig-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:profileview )
</aside>

<h1 id="management-api-applications">Applications</h1>

## addApp

<a id="opIdaddApp"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/apps \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/apps', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/apps", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/apps";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create a new App*

Create a new app under the selected organization

<h3 id="addapp-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[AppCreateDTO](#schemaappcreatedto)|false|none|

> Example responses

> 200 Response

```json
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

<h3 id="addapp-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AppResponseDTO](#schemaappresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:apps )
</aside>

## getApps

<a id="opIdgetApps"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/apps?take=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/apps', params={
  'take': '0'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/apps", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/apps";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Gets Apps*

Gets a list of apps for the selected organization

<h3 id="getapps-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|take|query|integer(int32)|true|none|
|before_id|query|string|false|none|

> Example responses

> 200 Response

```json
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

<h3 id="getapps-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getapps-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[AppResponseDTO](#schemaappresponsedto)]|false|none|none|
|» name|string|true|none|none|
|» custom_app_id|string|false|none|none|
|» search_api_base_url|string|false|none|none|
|» week_starts_on|integer(int32)|false|none|none|
|» id|string|false|none|none|
|» portal_api_base_url|string|false|none|none|
|» secure_proxy|boolean|false|none|none|
|» time_zone|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:apps )
</aside>

## updateApp

<a id="opIdupdateApp"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/apps/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/apps/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/apps/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/apps/{id}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update Apps*

Update the name of the app for the selected organization

<h3 id="updateapp-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
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

<h3 id="updateapp-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AppUpdateDTO](#schemaappupdatedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:apps )
</aside>

## deleteApp

<a id="opIddeleteApp"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/apps/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/apps/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/apps/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/apps/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete Apps*

Delete the app for the selected organization

<h3 id="deleteapp-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="deleteapp-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:apps )
</aside>

<h1 id="management-api-billing-catalog">Billing Catalog</h1>

## getMoesifPrice

<a id="opIdgetMoesifPrice"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/catalog/prices/{id}', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/catalog/prices/{id}',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/prices/{id}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/prices/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/catalog/prices/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string");
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

`GET https://api.moesif.com/v1/~/billing/catalog/prices/{id}`

*Get a Moesif Price*

Get the Moesif Price for a specific Plan for authenticated users

<h3 id="getmoesifprice-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "transform_quantity": {
    "divide_by": 0,
    "round": "string"
  },
  "provider": "string",
  "price_in_decimal": "string",
  "tiers": [
    {
      "up_to": null,
      "unit_price_in_decimal": "string",
      "flat_price_in_decimal": "string"
    }
  ],
  "period_units": "string",
  "plan_id": "string",
  "id": "string",
  "status": "string",
  "pricing_model": "string",
  "tax_behavior": "string",
  "currency": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}
```

<h3 id="getmoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[MoesifPrice](#schemamoesifprice)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:prices )
</aside>

## deleteMoesifPrice

<a id="opIddeleteMoesifPrice"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/billing/catalog/prices/{id}', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/billing/catalog/prices/{id}',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/billing/catalog/prices/{id}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/billing/catalog/prices/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/billing/catalog/prices/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string");
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

`DELETE https://api.moesif.com/v1/~/billing/catalog/prices/{id}`

*Delete a Moesif Price*

<h3 id="deletemoesifprice-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|

<h3 id="deletemoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|no content|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:prices )
</aside>

## updateMoesifPrice

<a id="opIdupdateMoesifPrice"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.put('https://api.moesif.com/v1/~/billing/catalog/prices/{id}', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.put 'https://api.moesif.com/v1/~/billing/catalog/prices/{id}',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.moesif.com/v1/~/billing/catalog/prices/{id}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.moesif.com/v1/~/billing/catalog/prices/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    /// Make a dummy request
    public async Task MakePutRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/billing/catalog/prices/{id}";

      
      
      var result = await PutAsync(id, null, url);
          
    }

    /// Performs a PUT Request
    public async Task PutAsync(int id, undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute PUT request
        HttpResponseMessage response = await Client.PutAsync(url + $"/{id}", jsonContent);

        //Return response
        return await DeserializeObject(response);
    }
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string");
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

`PUT https://api.moesif.com/v1/~/billing/catalog/prices/{id}`

*Update a Moesif Price*

<h3 id="updatemoesifprice-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|
|body|body|[MoesifPrice](#schemamoesifprice)|false|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "transform_quantity": {
    "divide_by": 0,
    "round": "string"
  },
  "provider": "string",
  "price_in_decimal": "string",
  "tiers": [
    {
      "up_to": null,
      "unit_price_in_decimal": "string",
      "flat_price_in_decimal": "string"
    }
  ],
  "period_units": "string",
  "plan_id": "string",
  "id": "string",
  "status": "string",
  "pricing_model": "string",
  "tax_behavior": "string",
  "currency": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}
```

<h3 id="updatemoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[MoesifPrice](#schemamoesifprice)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:prices )
</aside>

## createMoesifPlan

<a id="opIdcreateMoesifPlan"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/billing/catalog/plans?provider=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/billing/catalog/plans', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.post 'https://api.moesif.com/v1/~/billing/catalog/plans',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/billing/catalog/plans', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/billing/catalog/plans", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/catalog/plans";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/plans?provider=string");
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

`POST https://api.moesif.com/v1/~/billing/catalog/plans`

*Create a new Moesif Plan*

<h3 id="createmoesifplan-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|true|none|
|body|body|[MoesifPlan](#schemamoesifplan)|false|none|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "updated_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="createmoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|created|[MoesifPlan](#schemamoesifplan)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:plans )
</aside>

## listMoesifPlans

<a id="opIdlistMoesifPlans"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/catalog/plans \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/catalog/plans', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/catalog/plans',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/plans', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/plans", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/catalog/plans";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/plans");
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

`GET https://api.moesif.com/v1/~/billing/catalog/plans`

*List all Moesif Plans*

<h3 id="listmoesifplans-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "name": "string",
    "provider": "string",
    "description": "string",
    "id": "string",
    "status": "string",
    "product_id": "string",
    "metadata": null,
    "created_at": "2019-08-24T14:15:22Z",
    "unit": "string",
    "updated_at": "2019-08-24T14:15:22Z"
  }
]
```

<h3 id="listmoesifplans-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="listmoesifplans-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[MoesifPlan](#schemamoesifplan)]|false|none|none|
|» name|string|false|none|none|
|» provider|string|false|none|none|
|» description|string|false|none|none|
|» id|string|false|none|none|
|» status|string|false|none|none|
|» product_id|string|false|none|none|
|» metadata|collection.immutable.map[string,string]|false|none|none|
|» created_at|string(date-time)|false|none|none|
|» unit|string|false|none|none|
|» updated_at|string(date-time)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:plans )
</aside>

## getMoesifPlan

<a id="opIdgetMoesifPlan"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/catalog/plans/{id}', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/catalog/plans/{id}',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/plans/{id}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/plans/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/catalog/plans/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string");
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

`GET https://api.moesif.com/v1/~/billing/catalog/plans/{id}`

*Get a Moesif Plan*

Get the Moesif Plan for authenticated users

<h3 id="getmoesifplan-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "updated_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="getmoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[MoesifPlan](#schemamoesifplan)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:plans )
</aside>

## deleteMoesifPlan

<a id="opIddeleteMoesifPlan"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/billing/catalog/plans/{id}', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.delete 'https://api.moesif.com/v1/~/billing/catalog/plans/{id}',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/billing/catalog/plans/{id}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/billing/catalog/plans/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/billing/catalog/plans/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string");
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

`DELETE https://api.moesif.com/v1/~/billing/catalog/plans/{id}`

*Delete a Moesif Plan*

<h3 id="deletemoesifplan-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|

<h3 id="deletemoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|no content|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:plans )
</aside>

## updateMoesifPlan

<a id="opIdupdateMoesifPlan"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.put('https://api.moesif.com/v1/~/billing/catalog/plans/{id}', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.put 'https://api.moesif.com/v1/~/billing/catalog/plans/{id}',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PUT','https://api.moesif.com/v1/~/billing/catalog/plans/{id}', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.moesif.com/v1/~/billing/catalog/plans/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    /// Make a dummy request
    public async Task MakePutRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/billing/catalog/plans/{id}";

      
      
      var result = await PutAsync(id, null, url);
          
    }

    /// Performs a PUT Request
    public async Task PutAsync(int id, undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute PUT request
        HttpResponseMessage response = await Client.PutAsync(url + $"/{id}", jsonContent);

        //Return response
        return await DeserializeObject(response);
    }
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string");
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

`PUT https://api.moesif.com/v1/~/billing/catalog/plans/{id}`

*Update a Moesif Plan*

<h3 id="updatemoesifplan-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|
|body|body|[MoesifPlan](#schemamoesifplan)|false|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "updated_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="updatemoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[MoesifPlan](#schemamoesifplan)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:plans )
</aside>

## createMoesifPrice

<a id="opIdcreateMoesifPrice"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/billing/catalog/prices?provider=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices?provider=string',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/billing/catalog/prices', params={
  'provider': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.post 'https://api.moesif.com/v1/~/billing/catalog/prices',
  params: {
  'provider' => 'string'
}, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/billing/catalog/prices', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/billing/catalog/prices", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/catalog/prices";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/prices?provider=string");
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

`POST https://api.moesif.com/v1/~/billing/catalog/prices`

*Create a new Moesif Price*

<h3 id="createmoesifprice-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|true|none|
|body|body|[MoesifPrice](#schemamoesifprice)|false|none|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "transform_quantity": {
    "divide_by": 0,
    "round": "string"
  },
  "provider": "string",
  "price_in_decimal": "string",
  "tiers": [
    {
      "up_to": null,
      "unit_price_in_decimal": "string",
      "flat_price_in_decimal": "string"
    }
  ],
  "period_units": "string",
  "plan_id": "string",
  "id": "string",
  "status": "string",
  "pricing_model": "string",
  "tax_behavior": "string",
  "currency": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}
```

<h3 id="createmoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|created|[MoesifPrice](#schemamoesifprice)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:prices )
</aside>

## listMoesifPrices

<a id="opIdlistMoesifPrices"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/catalog/prices \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/billing/catalog/prices', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

result = RestClient.get 'https://api.moesif.com/v1/~/billing/catalog/prices',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/prices', array(
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/prices", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/billing/catalog/prices";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/~/billing/catalog/prices");
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

`GET https://api.moesif.com/v1/~/billing/catalog/prices`

*List all Moesif Prices for a specific Plan*

<h3 id="listmoesifprices-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "name": "string",
    "transform_quantity": {
      "divide_by": 0,
      "round": "string"
    },
    "provider": "string",
    "price_in_decimal": "string",
    "tiers": [
      {
        "up_to": null,
        "unit_price_in_decimal": "string",
        "flat_price_in_decimal": "string"
      }
    ],
    "period_units": "string",
    "plan_id": "string",
    "id": "string",
    "status": "string",
    "pricing_model": "string",
    "tax_behavior": "string",
    "currency": "string",
    "metadata": null,
    "created_at": "2019-08-24T14:15:22Z",
    "unit": "string",
    "usage_aggregator": "string",
    "period": 0
  }
]
```

<h3 id="listmoesifprices-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="listmoesifprices-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[MoesifPrice](#schemamoesifprice)]|false|none|none|
|» name|string|false|none|none|
|» transform_quantity|object|false|none|none|
|»» divide_by|integer(int64)|true|none|none|
|»» round|string|true|none|none|
|» provider|string|false|none|none|
|» price_in_decimal|string|false|none|none|
|» tiers|[[MoesifPriceTier](#schemamoesifpricetier)]|false|none|none|
|»» up_to|util.either[scala.long,string]|true|none|none|
|»» unit_price_in_decimal|string|false|none|none|
|»» flat_price_in_decimal|string|false|none|none|
|» period_units|string|false|none|none|
|» plan_id|string|false|none|none|
|» id|string|false|none|none|
|» status|string|false|none|none|
|» pricing_model|string|false|none|none|
|» tax_behavior|string|false|none|none|
|» currency|string|false|none|none|
|» metadata|collection.immutable.map[string,string]|false|none|none|
|» created_at|string(date-time)|false|none|none|
|» unit|string|false|none|none|
|» usage_aggregator|string|false|none|none|
|» period|integer(int64)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:prices )
</aside>

<h1 id="management-api-emails">Emails</h1>

## createEmailTemplate

<a id="opIdcreateEmailTemplate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/emails/templates \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/emails/templates', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/emails/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/emails/templates";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create New Email Template*

<h3 id="createemailtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[EmailTemplateCreateItem](#schemaemailtemplatecreateitem)|false|none|

> Example responses

<h3 id="createemailtemplate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="createemailtemplate-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:email_templates )
</aside>

## getEmailTemplates

<a id="opIdgetEmailTemplates"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/emails/templates \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/emails/templates', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/emails/templates";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Email Templates*

<h3 id="getemailtemplates-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohort_id|query|string|false|none|

<h3 id="getemailtemplates-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:email_templates )
</aside>

## updateEmailTemplate

<a id="opIdupdateEmailTemplate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/emails/templates/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/~/emails/templates/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/emails/templates/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/~/emails/templates/{id}";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update an Email Template*

<h3 id="updateemailtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[EmailTemplateUpdateItem](#schemaemailtemplateupdateitem)|false|none|

<h3 id="updateemailtemplate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: update:email_templates )
</aside>

## getEmailTemplate

<a id="opIdgetEmailTemplate"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/emails/templates/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/~/emails/templates/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/~/emails/templates/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Email Template*

<h3 id="getemailtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="getemailtemplate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:email_templates )
</aside>

## deleteEmailTemplate

<a id="opIddeleteEmailTemplate"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/~/emails/templates/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/~/emails/templates/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/emails/templates/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/~/emails/templates/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete Email Template*

<h3 id="deleteemailtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="deleteemailtemplate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:email_templates )
</aside>

<h1 id="management-api-companies">Companies</h1>

## searchCompanyMetrics

<a id="opIdsearchCompanyMetrics"></a>

<aside class="info">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/companymetrics/companies \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/search/companymetrics/companies', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '0',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/companymetrics/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/search/companymetrics/companies";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Search CompanyMetrics/Companies*

<h3 id="searchcompanymetrics-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|body|body|[JsValue](#schemajsvalue)|false|The search definition using the Elasticsearch Query DSL|

> Example responses

<h3 id="searchcompanymetrics-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="searchcompanymetrics-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

## getCompany

<a id="opIdgetCompany"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/companies/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/companies/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/companies/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/companies/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a Company*

<h3 id="getcompany-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

<h3 id="getcompany-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getcompany-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

## deleteCompany

<a id="opIddeleteCompany"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/search/~/companies/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/search/~/companies/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/search/~/companies/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/search/~/companies/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a Company*

<h3 id="deletecompany-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|delete_events|query|boolean|false|Delete events associated with the company which can be set to true or false(default)|

<h3 id="deletecompany-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:companies )
</aside>

## updateCompanies

<a id="opIdupdateCompanies"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/companies \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/companies', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/companies";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update a Company*

<h3 id="updatecompanies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CompanyUpdateDTO](#schemacompanyupdatedto)|false|none|

> Example responses

<h3 id="updatecompanies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="updatecompanies-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:companies update:companies )
</aside>

## batchUpdateCompanies

<a id="opIdbatchUpdateCompanies"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/companies/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/companies/batch', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/companies/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/companies/batch";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update Companies in Batch*

<h3 id="batchupdatecompanies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[object]|false|none|

> Example responses

<h3 id="batchupdatecompanies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="batchupdatecompanies-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:companies update:companies )
</aside>

## countCompanies

<a id="opIdcountCompanies"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/count/companies?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/count/companies', params={
  'app_id': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/count/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/count/companies";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Count Companies*

<h3 id="countcompanies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[JsValue](#schemajsvalue)|false|A query to restrict the results specified with the Elasticsearch Query DSL|

> Example responses

> 200 Response

```json
{}
```

<h3 id="countcompanies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[JsValue](#schemajsvalue)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

<h1 id="management-api-mappings">Mappings</h1>

## getProperties

<a id="opIdgetProperties"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/companymetrics/properties?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/mappings/companymetrics/properties', params={
  'app_id': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/companymetrics/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/mappings/companymetrics/properties";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get Property Mapping for CompanyMetrics*

<h3 id="getproperties-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|none|

> Example responses

> 200 Response

```json
{
  "underlying": {}
}
```

<h3 id="getproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[JsObject](#schemajsobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

## getRequestBodyProperties

<a id="opIdgetRequestBodyProperties"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/events/request/body/properties?app_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/mappings/events/request/body/properties?app_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/mappings/events/request/body/properties', params={
  'app_id': 'string',  'from': '2019-08-24T14:15:22Z',  'to': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/events/request/body/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/mappings/events/request/body/properties";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/events/request/body/properties?app_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
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

*Get Property Mapping for Events Request Body*

<h3 id="getrequestbodyproperties-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|none|
|to|query|string(date-time)|true|none|
|include_values|query|boolean|false|none|
|key_path|query|string|false|none|

> Example responses

> 200 Response

```json
{
  "underlying": {}
}
```

<h3 id="getrequestbodyproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[JsObject](#schemajsobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:request_body_properties )
</aside>

## getResponseBodyProperties

<a id="opIdgetResponseBodyProperties"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/events/response/body/properties?app_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/mappings/events/response/body/properties?app_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/mappings/events/response/body/properties', params={
  'app_id': 'string',  'from': '2019-08-24T14:15:22Z',  'to': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/events/response/body/properties", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/mappings/events/response/body/properties";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/events/response/body/properties?app_id=string&from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
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

*Get Property Mapping for Events Response Body*

<h3 id="getresponsebodyproperties-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|none|
|to|query|string(date-time)|true|none|
|include_values|query|boolean|false|none|
|key_path|query|string|false|none|

> Example responses

> 200 Response

```json
{
  "underlying": {}
}
```

<h3 id="getresponsebodyproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[JsObject](#schemajsobject)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:response_body_properties )
</aside>

<h1 id="management-api-subscriptions">Subscriptions</h1>

## getSubscription

<a id="opIdgetSubscription"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/subscriptions/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/subscriptions/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/subscriptions/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/subscriptions/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a Subscription*

<h3 id="getsubscription-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "trial_start": "2019-08-24T14:15:22Z",
  "company_id": "string",
  "start_date": "2019-08-24T14:15:22Z",
  "collection_method": "string",
  "provider": "string",
  "items": [
    {
      "item_price_id": "string",
      "price_id": "string",
      "is_metered": true,
      "plan_id": "string",
      "unit_of_measure": "string",
      "status": "string",
      "subscription_item_id": "string"
    }
  ],
  "current_period_start": "2019-08-24T14:15:22Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2019-08-24T14:15:22Z",
  "cancel_time": "2019-08-24T14:15:22Z",
  "status": "string",
  "trial_end": "2019-08-24T14:15:22Z",
  "external_id": "string",
  "metadata": {
    "underlying": {}
  },
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2019-08-24T14:15:22Z",
  "org_id": "string",
  "created": "2019-08-24T14:15:22Z"
}
```

<h3 id="getsubscription-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[SubscriptionDTO](#schemasubscriptiondto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:subscriptions )
</aside>

## getCompanySubscriptions

<a id="opIdgetCompanySubscriptions"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/companies/{id}/subscriptions \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/companies/{id}/subscriptions', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/companies/{id}/subscriptions", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/companies/{id}/subscriptions";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get the Subscriptions of a Company*

<h3 id="getcompanysubscriptions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

<h3 id="getcompanysubscriptions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getcompanysubscriptions-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:companies )
</aside>

## batchCreateSubscriptions

<a id="opIdbatchCreateSubscriptions"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/subscriptions/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/subscriptions/batch', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/subscriptions/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/subscriptions/batch";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create or Update Subscriptions in Batch*

<h3 id="batchcreatesubscriptions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[object]|false|none|

> Example responses

> 200 Response

```json
{
  "trial_start": "2019-08-24T14:15:22Z",
  "company_id": "string",
  "start_date": "2019-08-24T14:15:22Z",
  "collection_method": "string",
  "provider": "string",
  "items": [
    {
      "item_price_id": "string",
      "price_id": "string",
      "is_metered": true,
      "plan_id": "string",
      "unit_of_measure": "string",
      "status": "string",
      "subscription_item_id": "string"
    }
  ],
  "current_period_start": "2019-08-24T14:15:22Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2019-08-24T14:15:22Z",
  "cancel_time": "2019-08-24T14:15:22Z",
  "status": "string",
  "trial_end": "2019-08-24T14:15:22Z",
  "external_id": "string",
  "metadata": {
    "underlying": {}
  },
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2019-08-24T14:15:22Z",
  "org_id": "string",
  "created": "2019-08-24T14:15:22Z"
}
```

<h3 id="batchcreatesubscriptions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[SubscriptionDTO](#schemasubscriptiondto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:subscriptions update:subscriptions )
</aside>

## createSubscription

<a id="opIdcreateSubscription"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/subscriptions \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/subscriptions', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/subscriptions", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/subscriptions";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Create or Update a Subscription*

<h3 id="createsubscription-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[AddSubscriptionDTO](#schemaaddsubscriptiondto)|false|none|

> Example responses

> 200 Response

```json
{
  "trial_start": "2019-08-24T14:15:22Z",
  "company_id": "string",
  "start_date": "2019-08-24T14:15:22Z",
  "collection_method": "string",
  "provider": "string",
  "items": [
    {
      "item_price_id": "string",
      "price_id": "string",
      "is_metered": true,
      "plan_id": "string",
      "unit_of_measure": "string",
      "status": "string",
      "subscription_item_id": "string"
    }
  ],
  "current_period_start": "2019-08-24T14:15:22Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2019-08-24T14:15:22Z",
  "cancel_time": "2019-08-24T14:15:22Z",
  "status": "string",
  "trial_end": "2019-08-24T14:15:22Z",
  "external_id": "string",
  "metadata": {
    "underlying": {}
  },
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2019-08-24T14:15:22Z",
  "org_id": "string",
  "created": "2019-08-24T14:15:22Z"
}
```

<h3 id="createsubscription-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[SubscriptionDTO](#schemasubscriptiondto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:subscriptions update:subscriptions )
</aside>

<h1 id="management-api-metrics">Metrics</h1>

## countEvents

<a id="opIdcountEvents"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/count/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/count/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/count/events', params={
  'from': '2019-08-24T14:15:22Z',  'to': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/count/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/count/events";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/count/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
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

*Count Events*

<h3 id="countevents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|track_total_hits|query|boolean|false|none|
|body|body|[JsValue](#schemajsvalue)|false|The search definition using the Elasticsearch Query DSL|

> Example responses

> 200 Response

```json
{}
```

<h3 id="countevents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[JsValue](#schemajsvalue)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

## searchEvents

<a id="opIdsearchEvents"></a>

<aside class="info">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/search/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/search/events', params={
  'from': '2019-08-24T14:15:22Z',  'to': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/events", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/search/events";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/search/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
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

*Search Events*

<h3 id="searchevents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|body|body|[JsValue](#schemajsvalue)|false|The search definition using the Elasticsearch Query DSL|

> Example responses

> 201 Response

```json
{
  "took": 358,
  "timed_out": false,
  "hits": {
    "total": 947,
    "hits": [
      {
        "_id": "AWF5M-FDTqLFD8l5y2f4",
        "_source": {
          "duration_ms": 76,
          "request": {
            "body": {},
            "uri": "https://api.github.com",
            "user_agent": {
              "patch": "1",
              "major": "7",
              "minor": "1",
              "name": "PostmanRuntime"
            },
            "geo_ip": {
              "ip": "73.189.235.253",
              "region_name": "CA",
              "continent_code": "NA",
              "location": [
                -122.393
              ],
              "latitude": 37.769,
              "timezone": "America/Los_Angeles",
              "area_code": 415,
              "longitude": -122.393,
              "real_region_name": "California",
              "dma_code": 807,
              "postal_code": "94107",
              "city_name": "San Francisco",
              "country_code2": "US",
              "country_code3": "USA",
              "country_name": "United States"
            },
            "ip_address": "73.189.235.253",
            "verb": "GET",
            "route": "/",
            "time": "2019-07-09T06:14:58.550",
            "headers": {
              "_accept-_encoding": "gzip, deflate",
              "_connection": "close",
              "_cache-_control": "no-cache",
              "_user-_agent": "PostmanRuntime/7.1.1",
              "_host": "api.github.com",
              "_accept": "*/*"
            }
          },
          "user_id": "123454",
          "response": {
            "headers": {
              "_vary": "Accept",
              "_cache-_control": "public, max-age=60, s-maxage=60",
              "_strict-_transport-_security": "max-age=31536000; includeSubdomains; preload",
              "_access-_control-_expose-_headers": "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval",
              "_content-_security-_policy": "default-src 'none'",
              "_transfer-_encoding": "chunked",
              "_e_tag": "W/\"7dc470913f1fe9bb6c7355b50a0737bc\"",
              "_content-_type": "application/json; charset=utf-8",
              "_access-_control-_allow-_origin": "*"
            },
            "time": "2019-07-09T06:14:58.626",
            "body": {},
            "status": 200
          },
          "id": "AWF5M-FDTqLFD8l5y2f4",
          "session_token": "rdfmnw3fu24309efjc534nb421UZ9-]2JDO[ME",
          "metadata": {},
          "app_id": "198:3",
          "org_id": "177:3",
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

<h3 id="searchevents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponseDTO](#schemasearcheventsresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

## searchPublicWorkspaces

<a id="opIdsearchPublicWorkspaces"></a>

<aside class="info">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search', params={
  'from': '2019-08-24T14:15:22Z',  'to': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
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

*Search Events in saved public Workspace*

<h3 id="searchpublicworkspaces-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|workspaceId|path|string|true|none|
|include_details|query|boolean|false|none|
|take|query|integer(int32)|false|none|
|body|body|[JsValue](#schemajsvalue)|false|The search definition using the Elasticsearch Query DSL|

> Example responses

> 201 Response

```json
{
  "took": 358,
  "timed_out": false,
  "hits": {
    "total": 947,
    "hits": [
      {
        "_id": "AWF5M-FDTqLFD8l5y2f4",
        "_source": {
          "duration_ms": 76,
          "request": {
            "body": {},
            "uri": "https://api.github.com",
            "user_agent": {
              "patch": "1",
              "major": "7",
              "minor": "1",
              "name": "PostmanRuntime"
            },
            "geo_ip": {
              "ip": "73.189.235.253",
              "region_name": "CA",
              "continent_code": "NA",
              "location": [
                -122.393
              ],
              "latitude": 37.769,
              "timezone": "America/Los_Angeles",
              "area_code": 415,
              "longitude": -122.393,
              "real_region_name": "California",
              "dma_code": 807,
              "postal_code": "94107",
              "city_name": "San Francisco",
              "country_code2": "US",
              "country_code3": "USA",
              "country_name": "United States"
            },
            "ip_address": "73.189.235.253",
            "verb": "GET",
            "route": "/",
            "time": "2019-07-09T06:14:58.550",
            "headers": {
              "_accept-_encoding": "gzip, deflate",
              "_connection": "close",
              "_cache-_control": "no-cache",
              "_user-_agent": "PostmanRuntime/7.1.1",
              "_host": "api.github.com",
              "_accept": "*/*"
            }
          },
          "user_id": "123454",
          "response": {
            "headers": {
              "_vary": "Accept",
              "_cache-_control": "public, max-age=60, s-maxage=60",
              "_strict-_transport-_security": "max-age=31536000; includeSubdomains; preload",
              "_access-_control-_expose-_headers": "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval",
              "_content-_security-_policy": "default-src 'none'",
              "_transfer-_encoding": "chunked",
              "_e_tag": "W/\"7dc470913f1fe9bb6c7355b50a0737bc\"",
              "_content-_type": "application/json; charset=utf-8",
              "_access-_control-_allow-_origin": "*"
            },
            "time": "2019-07-09T06:14:58.626",
            "body": {},
            "status": 200
          },
          "id": "AWF5M-FDTqLFD8l5y2f4",
          "session_token": "rdfmnw3fu24309efjc534nb421UZ9-]2JDO[ME",
          "metadata": {},
          "app_id": "198:3",
          "org_id": "177:3",
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

<h3 id="searchpublicworkspaces-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponseDTO](#schemasearcheventsresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

## getEvent

<a id="opIdgetEvent"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/events/{id}?event_time=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/events/{id}?event_time=2019-08-24T14%3A15%3A22Z',
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/events/{id}', params={
  'event_time': '2019-08-24T14:15:22Z'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/events/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/events/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
}

```

```java
URL obj = new URL("https://api.moesif.com/v1/search/~/events/{id}?event_time=2019-08-24T14%3A15%3A22Z");
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

*Get an Event*

<h3 id="getevent-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|event_time|query|string(date-time)|true|none|

> Example responses

> 200 Response

```json
{
  "_id": "AWF5M-FDTqLFD8l5y2f4",
  "_source": {
    "duration_ms": 76,
    "request": {
      "body": {},
      "uri": "https://api.github.com",
      "user_agent": {
        "patch": "1",
        "major": "7",
        "minor": "1",
        "name": "PostmanRuntime"
      },
      "geo_ip": {
        "ip": "73.189.235.253",
        "region_name": "CA",
        "continent_code": "NA",
        "location": [
          -122.393
        ],
        "latitude": 37.769,
        "timezone": "America/Los_Angeles",
        "area_code": 415,
        "longitude": -122.393,
        "real_region_name": "California",
        "dma_code": 807,
        "postal_code": "94107",
        "city_name": "San Francisco",
        "country_code2": "US",
        "country_code3": "USA",
        "country_name": "United States"
      },
      "ip_address": "73.189.235.253",
      "verb": "GET",
      "route": "/",
      "time": "2019-07-09T06:14:58.550",
      "headers": {
        "_accept-_encoding": "gzip, deflate",
        "_connection": "close",
        "_cache-_control": "no-cache",
        "_user-_agent": "PostmanRuntime/7.1.1",
        "_host": "api.github.com",
        "_accept": "*/*"
      }
    },
    "user_id": "123454",
    "response": {
      "headers": {
        "_vary": "Accept",
        "_cache-_control": "public, max-age=60, s-maxage=60",
        "_strict-_transport-_security": "max-age=31536000; includeSubdomains; preload",
        "_access-_control-_expose-_headers": "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval",
        "_content-_security-_policy": "default-src 'none'",
        "_transfer-_encoding": "chunked",
        "_e_tag": "W/\"7dc470913f1fe9bb6c7355b50a0737bc\"",
        "_content-_type": "application/json; charset=utf-8",
        "_access-_control-_allow-_origin": "*"
      },
      "time": "2019-07-09T06:14:58.626",
      "body": {},
      "status": 200
    },
    "id": "AWF5M-FDTqLFD8l5y2f4",
    "session_token": "rdfmnw3fu24309efjc534nb421UZ9-]2JDO[ME",
    "metadata": {},
    "app_id": "198:3",
    "org_id": "177:3",
    "user": {}
  },
  "sort": [
    0
  ]
}
```

<h3 id="getevent-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[eventResponseDTO](#schemaeventresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

<h1 id="management-api-users">Users</h1>

## countUsers

<a id="opIdcountUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/count/users?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/count/users', params={
  'app_id': 'string'
}, headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/count/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/count/users";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Count Users*

<h3 id="countusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[JsValue](#schemajsvalue)|false|A query to restrict the results specified with the Elasticsearch Query DSL|

> Example responses

> 200 Response

```json
{}
```

<h3 id="countusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[JsValue](#schemajsvalue)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

## updateUsers

<a id="opIdupdateUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/users \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/users', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/users";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update a User*

<h3 id="updateusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[UserUpdateDTO](#schemauserupdatedto)|false|none|

> Example responses

> 200 Response

```json
{
  "_id": "123456",
  "_source": {
    "first_name": "John",
    "body": {},
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "first_seen_time": "2019-07-27T21:52:58.0990000Z",
    "user_agent": {
      "name": "Android",
      "os_major": "7",
      "os": "Android 7.0",
      "os_name": "Android",
      "os_minor": "0",
      "major": "7",
      "device": "Samsung SM-G955U",
      "minor": "0"
    },
    "geo_ip": {
      "ip": "107.200.85.196",
      "region_name": "South Carolina",
      "continent_code": "NA",
      "location": {
        "lon": -79.85489654541016,
        "lat": 32.822898864746094
      },
      "latitude": 32.822898864746094,
      "timezone": "America/New_York",
      "longitude": -79.85489654541016,
      "dma_code": 519,
      "postal_code": "29464",
      "region_code": "SC",
      "city_name": "Mt. Pleasant",
      "country_code2": "US",
      "country_code3": "US",
      "country_name": "United States"
    },
    "modified_time": "2019-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2019-07-27T21:52:58.0990000Z",
    "app_id": "198:3",
    "org_id": "177:3"
  },
  "sort": [
    1519768519464
  ]
}
```

<h3 id="updateusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponseDTO](#schemauserresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>

## searchUserMetrics

<a id="opIdsearchUserMetrics"></a>

<aside class="info">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/usermetrics/users \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'0',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/search/usermetrics/users', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '0',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/search/usermetrics/users", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/search/usermetrics/users";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Search UserMetrics/Users*

<h3 id="searchusermetrics-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|body|body|[JsValue](#schemajsvalue)|false|The search definition using the Elasticsearch Query DSL|

> Example responses

<h3 id="searchusermetrics-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="searchusermetrics-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

## batchUpdateUsers

<a id="opIdbatchUpdateUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/users/batch \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.post('https://api.moesif.com/v1/search/~/users/batch', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/search/~/users/batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    /// Make a dummy request
    public async Task MakePostRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/users/batch";
      
      
      await PostAsync(null, url);
      
    }

    /// Performs a POST Request
    public async Task PostAsync(undefined content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(undefined content)
    {
        //Serialize Object
        string jsonObject = JsonConvert.SerializeObject(content);

        //Create Json UTF8 String Content
        return new StringContent(jsonObject, Encoding.UTF8, "application/json");
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Update Users in Batch*

<h3 id="batchupdateusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[object]|false|none|

> Example responses

> 200 Response

```json
{
  "_id": "123456",
  "_source": {
    "first_name": "John",
    "body": {},
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "first_seen_time": "2019-07-27T21:52:58.0990000Z",
    "user_agent": {
      "name": "Android",
      "os_major": "7",
      "os": "Android 7.0",
      "os_name": "Android",
      "os_minor": "0",
      "major": "7",
      "device": "Samsung SM-G955U",
      "minor": "0"
    },
    "geo_ip": {
      "ip": "107.200.85.196",
      "region_name": "South Carolina",
      "continent_code": "NA",
      "location": {
        "lon": -79.85489654541016,
        "lat": 32.822898864746094
      },
      "latitude": 32.822898864746094,
      "timezone": "America/New_York",
      "longitude": -79.85489654541016,
      "dma_code": 519,
      "postal_code": "29464",
      "region_code": "SC",
      "city_name": "Mt. Pleasant",
      "country_code2": "US",
      "country_code3": "US",
      "country_name": "United States"
    },
    "modified_time": "2019-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2019-07-27T21:52:58.0990000Z",
    "app_id": "198:3",
    "org_id": "177:3"
  },
  "sort": [
    1519768519464
  ]
}
```

<h3 id="batchupdateusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponseDTO](#schemauserresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>

## getUser

<a id="opIdgetUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/users/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.get('https://api.moesif.com/v1/search/~/users/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/users/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    /// Make a dummy request
    public async Task MakeGetRequest()
    {
      string url = "https://api.moesif.com/v1/search/~/users/{id}";
      var result = await GetAsync(url);
    }

    /// Performs a GET Request
    public async Task GetAsync(string url)
    {
        //Start the request
        HttpResponseMessage response = await Client.GetAsync(url);

        //Validate result
        response.EnsureSuccessStatusCode();

    }
    
    
    
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Get a User*

<h3 id="getuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "_id": "123456",
  "_source": {
    "first_name": "John",
    "body": {},
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "first_seen_time": "2019-07-27T21:52:58.0990000Z",
    "user_agent": {
      "name": "Android",
      "os_major": "7",
      "os": "Android 7.0",
      "os_name": "Android",
      "os_minor": "0",
      "major": "7",
      "device": "Samsung SM-G955U",
      "minor": "0"
    },
    "geo_ip": {
      "ip": "107.200.85.196",
      "region_name": "South Carolina",
      "continent_code": "NA",
      "location": {
        "lon": -79.85489654541016,
        "lat": 32.822898864746094
      },
      "latitude": 32.822898864746094,
      "timezone": "America/New_York",
      "longitude": -79.85489654541016,
      "dma_code": 519,
      "postal_code": "29464",
      "region_code": "SC",
      "city_name": "Mt. Pleasant",
      "country_code2": "US",
      "country_code3": "US",
      "country_name": "United States"
    },
    "modified_time": "2019-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2019-07-27T21:52:58.0990000Z",
    "app_id": "198:3",
    "org_id": "177:3"
  },
  "sort": [
    1519768519464
  ]
}
```

<h3 id="getuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponseDTO](#schemauserresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
</aside>

## deleteUser

<a id="opIddeleteUser"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://api.moesif.com/v1/search/~/users/{id} \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
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
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}

r = requests.delete('https://api.moesif.com/v1/search/~/users/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
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
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
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
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/search/~/users/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```csharp
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

/// <<summary>>
/// Example of Http Client
/// <</summary>>
public class HttpExample
{
    private HttpClient Client { get; set; }

    /// <<summary>>
    /// Setup http client
    /// <</summary>>
    public HttpExample()
    {
      Client = new HttpClient();
    }
    
    
    
    
    /// Make a dummy request
    public async Task MakeDeleteRequest()
    {
      int id = 1;
      string url = "https://api.moesif.com/v1/search/~/users/{id}";

      await DeleteAsync(id, url);
    }

    /// Performs a DELETE Request
    public async Task DeleteAsync(int id, string url)
    {
        //Execute DELETE request
        HttpResponseMessage response = await Client.DeleteAsync(url + $"/{id}");

        //Return response
        await DeserializeObject(response);
    }
    
    /// Deserialize object from request response
    private async Task DeserializeObject(HttpResponseMessage response)
    {
        //Read body 
        string responseBody = await response.Content.ReadAsStringAsync();

        //Deserialize Body to object
        var result = JsonConvert.DeserializeObject(responseBody);
    }
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

*Delete a User*

<h3 id="deleteuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|delete_events|query|boolean|false|Delete events associated with the user which can be set to true or false(default)|

<h3 id="deleteuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: delete:users )
</aside>

# Schemas

<h2 id="tocS_StripeTier">StripeTier</h2>

<a id="schemastripetier"></a>
<a id="schema_StripeTier"></a>
<a id="tocSstripetier"></a>
<a id="tocsstripetier"></a>

```json
{
  "flat_amount_decimal": "string",
  "up_to": 0,
  "unit_amount_decimal": "string",
  "flat_amount": 0,
  "unit_amount": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|flat_amount_decimal|string|false|none|none|
|up_to|integer(int64)|false|none|none|
|unit_amount_decimal|string|false|none|none|
|flat_amount|integer(int64)|false|none|none|
|unit_amount|integer(int64)|false|none|none|

<h2 id="tocS_CohortDocument">CohortDocument</h2>

<a id="schemacohortdocument"></a>
<a id="schema_CohortDocument"></a>
<a id="tocScohortdocument"></a>
<a id="tocscohortdocument"></a>

```json
{
  "channels": null,
  "priority": 0,
  "url_query": "string",
  "criteria": "string",
  "_id": "string",
  "sample_rate": 0,
  "notification_rule": {
    "send_on_addition": true,
    "send_on_removal": true,
    "period": "string",
    "fields": [
      "string"
    ]
  },
  "cohort_name": "string",
  "to": "string",
  "week_starts_on": 0,
  "locked_by": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "from": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "cohort_type": "string",
  "time_zone": "string",
  "org_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|channels|array[string]|false|none|none|
|priority|integer(int32)|false|none|none|
|url_query|string|false|none|none|
|criteria|string|true|none|none|
|_id|string|false|none|none|
|sample_rate|integer(int32)|false|none|none|
|notification_rule|[NotificationRule](#schemanotificationrule)|false|none|none|
|cohort_name|string|true|none|none|
|to|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|locked_by|string|false|none|none|
|modified_at|string(date-time)|true|none|none|
|from|string|false|none|none|
|created_at|string(date-time)|true|none|none|
|app_id|string|true|none|none|
|cohort_type|string|true|none|none|
|time_zone|string|false|none|none|
|org_id|string|true|none|none|

<h2 id="tocS_RulesResponseItem">RulesResponseItem</h2>

<a id="schemarulesresponseitem"></a>
<a id="schema_RulesResponseItem"></a>
<a id="tocSrulesresponseitem"></a>
<a id="tocsrulesresponseitem"></a>

```json
{
  "status": 0,
  "headers": null,
  "body": {},
  "original_encoded_body": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|status|integer(int32)|false|none|none|
|headers|collection.immutable.map[string,string]|false|none|none|
|body|object|false|none|none|
|original_encoded_body|string|false|none|none|

<h2 id="tocS_AppCreateDTO">AppCreateDTO</h2>

<a id="schemaappcreatedto"></a>
<a id="schema_AppCreateDTO"></a>
<a id="tocSappcreatedto"></a>
<a id="tocsappcreatedto"></a>

```json
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|custom_app_id|string|false|none|none|
|search_api_base_url|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|portal_api_base_url|string|false|none|none|
|secure_proxy|boolean|false|none|none|
|time_zone|string|false|none|none|

<h2 id="tocS_AppUpdateDTO">AppUpdateDTO</h2>

<a id="schemaappupdatedto"></a>
<a id="schema_AppUpdateDTO"></a>
<a id="tocSappupdatedto"></a>
<a id="tocsappupdatedto"></a>

```json
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|custom_app_id|string|false|none|none|
|search_api_base_url|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|portal_api_base_url|string|false|none|none|
|secure_proxy|boolean|false|none|none|
|time_zone|string|false|none|none|

<h2 id="tocS_CohortCreateItem">CohortCreateItem</h2>

<a id="schemacohortcreateitem"></a>
<a id="schema_CohortCreateItem"></a>
<a id="tocScohortcreateitem"></a>
<a id="tocscohortcreateitem"></a>

```json
{
  "channels": null,
  "priority": 0,
  "url_query": "string",
  "criteria": {},
  "notification_rule": {
    "send_on_addition": true,
    "send_on_removal": true,
    "period": "string",
    "fields": [
      "string"
    ]
  },
  "cohort_name": "string",
  "to": "string",
  "week_starts_on": 0,
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|channels|array[string]|false|none|none|
|priority|integer(int32)|false|none|none|
|url_query|string|false|none|none|
|criteria|object|true|none|none|
|notification_rule|[NotificationRule](#schemanotificationrule)|false|none|none|
|cohort_name|string|true|none|none|
|to|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|locked_by|string|false|none|none|
|from|string|false|none|none|
|cohort_type|string|true|none|none|
|time_zone|string|false|none|none|

<h2 id="tocS_CustomReportPlan">CustomReportPlan</h2>

<a id="schemacustomreportplan"></a>
<a id="schema_CustomReportPlan"></a>
<a id="tocScustomreportplan"></a>
<a id="tocscustomreportplan"></a>

```json
{
  "plan_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|plan_id|string|true|none|none|

<h2 id="tocS_BillingMetricResponse">BillingMetricResponse</h2>

<a id="schemabillingmetricresponse"></a>
<a id="schema_BillingMetricResponse"></a>
<a id="tocSbillingmetricresponse"></a>
<a id="tocsbillingmetricresponse"></a>

```json
{
  "billing_meter_id": "string",
  "buckets": [
    {
      "start": "2019-08-24T14:15:22Z",
      "metric": null,
      "usage": null,
      "errors": [
        "string"
      ]
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|billing_meter_id|string|true|none|none|
|buckets|[[BillingMetricBucket](#schemabillingmetricbucket)]|true|none|none|

<h2 id="tocS_EmailAddresses">EmailAddresses</h2>

<a id="schemaemailaddresses"></a>
<a id="schema_EmailAddresses"></a>
<a id="tocSemailaddresses"></a>
<a id="tocsemailaddresses"></a>

```json
{
  "from": "string",
  "cc": [
    "string"
  ],
  "bcc": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|from|string|true|none|none|
|cc|[string]|true|none|none|
|bcc|[string]|true|none|none|

<h2 id="tocS_Plan">Plan</h2>

<a id="schemaplan"></a>
<a id="schema_Plan"></a>
<a id="tocSplan"></a>
<a id="tocsplan"></a>

```json
{
  "provider": "string",
  "plan_id": "string",
  "price_ids": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|provider|string|true|none|none|
|plan_id|string|true|none|none|
|price_ids|[string]|true|none|none|

<h2 id="tocS_SequenceItem">SequenceItem</h2>

<a id="schemasequenceitem"></a>
<a id="schema_SequenceItem"></a>
<a id="tocSsequenceitem"></a>
<a id="tocssequenceitem"></a>

```json
{
  "delay": 0,
  "submit_data": {
    "body": {},
    "url": "string",
    "params": [
      {
        "key": "string",
        "val": "string"
      }
    ],
    "verb": "string",
    "headers": [
      {
        "key": "string",
        "val": "string"
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|delay|integer(int32)|true|none|none|
|submit_data|[SubmitData](#schemasubmitdata)|true|none|none|

<h2 id="tocS_Cohort">Cohort</h2>

<a id="schemacohort"></a>
<a id="schema_Cohort"></a>
<a id="tocScohort"></a>
<a id="tocscohort"></a>

```json
{
  "id": "string",
  "type": "string",
  "config": {
    "url_query": "string",
    "criteria": "string",
    "cohort_name": "string",
    "to": "string",
    "from": "string",
    "cohort_type": "string",
    "time_zone": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|true|none|none|
|type|string|true|none|none|
|config|[CohortConfig](#schemacohortconfig)|false|none|none|

<h2 id="tocS_StripePrice">StripePrice</h2>

<a id="schemastripeprice"></a>
<a id="schema_StripePrice"></a>
<a id="tocSstripeprice"></a>
<a id="tocsstripeprice"></a>

```json
{
  "tiers_mode": "string",
  "transform_quantity": {
    "divide_by": 0,
    "round": "string"
  },
  "price_id": "string",
  "tiers": [
    {
      "flat_amount_decimal": "string",
      "up_to": 0,
      "unit_amount_decimal": "string",
      "flat_amount": 0,
      "unit_amount": 0
    }
  ],
  "recurring": {
    "trial_period_days": 0,
    "interval": "string",
    "usage_type": "string",
    "interval_count": 0,
    "aggregate_usage": "string"
  },
  "unit_amount_decimal": "string",
  "price_nickname": "string",
  "currency": "string",
  "billing_scheme": "string",
  "unit_amount": 0,
  "created": 0,
  "active": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|tiers_mode|string|false|none|none|
|transform_quantity|[StripeTransformQuantity](#schemastripetransformquantity)|false|none|none|
|price_id|string|true|none|none|
|tiers|[[StripeTier](#schemastripetier)]|false|none|none|
|recurring|[StripeRecurring](#schemastriperecurring)|false|none|none|
|unit_amount_decimal|string|false|none|none|
|price_nickname|string|false|none|none|
|currency|string|false|none|none|
|billing_scheme|string|false|none|none|
|unit_amount|integer(int64)|false|none|none|
|created|integer(int64)|false|none|none|
|active|boolean|false|none|none|

<h2 id="tocS_RegexCondition">RegexCondition</h2>

<a id="schemaregexcondition"></a>
<a id="schema_RegexCondition"></a>
<a id="tocSregexcondition"></a>
<a id="tocsregexcondition"></a>

```json
{
  "path": "string",
  "value": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|path|string|true|none|none|
|value|string|true|none|none|

<h2 id="tocS_TemplateConfig">TemplateConfig</h2>

<a id="schematemplateconfig"></a>
<a id="schema_TemplateConfig"></a>
<a id="tocStemplateconfig"></a>
<a id="tocstemplateconfig"></a>

```json
{
  "subject": "string",
  "editor": "string",
  "design": {},
  "thumbnail_url": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|subject|string|true|none|none|
|editor|string|true|none|none|
|design|object|true|none|none|
|thumbnail_url|string|false|none|none|

<h2 id="tocS_RecurlyCurrencyAmount">RecurlyCurrencyAmount</h2>

<a id="schemarecurlycurrencyamount"></a>
<a id="schema_RecurlyCurrencyAmount"></a>
<a id="tocSrecurlycurrencyamount"></a>
<a id="tocsrecurlycurrencyamount"></a>

```json
{
  "currency": "string",
  "unit_amount": null,
  "unit_amount_decimal": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|currency|string|true|none|none|
|unit_amount|double|false|none|none|
|unit_amount_decimal|string|false|none|none|

<h2 id="tocS_MoesifTransformQuantity">MoesifTransformQuantity</h2>

<a id="schemamoesiftransformquantity"></a>
<a id="schema_MoesifTransformQuantity"></a>
<a id="tocSmoesiftransformquantity"></a>
<a id="tocsmoesiftransformquantity"></a>

```json
{
  "divide_by": 0,
  "round": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|divide_by|integer(int64)|true|none|none|
|round|string|true|none|none|

<h2 id="tocS_StripeRecurring">StripeRecurring</h2>

<a id="schemastriperecurring"></a>
<a id="schema_StripeRecurring"></a>
<a id="tocSstriperecurring"></a>
<a id="tocsstriperecurring"></a>

```json
{
  "trial_period_days": 0,
  "interval": "string",
  "usage_type": "string",
  "interval_count": 0,
  "aggregate_usage": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|trial_period_days|integer(int64)|false|none|none|
|interval|string|false|none|none|
|usage_type|string|false|none|none|
|interval_count|integer(int64)|false|none|none|
|aggregate_usage|string|false|none|none|

<h2 id="tocS_EncryptedKeyDocument">EncryptedKeyDocument</h2>

<a id="schemaencryptedkeydocument"></a>
<a id="schema_EncryptedKeyDocument"></a>
<a id="tocSencryptedkeydocument"></a>
<a id="tocsencryptedkeydocument"></a>

```json
{
  "_id": "string",
  "to": "2019-08-24T14:15:22Z",
  "encrypted_key": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "from": "2019-08-24T14:15:22Z",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "type": "string",
  "org_id": "string",
  "month": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|_id|string|false|none|none|
|to|string(date-time)|false|none|none|
|encrypted_key|string|true|none|none|
|modified_at|string(date-time)|true|none|none|
|from|string(date-time)|false|none|none|
|created_at|string(date-time)|true|none|none|
|app_id|string|true|none|none|
|type|string|true|none|none|
|org_id|string|true|none|none|
|month|string|false|none|none|

<h2 id="tocS_Comments">Comments</h2>

<a id="schemacomments"></a>
<a id="schema_Comments"></a>
<a id="tocScomments"></a>
<a id="tocscomments"></a>

```json
{
  "summary": {
    "count": 0,
    "latest_comment": {
      "auth_user_id": "string",
      "comment_id": "string",
      "mentions": [
        "string"
      ],
      "partner_user_id": "string",
      "message": "string",
      "created_at": "2019-08-24T14:15:22Z",
      "updated_at": "2019-08-24T14:15:22Z"
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|summary|[Summary](#schemasummary)|true|none|none|

<h2 id="tocS_com.moesif.dash.SignedTokenDTO">com.moesif.dash.SignedTokenDTO</h2>

<a id="schemacom.moesif.dash.signedtokendto"></a>
<a id="schema_com.moesif.dash.SignedTokenDTO"></a>
<a id="tocScom.moesif.dash.signedtokendto"></a>
<a id="tocscom.moesif.dash.signedtokendto"></a>

```json
{
  "_id": "string",
  "token": "string",
  "url": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|_id|string|true|none|none|
|token|string|true|none|none|
|url|string|false|none|none|

<h2 id="tocS_ChargebeeItemPrice">ChargebeeItemPrice</h2>

<a id="schemachargebeeitemprice"></a>
<a id="schema_ChargebeeItemPrice"></a>
<a id="tocSchargebeeitemprice"></a>
<a id="tocschargebeeitemprice"></a>

```json
{
  "name": "string",
  "item_id": "string",
  "description": "string",
  "price": 0,
  "price_in_decimal": "string",
  "external_name": "string",
  "tiers": [
    {
      "starting_unit": 0,
      "ending_unit": 0,
      "price": 0
    }
  ],
  "trial_end_action": "string",
  "trial_period": 0,
  "id": "string",
  "status": "string",
  "pricing_model": "string",
  "created_at": 0,
  "period_unit": "string",
  "updated_at": 0,
  "trial_period_unit": "string",
  "item_type": "string",
  "currency_code": "string",
  "archived_at": 0,
  "free_quantity": 0,
  "period": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|item_id|string|false|none|none|
|description|string|false|none|none|
|price|integer(int64)|false|none|none|
|price_in_decimal|string|false|none|none|
|external_name|string|false|none|none|
|tiers|[[ChargebeeItemPriceTier](#schemachargebeeitempricetier)]|false|none|none|
|trial_end_action|string|false|none|none|
|trial_period|integer(int64)|false|none|none|
|id|string|true|none|none|
|status|string|false|none|none|
|pricing_model|string|false|none|none|
|created_at|integer(int64)|false|none|none|
|period_unit|string|false|none|none|
|updated_at|integer(int64)|false|none|none|
|trial_period_unit|string|false|none|none|
|item_type|string|false|none|none|
|currency_code|string|false|none|none|
|archived_at|integer(int64)|false|none|none|
|free_quantity|integer(int64)|false|none|none|
|period|integer(int64)|false|none|none|

<h2 id="tocS_EncryptedKeyCreateItem">EncryptedKeyCreateItem</h2>

<a id="schemaencryptedkeycreateitem"></a>
<a id="schema_EncryptedKeyCreateItem"></a>
<a id="tocSencryptedkeycreateitem"></a>
<a id="tocsencryptedkeycreateitem"></a>

```json
{
  "to": "2019-08-24T14:15:22Z",
  "encrypted_key": "string",
  "from": "2019-08-24T14:15:22Z",
  "type": "string",
  "month": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|to|string(date-time)|false|none|none|
|encrypted_key|string|true|none|none|
|from|string(date-time)|false|none|none|
|type|string|true|none|none|
|month|string|false|none|none|

<h2 id="tocS_MoesifPrice">MoesifPrice</h2>

<a id="schemamoesifprice"></a>
<a id="schema_MoesifPrice"></a>
<a id="tocSmoesifprice"></a>
<a id="tocsmoesifprice"></a>

```json
{
  "name": "string",
  "transform_quantity": {
    "divide_by": 0,
    "round": "string"
  },
  "provider": "string",
  "price_in_decimal": "string",
  "tiers": [
    {
      "up_to": null,
      "unit_price_in_decimal": "string",
      "flat_price_in_decimal": "string"
    }
  ],
  "period_units": "string",
  "plan_id": "string",
  "id": "string",
  "status": "string",
  "pricing_model": "string",
  "tax_behavior": "string",
  "currency": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|transform_quantity|[MoesifTransformQuantity](#schemamoesiftransformquantity)|false|none|none|
|provider|string|false|none|none|
|price_in_decimal|string|false|none|none|
|tiers|[[MoesifPriceTier](#schemamoesifpricetier)]|false|none|none|
|period_units|string|false|none|none|
|plan_id|string|false|none|none|
|id|string|false|none|none|
|status|string|false|none|none|
|pricing_model|string|false|none|none|
|tax_behavior|string|false|none|none|
|currency|string|false|none|none|
|metadata|collection.immutable.map[string,string]|false|none|none|
|created_at|string(date-time)|false|none|none|
|unit|string|false|none|none|
|usage_aggregator|string|false|none|none|
|period|integer(int64)|false|none|none|

<h2 id="tocS_EmailTemplateCreateItem">EmailTemplateCreateItem</h2>

<a id="schemaemailtemplatecreateitem"></a>
<a id="schema_EmailTemplateCreateItem"></a>
<a id="tocSemailtemplatecreateitem"></a>
<a id="tocsemailtemplatecreateitem"></a>

```json
{
  "name": "string",
  "state": 0,
  "cohorts": [
    {
      "id": "string",
      "type": "string",
      "config": {
        "url_query": "string",
        "criteria": "string",
        "cohort_name": "string",
        "to": "string",
        "from": "string",
        "cohort_type": "string",
        "time_zone": "string"
      }
    }
  ],
  "dynamic_fields": [
    {
      "token": "string",
      "field": "string",
      "aggregator": "avg"
    }
  ],
  "content": {
    "html": "string",
    "chunks": {}
  },
  "template": {
    "subject": "string",
    "editor": "string",
    "design": {},
    "thumbnail_url": "string"
  },
  "period": "string",
  "addresses": {
    "from": "string",
    "cc": [
      "string"
    ],
    "bcc": [
      "string"
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|state|integer(int32)|true|none|none|
|cohorts|[[Cohort](#schemacohort)]|true|none|none|
|dynamic_fields|[[DynamicField](#schemadynamicfield)]|false|none|none|
|content|[TemplateContent](#schematemplatecontent)|true|none|none|
|template|[TemplateConfig](#schematemplateconfig)|true|none|none|
|period|string|false|none|none|
|addresses|[EmailAddresses](#schemaemailaddresses)|true|none|none|

<h2 id="tocS_PolicyItem">PolicyItem</h2>

<a id="schemapolicyitem"></a>
<a id="schema_PolicyItem"></a>
<a id="tocSpolicyitem"></a>
<a id="tocspolicyitem"></a>

```json
{
  "acl": [
    {
      "grantee": "string",
      "permission": "string"
    }
  ],
  "resource": {},
  "api_scopes": [
    "string"
  ],
  "original_encoded_resource": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|acl|[[ACLItem](#schemaaclitem)]|true|none|none|
|resource|object|true|none|none|
|api_scopes|[string]|false|none|none|
|original_encoded_resource|string|false|none|none|

<h2 id="tocS_RecurlyAddOnPercentageTier">RecurlyAddOnPercentageTier</h2>

<a id="schemarecurlyaddonpercentagetier"></a>
<a id="schema_RecurlyAddOnPercentageTier"></a>
<a id="tocSrecurlyaddonpercentagetier"></a>
<a id="tocsrecurlyaddonpercentagetier"></a>

```json
{
  "ending_amount": null,
  "usage_percent": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ending_amount|double|false|none|none|
|usage_percent|string|false|none|none|

<h2 id="tocS_StripeTransformQuantity">StripeTransformQuantity</h2>

<a id="schemastripetransformquantity"></a>
<a id="schema_StripeTransformQuantity"></a>
<a id="tocSstripetransformquantity"></a>
<a id="tocsstripetransformquantity"></a>

```json
{
  "divide_by": 0,
  "round": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|divide_by|integer(int64)|false|none|none|
|round|string|false|none|none|

<h2 id="tocS_BillingMetricBucket">BillingMetricBucket</h2>

<a id="schemabillingmetricbucket"></a>
<a id="schema_BillingMetricBucket"></a>
<a id="tocSbillingmetricbucket"></a>
<a id="tocsbillingmetricbucket"></a>

```json
{
  "start": "2019-08-24T14:15:22Z",
  "metric": null,
  "usage": null,
  "errors": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|start|string(date-time)|true|none|none|
|metric|double|true|none|none|
|usage|double|true|none|none|
|errors|[string]|false|none|none|

<h2 id="tocS_AccessTokenDTO">AccessTokenDTO</h2>

<a id="schemaaccesstokendto"></a>
<a id="schema_AccessTokenDTO"></a>
<a id="tocSaccesstokendto"></a>
<a id="tocsaccesstokendto"></a>

```json
{
  "app_token": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|app_token|string|true|none|none|

<h2 id="tocS_DashboardDocument">DashboardDocument</h2>

<a id="schemadashboarddocument"></a>
<a id="schema_DashboardDocument"></a>
<a id="tocSdashboarddocument"></a>
<a id="tocsdashboarddocument"></a>

```json
{
  "parent": "string",
  "name": "string",
  "_id": "string",
  "auth_user_id": "string",
  "profile_view_promotion": "string",
  "app_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0,
  "dashboard_ids": [
    "string"
  ],
  "policy": {
    "acl": [
      {
        "grantee": "string",
        "permission": "string"
      }
    ],
    "resource": {},
    "api_scopes": [
      "string"
    ],
    "original_encoded_resource": "string"
  },
  "org_id": "string",
  "migration": {},
  "created": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|parent|string|false|none|none|
|name|string|true|none|none|
|_id|string|false|none|none|
|auth_user_id|string|true|none|none|
|profile_view_promotion|string|false|none|none|
|app_id|string|true|none|none|
|workspace_ids|[array]|true|none|none|
|sort_order|number(double)|false|none|none|
|dashboard_ids|[string]|true|none|none|
|policy|[PolicyItem](#schemapolicyitem)|false|none|none|
|org_id|string|true|none|none|
|migration|object|false|none|none|
|created|string(date-time)|true|none|none|

<h2 id="tocS_ChargebeeItemPlan">ChargebeeItemPlan</h2>

<a id="schemachargebeeitemplan"></a>
<a id="schema_ChargebeeItemPlan"></a>
<a id="tocSchargebeeitemplan"></a>
<a id="tocschargebeeitemplan"></a>

```json
{
  "name": "string",
  "item_family_id": "string",
  "description": "string",
  "usage_calculation": "string",
  "external_name": "string",
  "metered": true,
  "id": "string",
  "status": "string",
  "unit": "string",
  "updated_at": 0,
  "archived_at": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|item_family_id|string|false|none|none|
|description|string|false|none|none|
|usage_calculation|string|false|none|none|
|external_name|string|false|none|none|
|metered|boolean|false|none|none|
|id|string|true|none|none|
|status|string|false|none|none|
|unit|string|false|none|none|
|updated_at|integer(int64)|false|none|none|
|archived_at|integer(int64)|false|none|none|

<h2 id="tocS_CreateCommentItem">CreateCommentItem</h2>

<a id="schemacreatecommentitem"></a>
<a id="schema_CreateCommentItem"></a>
<a id="tocScreatecommentitem"></a>
<a id="tocscreatecommentitem"></a>

```json
{
  "auth_user_id": "string",
  "comment_id": "string",
  "mentions": [
    "string"
  ],
  "partner_user_id": "string",
  "message": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|auth_user_id|string|false|none|none|
|comment_id|string|false|none|none|
|mentions|[string]|false|none|none|
|partner_user_id|string|false|none|none|
|message|string|false|none|none|
|created_at|string(date-time)|false|none|none|
|updated_at|string(date-time)|false|none|none|

<h2 id="tocS_StripeBillingParams">StripeBillingParams</h2>

<a id="schemastripebillingparams"></a>
<a id="schema_StripeBillingParams"></a>
<a id="tocSstripebillingparams"></a>
<a id="tocsstripebillingparams"></a>

```json
{
  "product": {
    "name": "string",
    "description": "string",
    "unit_label": "string",
    "id": "string",
    "usage_type": "string"
  },
  "price": {
    "tiers_mode": "string",
    "transform_quantity": {
      "divide_by": 0,
      "round": "string"
    },
    "price_id": "string",
    "tiers": [
      {
        "flat_amount_decimal": "string",
        "up_to": 0,
        "unit_amount_decimal": "string",
        "flat_amount": 0,
        "unit_amount": 0
      }
    ],
    "recurring": {
      "trial_period_days": 0,
      "interval": "string",
      "usage_type": "string",
      "interval_count": 0,
      "aggregate_usage": "string"
    },
    "unit_amount_decimal": "string",
    "price_nickname": "string",
    "currency": "string",
    "billing_scheme": "string",
    "unit_amount": 0,
    "created": 0,
    "active": true
  },
  "prices": [
    {
      "tiers_mode": "string",
      "transform_quantity": {
        "divide_by": 0,
        "round": "string"
      },
      "price_id": "string",
      "tiers": [
        {
          "flat_amount_decimal": "string",
          "up_to": 0,
          "unit_amount_decimal": "string",
          "flat_amount": 0,
          "unit_amount": 0
        }
      ],
      "recurring": {
        "trial_period_days": 0,
        "interval": "string",
        "usage_type": "string",
        "interval_count": 0,
        "aggregate_usage": "string"
      },
      "unit_amount_decimal": "string",
      "price_nickname": "string",
      "currency": "string",
      "billing_scheme": "string",
      "unit_amount": 0,
      "created": 0,
      "active": true
    }
  ],
  "reporting": {
    "reporting_period": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|product|[StripeProduct](#schemastripeproduct)|false|none|none|
|price|[StripePrice](#schemastripeprice)|false|none|none|
|prices|[[StripePrice](#schemastripeprice)]|false|none|none|
|reporting|[ProviderReporting](#schemaproviderreporting)|false|none|none|

<h2 id="tocS_TemplateContent">TemplateContent</h2>

<a id="schematemplatecontent"></a>
<a id="schema_TemplateContent"></a>
<a id="tocStemplatecontent"></a>
<a id="tocstemplatecontent"></a>

```json
{
  "html": "string",
  "chunks": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|html|string|true|none|none|
|chunks|object|true|none|none|

<h2 id="tocS_DynamicField">DynamicField</h2>

<a id="schemadynamicfield"></a>
<a id="schema_DynamicField"></a>
<a id="tocSdynamicfield"></a>
<a id="tocsdynamicfield"></a>

```json
{
  "token": "string",
  "field": "string",
  "aggregator": "avg"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|token|string|true|none|none|
|field|string|true|none|none|
|aggregator|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|aggregator|avg|
|aggregator|min|
|aggregator|max|
|aggregator|terms|
|aggregator|sum|

<h2 id="tocS_RecurlyAddOnTier">RecurlyAddOnTier</h2>

<a id="schemarecurlyaddontier"></a>
<a id="schema_RecurlyAddOnTier"></a>
<a id="tocSrecurlyaddontier"></a>
<a id="tocsrecurlyaddontier"></a>

```json
{
  "ending_quantity": 0,
  "currencies": [
    {
      "currency": "string",
      "unit_amount": null,
      "unit_amount_decimal": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ending_quantity|integer(int64)|false|none|none|
|currencies|[[RecurlyCurrencyAmount](#schemarecurlycurrencyamount)]|true|none|none|

<h2 id="tocS_ChargebeeItemPriceTier">ChargebeeItemPriceTier</h2>

<a id="schemachargebeeitempricetier"></a>
<a id="schema_ChargebeeItemPriceTier"></a>
<a id="tocSchargebeeitempricetier"></a>
<a id="tocschargebeeitempricetier"></a>

```json
{
  "starting_unit": 0,
  "ending_unit": 0,
  "price": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|starting_unit|integer(int32)|true|none|none|
|ending_unit|integer(int32)|false|none|none|
|price|integer(int32)|true|none|none|

<h2 id="tocS_MoesifPlan">MoesifPlan</h2>

<a id="schemamoesifplan"></a>
<a id="schema_MoesifPlan"></a>
<a id="tocSmoesifplan"></a>
<a id="tocsmoesifplan"></a>

```json
{
  "name": "string",
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2019-08-24T14:15:22Z",
  "unit": "string",
  "updated_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|provider|string|false|none|none|
|description|string|false|none|none|
|id|string|false|none|none|
|status|string|false|none|none|
|product_id|string|false|none|none|
|metadata|collection.immutable.map[string,string]|false|none|none|
|created_at|string(date-time)|false|none|none|
|unit|string|false|none|none|
|updated_at|string(date-time)|false|none|none|

<h2 id="tocS_ChargebeeBillingParams">ChargebeeBillingParams</h2>

<a id="schemachargebeebillingparams"></a>
<a id="schema_ChargebeeBillingParams"></a>
<a id="tocSchargebeebillingparams"></a>
<a id="tocschargebeebillingparams"></a>

```json
{
  "item_plan": {
    "name": "string",
    "item_family_id": "string",
    "description": "string",
    "usage_calculation": "string",
    "external_name": "string",
    "metered": true,
    "id": "string",
    "status": "string",
    "unit": "string",
    "updated_at": 0,
    "archived_at": 0
  },
  "item_price": {
    "name": "string",
    "item_id": "string",
    "description": "string",
    "price": 0,
    "price_in_decimal": "string",
    "external_name": "string",
    "tiers": [
      {
        "starting_unit": 0,
        "ending_unit": 0,
        "price": 0
      }
    ],
    "trial_end_action": "string",
    "trial_period": 0,
    "id": "string",
    "status": "string",
    "pricing_model": "string",
    "created_at": 0,
    "period_unit": "string",
    "updated_at": 0,
    "trial_period_unit": "string",
    "item_type": "string",
    "currency_code": "string",
    "archived_at": 0,
    "free_quantity": 0,
    "period": 0
  },
  "item_prices": [
    {
      "name": "string",
      "item_id": "string",
      "description": "string",
      "price": 0,
      "price_in_decimal": "string",
      "external_name": "string",
      "tiers": [
        {
          "starting_unit": 0,
          "ending_unit": 0,
          "price": 0
        }
      ],
      "trial_end_action": "string",
      "trial_period": 0,
      "id": "string",
      "status": "string",
      "pricing_model": "string",
      "created_at": 0,
      "period_unit": "string",
      "updated_at": 0,
      "trial_period_unit": "string",
      "item_type": "string",
      "currency_code": "string",
      "archived_at": 0,
      "free_quantity": 0,
      "period": 0
    }
  ],
  "reporting": {
    "reporting_period": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|item_plan|[ChargebeeItemPlan](#schemachargebeeitemplan)|false|none|none|
|item_price|[ChargebeeItemPrice](#schemachargebeeitemprice)|false|none|none|
|item_prices|[[ChargebeeItemPrice](#schemachargebeeitemprice)]|false|none|none|
|reporting|[ProviderReporting](#schemaproviderreporting)|false|none|none|

<h2 id="tocS_GovernanceRuleCreateItem">GovernanceRuleCreateItem</h2>

<a id="schemagovernancerulecreateitem"></a>
<a id="schema_GovernanceRuleCreateItem"></a>
<a id="tocSgovernancerulecreateitem"></a>
<a id="tocsgovernancerulecreateitem"></a>

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|priority|integer(int32)|false|none|none|
|model|string|false|none|none|
|state|integer(int32)|true|none|none|
|cohorts|[object]|false|none|none|
|variables|[[GovernanceRulesVariables](#schemagovernancerulesvariables)]|false|none|none|
|applied_to|string|false|none|none|
|block|boolean|true|none|none|
|response|[RulesResponseItem](#schemarulesresponseitem)|false|none|none|
|applied_to_unidentified|boolean|false|none|none|
|regex_config|[[RegexRule](#schemaregexrule)]|false|none|none|
|plans|[[Plan](#schemaplan)]|false|none|none|
|type|string|true|none|none|

<h2 id="tocS_RecurlyPlanAddOn">RecurlyPlanAddOn</h2>

<a id="schemarecurlyplanaddon"></a>
<a id="schema_RecurlyPlanAddOn"></a>
<a id="tocSrecurlyplanaddon"></a>
<a id="tocsrecurlyplanaddon"></a>

```json
{
  "name": "string",
  "currencies": [
    {
      "currency": "string",
      "unit_amount": null,
      "unit_amount_decimal": "string"
    }
  ],
  "usage_percentage": null,
  "add_on_type": "string",
  "external_sku": "string",
  "state": "string",
  "tiers": [
    {
      "ending_quantity": 0,
      "currencies": [
        {
          "currency": "string",
          "unit_amount": null,
          "unit_amount_decimal": "string"
        }
      ]
    }
  ],
  "tier_type": "string",
  "code": "string",
  "plan_id": "string",
  "id": "string",
  "percentage_tiers": [
    {
      "tiers": [
        {
          "ending_amount": null,
          "usage_percent": "string"
        }
      ],
      "currency": "string"
    }
  ],
  "usage_type": "string",
  "created_at": "string",
  "usage_calculation_type": "string",
  "updated_at": "string",
  "deleted_at": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|currencies|[[RecurlyCurrencyAmount](#schemarecurlycurrencyamount)]|false|none|none|
|usage_percentage|double|false|none|none|
|add_on_type|string|false|none|none|
|external_sku|string|false|none|none|
|state|string|false|none|none|
|tiers|[[RecurlyAddOnTier](#schemarecurlyaddontier)]|false|none|none|
|tier_type|string|false|none|none|
|code|string|true|none|none|
|plan_id|string|false|none|none|
|id|string|false|none|none|
|percentage_tiers|[[RecurlyAddOnPercentageTiers](#schemarecurlyaddonpercentagetiers)]|false|none|none|
|usage_type|string|false|none|none|
|created_at|string|false|none|none|
|usage_calculation_type|string|false|none|none|
|updated_at|string|false|none|none|
|deleted_at|string|false|none|none|

<h2 id="tocS_DrawingItem">DrawingItem</h2>

<a id="schemadrawingitem"></a>
<a id="schema_DrawingItem"></a>
<a id="tocSdrawingitem"></a>
<a id="tocsdrawingitem"></a>

```json
{
  "name": "string",
  "direction": "string",
  "id": "string",
  "type": "string",
  "value": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|direction|string|true|none|none|
|id|string|true|none|none|
|type|string|true|none|none|
|value|number(double)|true|none|none|

<h2 id="tocS_ChartItem">ChartItem</h2>

<a id="schemachartitem"></a>
<a id="schema_ChartItem"></a>
<a id="tocSchartitem"></a>
<a id="tocschartitem"></a>

```json
{
  "original_encoded_view_elements": "string",
  "funnel_query": {},
  "url_query": "string",
  "to": "string",
  "view_elements": {},
  "from": "string",
  "original_encoded_funnel_query": "string",
  "es_query": {},
  "args": "string",
  "original_encoded_query": "string",
  "time_zone": "string",
  "view": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|original_encoded_view_elements|string|false|none|none|
|funnel_query|object|false|none|none|
|url_query|string|true|none|none|
|to|string|false|none|none|
|view_elements|object|false|none|none|
|from|string|false|none|none|
|original_encoded_funnel_query|string|false|none|none|
|es_query|object|false|none|none|
|args|string|false|none|none|
|original_encoded_query|string|false|none|none|
|time_zone|string|false|none|none|
|view|string|true|none|none|

<h2 id="tocS_RecurlyAddOnPercentageTiers">RecurlyAddOnPercentageTiers</h2>

<a id="schemarecurlyaddonpercentagetiers"></a>
<a id="schema_RecurlyAddOnPercentageTiers"></a>
<a id="tocSrecurlyaddonpercentagetiers"></a>
<a id="tocsrecurlyaddonpercentagetiers"></a>

```json
{
  "tiers": [
    {
      "ending_amount": null,
      "usage_percent": "string"
    }
  ],
  "currency": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|tiers|[[RecurlyAddOnPercentageTier](#schemarecurlyaddonpercentagetier)]|false|none|none|
|currency|string|false|none|none|

<h2 id="tocS_CustomReporting">CustomReporting</h2>

<a id="schemacustomreporting"></a>
<a id="schema_CustomReporting"></a>
<a id="tocScustomreporting"></a>
<a id="tocscustomreporting"></a>

```json
{
  "report_when": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|report_when|[string]|true|none|none|

<h2 id="tocS_ACLItem">ACLItem</h2>

<a id="schemaaclitem"></a>
<a id="schema_ACLItem"></a>
<a id="tocSaclitem"></a>
<a id="tocsaclitem"></a>

```json
{
  "grantee": "string",
  "permission": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|grantee|string|true|none|none|
|permission|string|true|none|none|

<h2 id="tocS_ZuoraBillingParams">ZuoraBillingParams</h2>

<a id="schemazuorabillingparams"></a>
<a id="schema_ZuoraBillingParams"></a>
<a id="tocSzuorabillingparams"></a>
<a id="tocszuorabillingparams"></a>

```json
{
  "plan_id": "string",
  "price_id": "string",
  "price_ids": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|plan_id|string|false|none|none|
|price_id|string|false|none|none|
|price_ids|[string]|false|none|none|

<h2 id="tocS_CohortConfig">CohortConfig</h2>

<a id="schemacohortconfig"></a>
<a id="schema_CohortConfig"></a>
<a id="tocScohortconfig"></a>
<a id="tocscohortconfig"></a>

```json
{
  "url_query": "string",
  "criteria": "string",
  "cohort_name": "string",
  "to": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|url_query|string|true|none|none|
|criteria|string|true|none|none|
|cohort_name|string|true|none|none|
|to|string|true|none|none|
|from|string|true|none|none|
|cohort_type|string|true|none|none|
|time_zone|string|true|none|none|

<h2 id="tocS_RegexRule">RegexRule</h2>

<a id="schemaregexrule"></a>
<a id="schema_RegexRule"></a>
<a id="tocSregexrule"></a>
<a id="tocsregexrule"></a>

```json
{
  "conditions": [
    {
      "path": "string",
      "value": "string"
    }
  ],
  "sample_rate": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|conditions|[[RegexCondition](#schemaregexcondition)]|true|none|none|
|sample_rate|integer(int32)|false|none|none|

<h2 id="tocS_GovernanceRulesVariables">GovernanceRulesVariables</h2>

<a id="schemagovernancerulesvariables"></a>
<a id="schema_GovernanceRulesVariables"></a>
<a id="tocSgovernancerulesvariables"></a>
<a id="tocsgovernancerulesvariables"></a>

```json
{
  "name": "string",
  "path": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|path|string|true|none|none|

<h2 id="tocS_WorkspaceDocument">WorkspaceDocument</h2>

<a id="schemaworkspacedocument"></a>
<a id="schema_WorkspaceDocument"></a>
<a id="tocSworkspacedocument"></a>
<a id="tocsworkspacedocument"></a>

```json
{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "_id": "string",
  "is_template": true,
  "dashboard": {},
  "auth_user_id": "string",
  "colors": {},
  "sequence": [
    {
      "delay": 0,
      "submit_data": {
        "body": {},
        "url": "string",
        "params": [
          {
            "key": "string",
            "val": "string"
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": "string",
            "val": "string"
          }
        ]
      }
    }
  ],
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0
    }
  ],
  "chart": {
    "original_encoded_view_elements": "string",
    "funnel_query": {},
    "url_query": "string",
    "to": "string",
    "view_elements": {},
    "from": "string",
    "original_encoded_funnel_query": "string",
    "es_query": {},
    "args": "string",
    "original_encoded_query": "string",
    "time_zone": "string",
    "view": "string"
  },
  "template": {
    "dynamic_fields": [
      "string"
    ],
    "dynamic_time": true
  },
  "app_id": "string",
  "type": "string",
  "width": 0,
  "sort_order": 0,
  "policy": {
    "acl": [
      {
        "grantee": "string",
        "permission": "string"
      }
    ],
    "resource": {},
    "api_scopes": [
      "string"
    ],
    "original_encoded_resource": "string"
  },
  "org_id": "string",
  "migration": {},
  "created": "2019-08-24T14:15:22Z",
  "comments": {
    "summary": {
      "count": 0,
      "latest_comment": {
        "auth_user_id": "string",
        "comment_id": "string",
        "mentions": [
          "string"
        ],
        "partner_user_id": "string",
        "message": "string",
        "created_at": "2019-08-24T14:15:22Z",
        "updated_at": "2019-08-24T14:15:22Z"
      }
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|is_default|boolean|false|none|none|
|view_count|integer(int32)|true|none|none|
|_id|string|false|none|none|
|is_template|boolean|false|none|none|
|dashboard|object|false|none|none|
|auth_user_id|string|true|none|none|
|colors|object|false|none|none|
|sequence|[[SequenceItem](#schemasequenceitem)]|false|none|none|
|drawings|[[DrawingItem](#schemadrawingitem)]|false|none|none|
|chart|[ChartItem](#schemachartitem)|false|none|none|
|template|[TemplateItem](#schematemplateitem)|false|none|none|
|app_id|string|true|none|none|
|type|string|false|none|none|
|width|number(double)|false|none|none|
|sort_order|number(double)|false|none|none|
|policy|[PolicyItem](#schemapolicyitem)|false|none|none|
|org_id|string|true|none|none|
|migration|object|false|none|none|
|created|string(date-time)|true|none|none|
|comments|[Comments](#schemacomments)|false|none|none|

<h2 id="tocS_MoesifPriceTier">MoesifPriceTier</h2>

<a id="schemamoesifpricetier"></a>
<a id="schema_MoesifPriceTier"></a>
<a id="tocSmoesifpricetier"></a>
<a id="tocsmoesifpricetier"></a>

```json
{
  "up_to": null,
  "unit_price_in_decimal": "string",
  "flat_price_in_decimal": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|up_to|util.either[scala.long,string]|true|none|none|
|unit_price_in_decimal|string|false|none|none|
|flat_price_in_decimal|string|false|none|none|

<h2 id="tocS_BillingMeterDocument">BillingMeterDocument</h2>

<a id="schemabillingmeterdocument"></a>
<a id="schema_BillingMeterDocument"></a>
<a id="tocSbillingmeterdocument"></a>
<a id="tocsbillingmeterdocument"></a>

```json
{
  "name": "string",
  "billing_plan": {
    "provider_slug": "string",
    "friendly_name": "string",
    "params": {
      "usage_rounding_mode": "string",
      "webhook_params": {
        "reporting": {
          "report_when": [
            "string"
          ]
        },
        "channel_ids": [
          "string"
        ],
        "custom_plan": {
          "plan_id": "string"
        }
      },
      "recurly_params": {
        "plan": {
          "name": "string",
          "id": "string",
          "code": "string"
        },
        "add_on": {
          "name": "string",
          "currencies": [
            {
              "currency": "string",
              "unit_amount": null,
              "unit_amount_decimal": "string"
            }
          ],
          "usage_percentage": null,
          "add_on_type": "string",
          "external_sku": "string",
          "state": "string",
          "tiers": [
            {
              "ending_quantity": 0,
              "currencies": [
                {
                  "currency": "string",
                  "unit_amount": null,
                  "unit_amount_decimal": "string"
                }
              ]
            }
          ],
          "tier_type": "string",
          "code": "string",
          "plan_id": "string",
          "id": "string",
          "percentage_tiers": [
            {
              "tiers": [
                {
                  "ending_amount": null,
                  "usage_percent": "string"
                }
              ],
              "currency": "string"
            }
          ],
          "usage_type": "string",
          "created_at": "string",
          "usage_calculation_type": "string",
          "updated_at": "string",
          "deleted_at": "string"
        },
        "add_ons": [
          {
            "name": "string",
            "currencies": [
              {
                "currency": "string",
                "unit_amount": null,
                "unit_amount_decimal": "string"
              }
            ],
            "usage_percentage": null,
            "add_on_type": "string",
            "external_sku": "string",
            "state": "string",
            "tiers": [
              {
                "ending_quantity": 0,
                "currencies": [
                  {
                    "currency": "string",
                    "unit_amount": null,
                    "unit_amount_decimal": "string"
                  }
                ]
              }
            ],
            "tier_type": "string",
            "code": "string",
            "plan_id": "string",
            "id": "string",
            "percentage_tiers": [
              {
                "tiers": [
                  {
                    "ending_amount": null,
                    "usage_percent": "string"
                  }
                ],
                "currency": "string"
              }
            ],
            "usage_type": "string",
            "created_at": "string",
            "usage_calculation_type": "string",
            "updated_at": "string",
            "deleted_at": "string"
          }
        ]
      },
      "chargebee_params": {
        "item_plan": {
          "name": "string",
          "item_family_id": "string",
          "description": "string",
          "usage_calculation": "string",
          "external_name": "string",
          "metered": true,
          "id": "string",
          "status": "string",
          "unit": "string",
          "updated_at": 0,
          "archived_at": 0
        },
        "item_price": {
          "name": "string",
          "item_id": "string",
          "description": "string",
          "price": 0,
          "price_in_decimal": "string",
          "external_name": "string",
          "tiers": [
            {
              "starting_unit": 0,
              "ending_unit": 0,
              "price": 0
            }
          ],
          "trial_end_action": "string",
          "trial_period": 0,
          "id": "string",
          "status": "string",
          "pricing_model": "string",
          "created_at": 0,
          "period_unit": "string",
          "updated_at": 0,
          "trial_period_unit": "string",
          "item_type": "string",
          "currency_code": "string",
          "archived_at": 0,
          "free_quantity": 0,
          "period": 0
        },
        "item_prices": [
          {
            "name": "string",
            "item_id": "string",
            "description": "string",
            "price": 0,
            "price_in_decimal": "string",
            "external_name": "string",
            "tiers": [
              {
                "starting_unit": 0,
                "ending_unit": 0,
                "price": 0
              }
            ],
            "trial_end_action": "string",
            "trial_period": 0,
            "id": "string",
            "status": "string",
            "pricing_model": "string",
            "created_at": 0,
            "period_unit": "string",
            "updated_at": 0,
            "trial_period_unit": "string",
            "item_type": "string",
            "currency_code": "string",
            "archived_at": 0,
            "free_quantity": 0,
            "period": 0
          }
        ],
        "reporting": {
          "reporting_period": "string"
        }
      },
      "stripe_params": {
        "product": {
          "name": "string",
          "description": "string",
          "unit_label": "string",
          "id": "string",
          "usage_type": "string"
        },
        "price": {
          "tiers_mode": "string",
          "transform_quantity": {
            "divide_by": 0,
            "round": "string"
          },
          "price_id": "string",
          "tiers": [
            {
              "flat_amount_decimal": "string",
              "up_to": 0,
              "unit_amount_decimal": "string",
              "flat_amount": 0,
              "unit_amount": 0
            }
          ],
          "recurring": {
            "trial_period_days": 0,
            "interval": "string",
            "usage_type": "string",
            "interval_count": 0,
            "aggregate_usage": "string"
          },
          "unit_amount_decimal": "string",
          "price_nickname": "string",
          "currency": "string",
          "billing_scheme": "string",
          "unit_amount": 0,
          "created": 0,
          "active": true
        },
        "prices": [
          {
            "tiers_mode": "string",
            "transform_quantity": {
              "divide_by": 0,
              "round": "string"
            },
            "price_id": "string",
            "tiers": [
              {
                "flat_amount_decimal": "string",
                "up_to": 0,
                "unit_amount_decimal": "string",
                "flat_amount": 0,
                "unit_amount": 0
              }
            ],
            "recurring": {
              "trial_period_days": 0,
              "interval": "string",
              "usage_type": "string",
              "interval_count": 0,
              "aggregate_usage": "string"
            },
            "unit_amount_decimal": "string",
            "price_nickname": "string",
            "currency": "string",
            "billing_scheme": "string",
            "unit_amount": 0,
            "created": 0,
            "active": true
          }
        ],
        "reporting": {
          "reporting_period": "string"
        }
      },
      "zuora_params": {
        "plan_id": "string",
        "price_id": "string",
        "price_ids": [
          "string"
        ]
      },
      "usage_multiplier": null
    }
  },
  "url_query": "string",
  "_id": "string",
  "slug": "string",
  "status": "string",
  "modified_at": "2019-08-24T14:15:22Z",
  "es_query": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "org_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|billing_plan|[BillingPlan](#schemabillingplan)|true|none|none|
|url_query|string|true|none|none|
|_id|string|false|none|none|
|slug|string|true|none|none|
|status|string|true|none|none|
|modified_at|string(date-time)|true|none|none|
|es_query|string|true|none|none|
|created_at|string(date-time)|true|none|none|
|app_id|string|true|none|none|
|org_id|string|true|none|none|

<h2 id="tocS_KeyValuePair">KeyValuePair</h2>

<a id="schemakeyvaluepair"></a>
<a id="schema_KeyValuePair"></a>
<a id="tocSkeyvaluepair"></a>
<a id="tocskeyvaluepair"></a>

```json
{
  "key": "string",
  "val": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|key|string|true|none|none|
|val|string|true|none|none|

<h2 id="tocS_.BillingReport">.BillingReport</h2>

<a id="schema.billingreport"></a>
<a id="schema_.BillingReport"></a>
<a id="tocS.billingreport"></a>
<a id="tocs.billingreport"></a>

```json
{
  "company_id": "string",
  "success": true,
  "provider": "string",
  "report_version": 0,
  "usage_end_time": "2019-08-24T14:15:22Z",
  "_id": "string",
  "meter_usage": 0,
  "last_success_time": "2019-08-24T14:15:22Z",
  "billing_meter_id": "string",
  "amount": 0,
  "usage_start_time": "2019-08-24T14:15:22Z",
  "provider_requests": [
    null
  ],
  "currency": "string",
  "report_total_usage": 0,
  "channel_requests": [
    null
  ],
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "subscription_id": "string",
  "updated_at": "2019-08-24T14:15:22Z",
  "org_id": "string",
  "meter_metric": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|company_id|string|true|none|none|
|success|boolean|true|none|none|
|provider|string|true|none|none|
|report_version|integer(int32)|false|none|none|
|usage_end_time|string(date-time)|true|none|none|
|_id|string|false|none|none|
|meter_usage|integer(int64)|true|none|none|
|last_success_time|string(date-time)|false|none|none|
|billing_meter_id|string|true|none|none|
|amount|number(double)|false|none|none|
|usage_start_time|string(date-time)|true|none|none|
|provider_requests|[providerrequest]|true|none|none|
|currency|string|false|none|none|
|report_total_usage|integer(int64)|true|none|none|
|channel_requests|[channelrequest]|true|none|none|
|created_at|string(date-time)|false|none|none|
|app_id|string|true|none|none|
|subscription_id|string|true|none|none|
|updated_at|string(date-time)|false|none|none|
|org_id|string|true|none|none|
|meter_metric|integer(int64)|true|none|none|

<h2 id="tocS_ProviderReporting">ProviderReporting</h2>

<a id="schemaproviderreporting"></a>
<a id="schema_ProviderReporting"></a>
<a id="tocSproviderreporting"></a>
<a id="tocsproviderreporting"></a>

```json
{
  "reporting_period": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|reporting_period|string|false|none|none|

<h2 id="tocS_AppResponseDTO">AppResponseDTO</h2>

<a id="schemaappresponsedto"></a>
<a id="schema_AppResponseDTO"></a>
<a id="tocSappresponsedto"></a>
<a id="tocsappresponsedto"></a>

```json
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|custom_app_id|string|false|none|none|
|search_api_base_url|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|id|string|false|none|none|
|portal_api_base_url|string|false|none|none|
|secure_proxy|boolean|false|none|none|
|time_zone|string|false|none|none|

<h2 id="tocS_CohortUpdateItem">CohortUpdateItem</h2>

<a id="schemacohortupdateitem"></a>
<a id="schema_CohortUpdateItem"></a>
<a id="tocScohortupdateitem"></a>
<a id="tocscohortupdateitem"></a>

```json
{
  "channels": null,
  "priority": 0,
  "url_query": "string",
  "criteria": {},
  "sample_rate": 0,
  "notification_rule": {
    "send_on_addition": true,
    "send_on_removal": true,
    "period": "string",
    "fields": [
      "string"
    ]
  },
  "cohort_name": "string",
  "to": "string",
  "week_starts_on": 0,
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|channels|array[string]|false|none|none|
|priority|integer(int32)|false|none|none|
|url_query|string|false|none|none|
|criteria|object|false|none|none|
|sample_rate|integer(int32)|false|none|none|
|notification_rule|[NotificationRule](#schemanotificationrule)|false|none|none|
|cohort_name|string|false|none|none|
|to|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|from|string|false|none|none|
|cohort_type|string|true|none|none|
|time_zone|string|false|none|none|

<h2 id="tocS_EmailTemplateUpdateItem">EmailTemplateUpdateItem</h2>

<a id="schemaemailtemplateupdateitem"></a>
<a id="schema_EmailTemplateUpdateItem"></a>
<a id="tocSemailtemplateupdateitem"></a>
<a id="tocsemailtemplateupdateitem"></a>

```json
{
  "name": "string",
  "state": 0,
  "cohorts": [
    {
      "id": "string",
      "type": "string",
      "config": {
        "url_query": "string",
        "criteria": "string",
        "cohort_name": "string",
        "to": "string",
        "from": "string",
        "cohort_type": "string",
        "time_zone": "string"
      }
    }
  ],
  "dynamic_fields": [
    {
      "token": "string",
      "field": "string",
      "aggregator": "avg"
    }
  ],
  "content": {
    "html": "string",
    "chunks": {}
  },
  "template": {
    "subject": "string",
    "editor": "string",
    "design": {},
    "thumbnail_url": "string"
  },
  "period": "string",
  "addresses": {
    "from": "string",
    "cc": [
      "string"
    ],
    "bcc": [
      "string"
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|state|integer(int32)|false|none|none|
|cohorts|[[Cohort](#schemacohort)]|false|none|none|
|dynamic_fields|[[DynamicField](#schemadynamicfield)]|false|none|none|
|content|[TemplateContent](#schematemplatecontent)|false|none|none|
|template|[TemplateConfig](#schematemplateconfig)|false|none|none|
|period|string|false|none|none|
|addresses|[EmailAddresses](#schemaemailaddresses)|false|none|none|

<h2 id="tocS_RecurlyPlan">RecurlyPlan</h2>

<a id="schemarecurlyplan"></a>
<a id="schema_RecurlyPlan"></a>
<a id="tocSrecurlyplan"></a>
<a id="tocsrecurlyplan"></a>

```json
{
  "name": "string",
  "id": "string",
  "code": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|id|string|false|none|none|
|code|string|true|none|none|

<h2 id="tocS_StripeProduct">StripeProduct</h2>

<a id="schemastripeproduct"></a>
<a id="schema_StripeProduct"></a>
<a id="tocSstripeproduct"></a>
<a id="tocsstripeproduct"></a>

```json
{
  "name": "string",
  "description": "string",
  "unit_label": "string",
  "id": "string",
  "usage_type": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|description|string|false|none|none|
|unit_label|string|false|none|none|
|id|string|true|none|none|
|usage_type|string|false|none|none|

<h2 id="tocS_BillingParams">BillingParams</h2>

<a id="schemabillingparams"></a>
<a id="schema_BillingParams"></a>
<a id="tocSbillingparams"></a>
<a id="tocsbillingparams"></a>

```json
{
  "usage_rounding_mode": "string",
  "webhook_params": {
    "reporting": {
      "report_when": [
        "string"
      ]
    },
    "channel_ids": [
      "string"
    ],
    "custom_plan": {
      "plan_id": "string"
    }
  },
  "recurly_params": {
    "plan": {
      "name": "string",
      "id": "string",
      "code": "string"
    },
    "add_on": {
      "name": "string",
      "currencies": [
        {
          "currency": "string",
          "unit_amount": null,
          "unit_amount_decimal": "string"
        }
      ],
      "usage_percentage": null,
      "add_on_type": "string",
      "external_sku": "string",
      "state": "string",
      "tiers": [
        {
          "ending_quantity": 0,
          "currencies": [
            {
              "currency": "string",
              "unit_amount": null,
              "unit_amount_decimal": "string"
            }
          ]
        }
      ],
      "tier_type": "string",
      "code": "string",
      "plan_id": "string",
      "id": "string",
      "percentage_tiers": [
        {
          "tiers": [
            {
              "ending_amount": null,
              "usage_percent": "string"
            }
          ],
          "currency": "string"
        }
      ],
      "usage_type": "string",
      "created_at": "string",
      "usage_calculation_type": "string",
      "updated_at": "string",
      "deleted_at": "string"
    },
    "add_ons": [
      {
        "name": "string",
        "currencies": [
          {
            "currency": "string",
            "unit_amount": null,
            "unit_amount_decimal": "string"
          }
        ],
        "usage_percentage": null,
        "add_on_type": "string",
        "external_sku": "string",
        "state": "string",
        "tiers": [
          {
            "ending_quantity": 0,
            "currencies": [
              {
                "currency": "string",
                "unit_amount": null,
                "unit_amount_decimal": "string"
              }
            ]
          }
        ],
        "tier_type": "string",
        "code": "string",
        "plan_id": "string",
        "id": "string",
        "percentage_tiers": [
          {
            "tiers": [
              {
                "ending_amount": null,
                "usage_percent": "string"
              }
            ],
            "currency": "string"
          }
        ],
        "usage_type": "string",
        "created_at": "string",
        "usage_calculation_type": "string",
        "updated_at": "string",
        "deleted_at": "string"
      }
    ]
  },
  "chargebee_params": {
    "item_plan": {
      "name": "string",
      "item_family_id": "string",
      "description": "string",
      "usage_calculation": "string",
      "external_name": "string",
      "metered": true,
      "id": "string",
      "status": "string",
      "unit": "string",
      "updated_at": 0,
      "archived_at": 0
    },
    "item_price": {
      "name": "string",
      "item_id": "string",
      "description": "string",
      "price": 0,
      "price_in_decimal": "string",
      "external_name": "string",
      "tiers": [
        {
          "starting_unit": 0,
          "ending_unit": 0,
          "price": 0
        }
      ],
      "trial_end_action": "string",
      "trial_period": 0,
      "id": "string",
      "status": "string",
      "pricing_model": "string",
      "created_at": 0,
      "period_unit": "string",
      "updated_at": 0,
      "trial_period_unit": "string",
      "item_type": "string",
      "currency_code": "string",
      "archived_at": 0,
      "free_quantity": 0,
      "period": 0
    },
    "item_prices": [
      {
        "name": "string",
        "item_id": "string",
        "description": "string",
        "price": 0,
        "price_in_decimal": "string",
        "external_name": "string",
        "tiers": [
          {
            "starting_unit": 0,
            "ending_unit": 0,
            "price": 0
          }
        ],
        "trial_end_action": "string",
        "trial_period": 0,
        "id": "string",
        "status": "string",
        "pricing_model": "string",
        "created_at": 0,
        "period_unit": "string",
        "updated_at": 0,
        "trial_period_unit": "string",
        "item_type": "string",
        "currency_code": "string",
        "archived_at": 0,
        "free_quantity": 0,
        "period": 0
      }
    ],
    "reporting": {
      "reporting_period": "string"
    }
  },
  "stripe_params": {
    "product": {
      "name": "string",
      "description": "string",
      "unit_label": "string",
      "id": "string",
      "usage_type": "string"
    },
    "price": {
      "tiers_mode": "string",
      "transform_quantity": {
        "divide_by": 0,
        "round": "string"
      },
      "price_id": "string",
      "tiers": [
        {
          "flat_amount_decimal": "string",
          "up_to": 0,
          "unit_amount_decimal": "string",
          "flat_amount": 0,
          "unit_amount": 0
        }
      ],
      "recurring": {
        "trial_period_days": 0,
        "interval": "string",
        "usage_type": "string",
        "interval_count": 0,
        "aggregate_usage": "string"
      },
      "unit_amount_decimal": "string",
      "price_nickname": "string",
      "currency": "string",
      "billing_scheme": "string",
      "unit_amount": 0,
      "created": 0,
      "active": true
    },
    "prices": [
      {
        "tiers_mode": "string",
        "transform_quantity": {
          "divide_by": 0,
          "round": "string"
        },
        "price_id": "string",
        "tiers": [
          {
            "flat_amount_decimal": "string",
            "up_to": 0,
            "unit_amount_decimal": "string",
            "flat_amount": 0,
            "unit_amount": 0
          }
        ],
        "recurring": {
          "trial_period_days": 0,
          "interval": "string",
          "usage_type": "string",
          "interval_count": 0,
          "aggregate_usage": "string"
        },
        "unit_amount_decimal": "string",
        "price_nickname": "string",
        "currency": "string",
        "billing_scheme": "string",
        "unit_amount": 0,
        "created": 0,
        "active": true
      }
    ],
    "reporting": {
      "reporting_period": "string"
    }
  },
  "zuora_params": {
    "plan_id": "string",
    "price_id": "string",
    "price_ids": [
      "string"
    ]
  },
  "usage_multiplier": null
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|usage_rounding_mode|string|false|none|none|
|webhook_params|[BillingWebhookParams](#schemabillingwebhookparams)|false|none|none|
|recurly_params|[RecurlyBillingParams](#schemarecurlybillingparams)|false|none|none|
|chargebee_params|[ChargebeeBillingParams](#schemachargebeebillingparams)|false|none|none|
|stripe_params|[StripeBillingParams](#schemastripebillingparams)|false|none|none|
|zuora_params|[ZuoraBillingParams](#schemazuorabillingparams)|false|none|none|
|usage_multiplier|double|false|none|none|

<h2 id="tocS_RecurlyBillingParams">RecurlyBillingParams</h2>

<a id="schemarecurlybillingparams"></a>
<a id="schema_RecurlyBillingParams"></a>
<a id="tocSrecurlybillingparams"></a>
<a id="tocsrecurlybillingparams"></a>

```json
{
  "plan": {
    "name": "string",
    "id": "string",
    "code": "string"
  },
  "add_on": {
    "name": "string",
    "currencies": [
      {
        "currency": "string",
        "unit_amount": null,
        "unit_amount_decimal": "string"
      }
    ],
    "usage_percentage": null,
    "add_on_type": "string",
    "external_sku": "string",
    "state": "string",
    "tiers": [
      {
        "ending_quantity": 0,
        "currencies": [
          {
            "currency": "string",
            "unit_amount": null,
            "unit_amount_decimal": "string"
          }
        ]
      }
    ],
    "tier_type": "string",
    "code": "string",
    "plan_id": "string",
    "id": "string",
    "percentage_tiers": [
      {
        "tiers": [
          {
            "ending_amount": null,
            "usage_percent": "string"
          }
        ],
        "currency": "string"
      }
    ],
    "usage_type": "string",
    "created_at": "string",
    "usage_calculation_type": "string",
    "updated_at": "string",
    "deleted_at": "string"
  },
  "add_ons": [
    {
      "name": "string",
      "currencies": [
        {
          "currency": "string",
          "unit_amount": null,
          "unit_amount_decimal": "string"
        }
      ],
      "usage_percentage": null,
      "add_on_type": "string",
      "external_sku": "string",
      "state": "string",
      "tiers": [
        {
          "ending_quantity": 0,
          "currencies": [
            {
              "currency": "string",
              "unit_amount": null,
              "unit_amount_decimal": "string"
            }
          ]
        }
      ],
      "tier_type": "string",
      "code": "string",
      "plan_id": "string",
      "id": "string",
      "percentage_tiers": [
        {
          "tiers": [
            {
              "ending_amount": null,
              "usage_percent": "string"
            }
          ],
          "currency": "string"
        }
      ],
      "usage_type": "string",
      "created_at": "string",
      "usage_calculation_type": "string",
      "updated_at": "string",
      "deleted_at": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|plan|[RecurlyPlan](#schemarecurlyplan)|false|none|none|
|add_on|[RecurlyPlanAddOn](#schemarecurlyplanaddon)|false|none|none|
|add_ons|[[RecurlyPlanAddOn](#schemarecurlyplanaddon)]|false|none|none|

<h2 id="tocS_GovernanceRulesDocument">GovernanceRulesDocument</h2>

<a id="schemagovernancerulesdocument"></a>
<a id="schema_GovernanceRulesDocument"></a>
<a id="tocSgovernancerulesdocument"></a>
<a id="tocsgovernancerulesdocument"></a>

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "_id": "string",
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "created_at": "2019-08-24T14:15:22Z",
  "app_id": "string",
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string",
  "org_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|priority|integer(int32)|false|none|none|
|model|string|false|none|none|
|state|integer(int32)|true|none|none|
|cohorts|[object]|false|none|none|
|_id|string|false|none|none|
|variables|[[GovernanceRulesVariables](#schemagovernancerulesvariables)]|false|none|none|
|applied_to|string|false|none|none|
|block|boolean|true|none|none|
|response|[RulesResponseItem](#schemarulesresponseitem)|false|none|none|
|applied_to_unidentified|boolean|false|none|none|
|regex_config|[[RegexRule](#schemaregexrule)]|false|none|none|
|created_at|string(date-time)|true|none|none|
|app_id|string|true|none|none|
|plans|[[Plan](#schemaplan)]|false|none|none|
|type|string|true|none|none|
|org_id|string|true|none|none|

<h2 id="tocS_BillingPlan">BillingPlan</h2>

<a id="schemabillingplan"></a>
<a id="schema_BillingPlan"></a>
<a id="tocSbillingplan"></a>
<a id="tocsbillingplan"></a>

```json
{
  "provider_slug": "string",
  "friendly_name": "string",
  "params": {
    "usage_rounding_mode": "string",
    "webhook_params": {
      "reporting": {
        "report_when": [
          "string"
        ]
      },
      "channel_ids": [
        "string"
      ],
      "custom_plan": {
        "plan_id": "string"
      }
    },
    "recurly_params": {
      "plan": {
        "name": "string",
        "id": "string",
        "code": "string"
      },
      "add_on": {
        "name": "string",
        "currencies": [
          {
            "currency": "string",
            "unit_amount": null,
            "unit_amount_decimal": "string"
          }
        ],
        "usage_percentage": null,
        "add_on_type": "string",
        "external_sku": "string",
        "state": "string",
        "tiers": [
          {
            "ending_quantity": 0,
            "currencies": [
              {
                "currency": "string",
                "unit_amount": null,
                "unit_amount_decimal": "string"
              }
            ]
          }
        ],
        "tier_type": "string",
        "code": "string",
        "plan_id": "string",
        "id": "string",
        "percentage_tiers": [
          {
            "tiers": [
              {
                "ending_amount": null,
                "usage_percent": "string"
              }
            ],
            "currency": "string"
          }
        ],
        "usage_type": "string",
        "created_at": "string",
        "usage_calculation_type": "string",
        "updated_at": "string",
        "deleted_at": "string"
      },
      "add_ons": [
        {
          "name": "string",
          "currencies": [
            {
              "currency": "string",
              "unit_amount": null,
              "unit_amount_decimal": "string"
            }
          ],
          "usage_percentage": null,
          "add_on_type": "string",
          "external_sku": "string",
          "state": "string",
          "tiers": [
            {
              "ending_quantity": 0,
              "currencies": [
                {
                  "currency": "string",
                  "unit_amount": null,
                  "unit_amount_decimal": "string"
                }
              ]
            }
          ],
          "tier_type": "string",
          "code": "string",
          "plan_id": "string",
          "id": "string",
          "percentage_tiers": [
            {
              "tiers": [
                {
                  "ending_amount": null,
                  "usage_percent": "string"
                }
              ],
              "currency": "string"
            }
          ],
          "usage_type": "string",
          "created_at": "string",
          "usage_calculation_type": "string",
          "updated_at": "string",
          "deleted_at": "string"
        }
      ]
    },
    "chargebee_params": {
      "item_plan": {
        "name": "string",
        "item_family_id": "string",
        "description": "string",
        "usage_calculation": "string",
        "external_name": "string",
        "metered": true,
        "id": "string",
        "status": "string",
        "unit": "string",
        "updated_at": 0,
        "archived_at": 0
      },
      "item_price": {
        "name": "string",
        "item_id": "string",
        "description": "string",
        "price": 0,
        "price_in_decimal": "string",
        "external_name": "string",
        "tiers": [
          {
            "starting_unit": 0,
            "ending_unit": 0,
            "price": 0
          }
        ],
        "trial_end_action": "string",
        "trial_period": 0,
        "id": "string",
        "status": "string",
        "pricing_model": "string",
        "created_at": 0,
        "period_unit": "string",
        "updated_at": 0,
        "trial_period_unit": "string",
        "item_type": "string",
        "currency_code": "string",
        "archived_at": 0,
        "free_quantity": 0,
        "period": 0
      },
      "item_prices": [
        {
          "name": "string",
          "item_id": "string",
          "description": "string",
          "price": 0,
          "price_in_decimal": "string",
          "external_name": "string",
          "tiers": [
            {
              "starting_unit": 0,
              "ending_unit": 0,
              "price": 0
            }
          ],
          "trial_end_action": "string",
          "trial_period": 0,
          "id": "string",
          "status": "string",
          "pricing_model": "string",
          "created_at": 0,
          "period_unit": "string",
          "updated_at": 0,
          "trial_period_unit": "string",
          "item_type": "string",
          "currency_code": "string",
          "archived_at": 0,
          "free_quantity": 0,
          "period": 0
        }
      ],
      "reporting": {
        "reporting_period": "string"
      }
    },
    "stripe_params": {
      "product": {
        "name": "string",
        "description": "string",
        "unit_label": "string",
        "id": "string",
        "usage_type": "string"
      },
      "price": {
        "tiers_mode": "string",
        "transform_quantity": {
          "divide_by": 0,
          "round": "string"
        },
        "price_id": "string",
        "tiers": [
          {
            "flat_amount_decimal": "string",
            "up_to": 0,
            "unit_amount_decimal": "string",
            "flat_amount": 0,
            "unit_amount": 0
          }
        ],
        "recurring": {
          "trial_period_days": 0,
          "interval": "string",
          "usage_type": "string",
          "interval_count": 0,
          "aggregate_usage": "string"
        },
        "unit_amount_decimal": "string",
        "price_nickname": "string",
        "currency": "string",
        "billing_scheme": "string",
        "unit_amount": 0,
        "created": 0,
        "active": true
      },
      "prices": [
        {
          "tiers_mode": "string",
          "transform_quantity": {
            "divide_by": 0,
            "round": "string"
          },
          "price_id": "string",
          "tiers": [
            {
              "flat_amount_decimal": "string",
              "up_to": 0,
              "unit_amount_decimal": "string",
              "flat_amount": 0,
              "unit_amount": 0
            }
          ],
          "recurring": {
            "trial_period_days": 0,
            "interval": "string",
            "usage_type": "string",
            "interval_count": 0,
            "aggregate_usage": "string"
          },
          "unit_amount_decimal": "string",
          "price_nickname": "string",
          "currency": "string",
          "billing_scheme": "string",
          "unit_amount": 0,
          "created": 0,
          "active": true
        }
      ],
      "reporting": {
        "reporting_period": "string"
      }
    },
    "zuora_params": {
      "plan_id": "string",
      "price_id": "string",
      "price_ids": [
        "string"
      ]
    },
    "usage_multiplier": null
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|provider_slug|string|true|none|none|
|friendly_name|string|false|none|none|
|params|[BillingParams](#schemabillingparams)|false|none|none|

<h2 id="tocS_SubmitData">SubmitData</h2>

<a id="schemasubmitdata"></a>
<a id="schema_SubmitData"></a>
<a id="tocSsubmitdata"></a>
<a id="tocssubmitdata"></a>

```json
{
  "body": {},
  "url": "string",
  "params": [
    {
      "key": "string",
      "val": "string"
    }
  ],
  "verb": "string",
  "headers": [
    {
      "key": "string",
      "val": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|object|false|none|none|
|url|string|true|none|none|
|params|[[KeyValuePair](#schemakeyvaluepair)]|false|none|none|
|verb|string|true|none|none|
|headers|[[KeyValuePair](#schemakeyvaluepair)]|false|none|none|

<h2 id="tocS_NotificationRule">NotificationRule</h2>

<a id="schemanotificationrule"></a>
<a id="schema_NotificationRule"></a>
<a id="tocSnotificationrule"></a>
<a id="tocsnotificationrule"></a>

```json
{
  "send_on_addition": true,
  "send_on_removal": true,
  "period": "string",
  "fields": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|send_on_addition|boolean|true|none|none|
|send_on_removal|boolean|true|none|none|
|period|string|false|none|none|
|fields|[string]|false|none|none|

<h2 id="tocS_TemplateItem">TemplateItem</h2>

<a id="schematemplateitem"></a>
<a id="schema_TemplateItem"></a>
<a id="tocStemplateitem"></a>
<a id="tocstemplateitem"></a>

```json
{
  "dynamic_fields": [
    "string"
  ],
  "dynamic_time": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|dynamic_fields|[string]|true|none|none|
|dynamic_time|boolean|false|none|none|

<h2 id="tocS_Summary">Summary</h2>

<a id="schemasummary"></a>
<a id="schema_Summary"></a>
<a id="tocSsummary"></a>
<a id="tocssummary"></a>

```json
{
  "count": 0,
  "latest_comment": {
    "auth_user_id": "string",
    "comment_id": "string",
    "mentions": [
      "string"
    ],
    "partner_user_id": "string",
    "message": "string",
    "created_at": "2019-08-24T14:15:22Z",
    "updated_at": "2019-08-24T14:15:22Z"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|count|integer(int32)|true|none|none|
|latest_comment|[CreateCommentItem](#schemacreatecommentitem)|false|none|none|

<h2 id="tocS_GovernanceRuleUpdateItem">GovernanceRuleUpdateItem</h2>

<a id="schemagovernanceruleupdateitem"></a>
<a id="schema_GovernanceRuleUpdateItem"></a>
<a id="tocSgovernanceruleupdateitem"></a>
<a id="tocsgovernanceruleupdateitem"></a>

```json
{
  "name": "string",
  "priority": 0,
  "model": "string",
  "state": 0,
  "cohorts": [
    {}
  ],
  "variables": [
    {
      "name": "string",
      "path": "string"
    }
  ],
  "applied_to": "string",
  "block": true,
  "response": {
    "status": 0,
    "headers": null,
    "body": {},
    "original_encoded_body": "string"
  },
  "applied_to_unidentified": true,
  "regex_config": [
    {
      "conditions": [
        {
          "path": "string",
          "value": "string"
        }
      ],
      "sample_rate": 0
    }
  ],
  "plans": [
    {
      "provider": "string",
      "plan_id": "string",
      "price_ids": [
        "string"
      ]
    }
  ],
  "type": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|priority|integer(int32)|false|none|none|
|model|string|false|none|none|
|state|integer(int32)|false|none|none|
|cohorts|[object]|false|none|none|
|variables|[[GovernanceRulesVariables](#schemagovernancerulesvariables)]|false|none|none|
|applied_to|string|false|none|none|
|block|boolean|false|none|none|
|response|[RulesResponseItem](#schemarulesresponseitem)|false|none|none|
|applied_to_unidentified|boolean|false|none|none|
|regex_config|[[RegexRule](#schemaregexrule)]|false|none|none|
|plans|[[Plan](#schemaplan)]|false|none|none|
|type|string|false|none|none|

<h2 id="tocS_BillingWebhookParams">BillingWebhookParams</h2>

<a id="schemabillingwebhookparams"></a>
<a id="schema_BillingWebhookParams"></a>
<a id="tocSbillingwebhookparams"></a>
<a id="tocsbillingwebhookparams"></a>

```json
{
  "reporting": {
    "report_when": [
      "string"
    ]
  },
  "channel_ids": [
    "string"
  ],
  "custom_plan": {
    "plan_id": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|reporting|[CustomReporting](#schemacustomreporting)|false|none|none|
|channel_ids|[string]|true|none|none|
|custom_plan|[CustomReportPlan](#schemacustomreportplan)|true|none|none|

<h2 id="tocS_searchUsersResponseDTO">searchUsersResponseDTO</h2>

<a id="schemasearchusersresponsedto"></a>
<a id="schema_searchUsersResponseDTO"></a>
<a id="tocSsearchusersresponsedto"></a>
<a id="tocssearchusersresponsedto"></a>

```json
{
  "took": 11,
  "timed_out": false,
  "hits": {
    "total": 420,
    "hits": [
      {
        "_id": "123456",
        "_source": {
          "first_name": "John",
          "body": {},
          "name": "John Doe",
          "email": "john.doe@gmail.com",
          "first_seen_time": "2019-07-27T21:52:58.0990000Z",
          "user_agent": {
            "name": "Android",
            "os_major": "7",
            "os": "Android 7.0",
            "os_name": "Android",
            "os_minor": "0",
            "major": "7",
            "device": "Samsung SM-G955U",
            "minor": "0"
          },
          "geo_ip": {
            "ip": "107.200.85.196",
            "region_name": "South Carolina",
            "continent_code": "NA",
            "location": {
              "lon": -79.85489654541016,
              "lat": 32.822898864746094
            },
            "latitude": 32.822898864746094,
            "timezone": "America/New_York",
            "longitude": -79.85489654541016,
            "dma_code": 519,
            "postal_code": "29464",
            "region_code": "SC",
            "city_name": "Mt. Pleasant",
            "country_code2": "US",
            "country_code3": "US",
            "country_name": "United States"
          },
          "modified_time": "2019-07-27T21:55:19.464",
          "last_name": "Doe",
          "ip_address": "107.200.85.196",
          "session_token": [
            "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
          ],
          "last_seen_time": "2019-07-27T21:52:58.0990000Z",
          "app_id": "198:3",
          "org_id": "177:3"
        },
        "sort": [
          1519768519464
        ]
      }
    ]
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|took|integer|false|none|none|
|timed_out|boolean|false|none|none|
|hits|object|false|none|none|
|» total|integer|false|none|none|
|» hits|[[userResponseDTO](#schemauserresponsedto)]|false|none|none|

<h2 id="tocS_SubscriptionDTO">SubscriptionDTO</h2>

<a id="schemasubscriptiondto"></a>
<a id="schema_SubscriptionDTO"></a>
<a id="tocSsubscriptiondto"></a>
<a id="tocssubscriptiondto"></a>

```json
{
  "trial_start": "2019-08-24T14:15:22Z",
  "company_id": "string",
  "start_date": "2019-08-24T14:15:22Z",
  "collection_method": "string",
  "provider": "string",
  "items": [
    {
      "item_price_id": "string",
      "price_id": "string",
      "is_metered": true,
      "plan_id": "string",
      "unit_of_measure": "string",
      "status": "string",
      "subscription_item_id": "string"
    }
  ],
  "current_period_start": "2019-08-24T14:15:22Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2019-08-24T14:15:22Z",
  "cancel_time": "2019-08-24T14:15:22Z",
  "status": "string",
  "trial_end": "2019-08-24T14:15:22Z",
  "external_id": "string",
  "metadata": {
    "underlying": {}
  },
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2019-08-24T14:15:22Z",
  "org_id": "string",
  "created": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|trial_start|string(date-time)|false|none|none|
|company_id|string|true|none|none|
|start_date|string(date-time)|false|none|none|
|collection_method|string|false|none|none|
|provider|string|false|none|none|
|items|[[SubscriptionItem](#schemasubscriptionitem)]|false|none|none|
|current_period_start|string(date-time)|false|none|none|
|company_external_id|string|false|none|none|
|payment_status|string|false|none|none|
|modified_time|string(date-time)|false|none|none|
|cancel_time|string(date-time)|false|none|none|
|status|string|true|none|none|
|trial_end|string(date-time)|false|none|none|
|external_id|string|false|none|none|
|metadata|[JsObject](#schemajsobject)|false|none|none|
|app_id|string|true|none|none|
|subscription_id|string|true|none|none|
|version_id|string|false|none|none|
|type|string|true|none|none|
|current_period_end|string(date-time)|false|none|none|
|org_id|string|true|none|none|
|created|string(date-time)|false|none|none|

<h2 id="tocS_searchEventsResponseDTO">searchEventsResponseDTO</h2>

<a id="schemasearcheventsresponsedto"></a>
<a id="schema_searchEventsResponseDTO"></a>
<a id="tocSsearcheventsresponsedto"></a>
<a id="tocssearcheventsresponsedto"></a>

```json
{
  "took": 358,
  "timed_out": false,
  "hits": {
    "total": 947,
    "hits": [
      {
        "_id": "AWF5M-FDTqLFD8l5y2f4",
        "_source": {
          "duration_ms": 76,
          "request": {
            "body": {},
            "uri": "https://api.github.com",
            "user_agent": {
              "patch": "1",
              "major": "7",
              "minor": "1",
              "name": "PostmanRuntime"
            },
            "geo_ip": {
              "ip": "73.189.235.253",
              "region_name": "CA",
              "continent_code": "NA",
              "location": [
                -122.393
              ],
              "latitude": 37.769,
              "timezone": "America/Los_Angeles",
              "area_code": 415,
              "longitude": -122.393,
              "real_region_name": "California",
              "dma_code": 807,
              "postal_code": "94107",
              "city_name": "San Francisco",
              "country_code2": "US",
              "country_code3": "USA",
              "country_name": "United States"
            },
            "ip_address": "73.189.235.253",
            "verb": "GET",
            "route": "/",
            "time": "2019-07-09T06:14:58.550",
            "headers": {
              "_accept-_encoding": "gzip, deflate",
              "_connection": "close",
              "_cache-_control": "no-cache",
              "_user-_agent": "PostmanRuntime/7.1.1",
              "_host": "api.github.com",
              "_accept": "*/*"
            }
          },
          "user_id": "123454",
          "response": {
            "headers": {
              "_vary": "Accept",
              "_cache-_control": "public, max-age=60, s-maxage=60",
              "_strict-_transport-_security": "max-age=31536000; includeSubdomains; preload",
              "_access-_control-_expose-_headers": "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval",
              "_content-_security-_policy": "default-src 'none'",
              "_transfer-_encoding": "chunked",
              "_e_tag": "W/\"7dc470913f1fe9bb6c7355b50a0737bc\"",
              "_content-_type": "application/json; charset=utf-8",
              "_access-_control-_allow-_origin": "*"
            },
            "time": "2019-07-09T06:14:58.626",
            "body": {},
            "status": 200
          },
          "id": "AWF5M-FDTqLFD8l5y2f4",
          "session_token": "rdfmnw3fu24309efjc534nb421UZ9-]2JDO[ME",
          "metadata": {},
          "app_id": "198:3",
          "org_id": "177:3",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|took|integer|false|none|none|
|timed_out|boolean|false|none|none|
|hits|object|false|none|none|
|» total|integer|false|none|none|
|» hits|[[eventResponseDTO](#schemaeventresponsedto)]|false|none|none|

<h2 id="tocS_JsObject">JsObject</h2>

<a id="schemajsobject"></a>
<a id="schema_JsObject"></a>
<a id="tocSjsobject"></a>
<a id="tocsjsobject"></a>

```json
{
  "underlying": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|underlying|object|true|none|none|

<h2 id="tocS_searchcompanysResponseDTO">searchcompanysResponseDTO</h2>

<a id="schemasearchcompanysresponsedto"></a>
<a id="schema_searchcompanysResponseDTO"></a>
<a id="tocSsearchcompanysresponsedto"></a>
<a id="tocssearchcompanysresponsedto"></a>

```json
{
  "took": 11,
  "timed_out": false,
  "hits": {
    "total": 420,
    "hits": []
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|took|integer|false|none|none|
|timed_out|boolean|false|none|none|
|hits|object|false|none|none|
|» total|integer|false|none|none|
|» hits|[[companyResponseDTO](#schemacompanyresponsedto)]|false|none|none|

<h2 id="tocS_UserUpdateDTO">UserUpdateDTO</h2>

<a id="schemauserupdatedto"></a>
<a id="schema_UserUpdateDTO"></a>
<a id="tocSuserupdatedto"></a>
<a id="tocsuserupdatedto"></a>

```json
{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2019-08-24T14:15:22Z",
  "last_name": "string",
  "session_token": {},
  "metadata": {
    "underlying": {}
  },
  "user_name": "string",
  "phone": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|company_id|string|false|none|none|
|first_name|string|false|none|none|
|name|string|false|none|none|
|email|string|false|none|none|
|photo_url|string|false|none|none|
|user_id|string|true|none|none|
|modified_time|string(date-time)|false|none|none|
|last_name|string|false|none|none|
|session_token|[JsValue](#schemajsvalue)|false|none|none|
|metadata|[JsObject](#schemajsobject)|false|none|none|
|user_name|string|false|none|none|
|phone|string|false|none|none|

<h2 id="tocS_SubscriptionItem">SubscriptionItem</h2>

<a id="schemasubscriptionitem"></a>
<a id="schema_SubscriptionItem"></a>
<a id="tocSsubscriptionitem"></a>
<a id="tocssubscriptionitem"></a>

```json
{
  "item_price_id": "string",
  "price_id": "string",
  "is_metered": true,
  "plan_id": "string",
  "unit_of_measure": "string",
  "status": "string",
  "subscription_item_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|item_price_id|string|false|none|none|
|price_id|string|false|none|none|
|is_metered|boolean|false|none|none|
|plan_id|string|true|none|none|
|unit_of_measure|string|false|none|none|
|status|string|false|none|none|
|subscription_item_id|string|false|none|none|

<h2 id="tocS_userResponseDTO">userResponseDTO</h2>

<a id="schemauserresponsedto"></a>
<a id="schema_userResponseDTO"></a>
<a id="tocSuserresponsedto"></a>
<a id="tocsuserresponsedto"></a>

```json
{
  "_id": "123456",
  "_source": {
    "first_name": "John",
    "body": {},
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "first_seen_time": "2019-07-27T21:52:58.0990000Z",
    "user_agent": {
      "name": "Android",
      "os_major": "7",
      "os": "Android 7.0",
      "os_name": "Android",
      "os_minor": "0",
      "major": "7",
      "device": "Samsung SM-G955U",
      "minor": "0"
    },
    "geo_ip": {
      "ip": "107.200.85.196",
      "region_name": "South Carolina",
      "continent_code": "NA",
      "location": {
        "lon": -79.85489654541016,
        "lat": 32.822898864746094
      },
      "latitude": 32.822898864746094,
      "timezone": "America/New_York",
      "longitude": -79.85489654541016,
      "dma_code": 519,
      "postal_code": "29464",
      "region_code": "SC",
      "city_name": "Mt. Pleasant",
      "country_code2": "US",
      "country_code3": "US",
      "country_name": "United States"
    },
    "modified_time": "2019-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2019-07-27T21:52:58.0990000Z",
    "app_id": "198:3",
    "org_id": "177:3"
  },
  "sort": [
    1519768519464
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|_id|string|false|none|none|
|_source|object|false|none|none|
|» first_name|string|false|none|none|
|» body|object|false|none|none|
|» name|string|false|none|none|
|» email|string|false|none|none|
|» first_seen_time|string|false|none|none|
|» user_agent|object|false|none|none|
|»» name|string|false|none|none|
|»» os_major|string|false|none|none|
|»» os|string|false|none|none|
|»» os_name|string|false|none|none|
|»» os_minor|string|false|none|none|
|»» major|string|false|none|none|
|»» device|string|false|none|none|
|»» minor|string|false|none|none|
|» geo_ip|object|false|none|none|
|»» ip|string|false|none|none|
|»» region_name|string|false|none|none|
|»» continent_code|string|false|none|none|
|»» location|object|false|none|none|
|»»» lon|double|false|none|none|
|»»» lat|double|false|none|none|
|»» latitude|double|false|none|none|
|»» timezone|string|false|none|none|
|»» longitude|double|false|none|none|
|»» dma_code|integer|false|none|none|
|»» postal_code|string|false|none|none|
|»» region_code|string|false|none|none|
|»» city_name|string|false|none|none|
|»» country_code2|string|false|none|none|
|»» country_code3|string|false|none|none|
|»» country_name|string|false|none|none|
|» modified_time|string|false|none|none|
|» last_name|string|false|none|none|
|» ip_address|string|false|none|none|
|» session_token|[string]|false|none|none|
|» last_seen_time|string|false|none|none|
|» app_id|string|false|none|none|
|» org_id|string|false|none|none|
|sort|[integer]|false|none|none|

<h2 id="tocS_eventResponseDTO">eventResponseDTO</h2>

<a id="schemaeventresponsedto"></a>
<a id="schema_eventResponseDTO"></a>
<a id="tocSeventresponsedto"></a>
<a id="tocseventresponsedto"></a>

```json
{
  "_id": "AWF5M-FDTqLFD8l5y2f4",
  "_source": {
    "duration_ms": 76,
    "request": {
      "body": {},
      "uri": "https://api.github.com",
      "user_agent": {
        "patch": "1",
        "major": "7",
        "minor": "1",
        "name": "PostmanRuntime"
      },
      "geo_ip": {
        "ip": "73.189.235.253",
        "region_name": "CA",
        "continent_code": "NA",
        "location": [
          -122.393
        ],
        "latitude": 37.769,
        "timezone": "America/Los_Angeles",
        "area_code": 415,
        "longitude": -122.393,
        "real_region_name": "California",
        "dma_code": 807,
        "postal_code": "94107",
        "city_name": "San Francisco",
        "country_code2": "US",
        "country_code3": "USA",
        "country_name": "United States"
      },
      "ip_address": "73.189.235.253",
      "verb": "GET",
      "route": "/",
      "time": "2019-07-09T06:14:58.550",
      "headers": {
        "_accept-_encoding": "gzip, deflate",
        "_connection": "close",
        "_cache-_control": "no-cache",
        "_user-_agent": "PostmanRuntime/7.1.1",
        "_host": "api.github.com",
        "_accept": "*/*"
      }
    },
    "user_id": "123454",
    "response": {
      "headers": {
        "_vary": "Accept",
        "_cache-_control": "public, max-age=60, s-maxage=60",
        "_strict-_transport-_security": "max-age=31536000; includeSubdomains; preload",
        "_access-_control-_expose-_headers": "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval",
        "_content-_security-_policy": "default-src 'none'",
        "_transfer-_encoding": "chunked",
        "_e_tag": "W/\"7dc470913f1fe9bb6c7355b50a0737bc\"",
        "_content-_type": "application/json; charset=utf-8",
        "_access-_control-_allow-_origin": "*"
      },
      "time": "2019-07-09T06:14:58.626",
      "body": {},
      "status": 200
    },
    "id": "AWF5M-FDTqLFD8l5y2f4",
    "session_token": "rdfmnw3fu24309efjc534nb421UZ9-]2JDO[ME",
    "metadata": {},
    "app_id": "198:3",
    "org_id": "177:3",
    "user": {}
  },
  "sort": [
    0
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|_id|string|false|none|none|
|_source|object|false|none|none|
|» duration_ms|integer|false|none|none|
|» request|object|false|none|none|
|»» body|object|false|none|none|
|»» uri|string|false|none|none|
|»» user_agent|object|false|none|none|
|»»» patch|string|false|none|none|
|»»» major|string|false|none|none|
|»»» minor|string|false|none|none|
|»»» name|string|false|none|none|
|»» geo_ip|object|false|none|none|
|»»» ip|string|false|none|none|
|»»» region_name|string|false|none|none|
|»»» continent_code|string|false|none|none|
|»»» location|[double]|false|none|none|
|»»» latitude|double|false|none|none|
|»»» timezone|string|false|none|none|
|»»» area_code|integer|false|none|none|
|»»» longitude|double|false|none|none|
|»»» real_region_name|string|false|none|none|
|»»» dma_code|integer|false|none|none|
|»»» postal_code|string|false|none|none|
|»»» city_name|string|false|none|none|
|»»» country_code2|string|false|none|none|
|»»» country_code3|string|false|none|none|
|»»» country_name|string|false|none|none|
|»» ip_address|string|false|none|none|
|»» verb|string|false|none|none|
|»» route|string|false|none|none|
|»» time|string|false|none|none|
|»» headers|object|false|none|none|
|»»» _accept-_encoding|string|false|none|none|
|»»» _connection|string|false|none|none|
|»»» _cache-_control|string|false|none|none|
|»»» _user-_agent|string|false|none|none|
|»»» _host|string|false|none|none|
|»»» _accept|string|false|none|none|
|» user_id|string|false|none|none|
|» response|object|false|none|none|
|»» headers|object|false|none|none|
|»»» _vary|string|false|none|none|
|»»» _cache-_control|string|false|none|none|
|»»» _strict-_transport-_security|string|false|none|none|
|»»» _access-_control-_expose-_headers|string|false|none|none|
|»»» _content-_security-_policy|string|false|none|none|
|»»» _transfer-_encoding|string|false|none|none|
|»»» _e_tag|string|false|none|none|
|»»» _content-_type|string|false|none|none|
|»»» _access-_control-_allow-_origin|string|false|none|none|
|»» time|string|false|none|none|
|»» body|object|false|none|none|
|»» status|integer|false|none|none|
|» id|string|false|none|none|
|» session_token|string|false|none|none|
|» metadata|object|false|none|none|
|» app_id|string|false|none|none|
|» org_id|string|false|none|none|
|» user|object|false|none|none|
|sort|[integer]|false|none|none|

<h2 id="tocS_AddSubscriptionDTO">AddSubscriptionDTO</h2>

<a id="schemaaddsubscriptiondto"></a>
<a id="schema_AddSubscriptionDTO"></a>
<a id="tocSaddsubscriptiondto"></a>
<a id="tocsaddsubscriptiondto"></a>

```json
{
  "trial_start": "2019-08-24T14:15:22Z",
  "company_id": "string",
  "start_date": "2019-08-24T14:15:22Z",
  "collection_method": "string",
  "provider": "string",
  "items": [
    {
      "item_price_id": "string",
      "price_id": "string",
      "is_metered": true,
      "plan_id": "string",
      "unit_of_measure": "string",
      "status": "string",
      "subscription_item_id": "string"
    }
  ],
  "current_period_start": "2019-08-24T14:15:22Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2019-08-24T14:15:22Z",
  "status": "string",
  "trial_end": "2019-08-24T14:15:22Z",
  "external_id": "string",
  "metadata": {
    "underlying": {}
  },
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2019-08-24T14:15:22Z",
  "created": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|trial_start|string(date-time)|false|none|none|
|company_id|string|true|none|none|
|start_date|string(date-time)|false|none|none|
|collection_method|string|false|none|none|
|provider|string|false|none|none|
|items|[[SubscriptionItem](#schemasubscriptionitem)]|false|none|none|
|current_period_start|string(date-time)|false|none|none|
|company_external_id|string|false|none|none|
|payment_status|string|false|none|none|
|cancel_time|string(date-time)|false|none|none|
|status|string|true|none|none|
|trial_end|string(date-time)|false|none|none|
|external_id|string|false|none|none|
|metadata|[JsObject](#schemajsobject)|false|none|none|
|subscription_id|string|true|none|none|
|version_id|string|false|none|none|
|current_period_end|string(date-time)|false|none|none|
|created|string(date-time)|false|none|none|

<h2 id="tocS_JsValue">JsValue</h2>

<a id="schemajsvalue"></a>
<a id="schema_JsValue"></a>
<a id="tocSjsvalue"></a>
<a id="tocsjsvalue"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_CompanyUpdateDTO">CompanyUpdateDTO</h2>

<a id="schemacompanyupdatedto"></a>
<a id="schema_CompanyUpdateDTO"></a>
<a id="tocScompanyupdatedto"></a>
<a id="tocscompanyupdatedto"></a>

```json
{
  "company_id": "string",
  "modified_time": "2019-08-24T14:15:22Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {
    "underlying": {}
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|company_id|string|true|none|none|
|modified_time|string(date-time)|false|none|none|
|session_token|string|false|none|none|
|company_domain|string|false|none|none|
|metadata|[JsObject](#schemajsobject)|false|none|none|


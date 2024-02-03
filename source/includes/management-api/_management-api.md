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
|body|body|undefined|false|none|

> Example responses

<h3 id="creategovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="creategovernancerule-responseschema">Response Schema</h3>

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

<h3 id="getgovernancerules-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getgovernancerules-responseschema">Response Schema</h3>

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
|body|body|undefined|false|none|

> Example responses

<h3 id="updategovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="updategovernancerule-responseschema">Response Schema</h3>

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

<h3 id="getgovernancerule-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getgovernancerule-responseschema">Response Schema</h3>

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

<h3 id="createdashboard-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="createdashboard-responseschema">Response Schema</h3>

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
[]
```

<h3 id="getbillingreports-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getbillingreports-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

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
|body|body|undefined|false|none|

> Example responses

<h3 id="createencryptedkeys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="createencryptedkeys-responseschema">Response Schema</h3>

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

<h3 id="getencryptedkeys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getencryptedkeys-responseschema">Response Schema</h3>

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

<h3 id="getencryptedkey-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getencryptedkey-responseschema">Response Schema</h3>

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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[SignedTokenDTO](#schemasignedtokendto)|

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
[]
```

<h3 id="getworkspacetemplates-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getworkspacetemplates-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

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

<h3 id="getworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getworkspace-responseschema">Response Schema</h3>

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

<h3 id="getpublicworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getpublicworkspace-responseschema">Response Schema</h3>

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

<h3 id="createworkspace-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="createworkspace-responseschema">Response Schema</h3>

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
[]
```

<h3 id="getworkspaces-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="getworkspaces-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

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
|body|body|undefined|false|none|

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
|body|body|undefined|false|none|

> Example responses

<h3 id="createcohort-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|None|

<h3 id="createcohort-responseschema">Response Schema</h3>

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

<h3 id="getmeter-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getmeter-responseschema">Response Schema</h3>

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
[]
```

<h3 id="listmeters-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="listmeters-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

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

<h3 id="getmoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getmoesifprice-responseschema">Response Schema</h3>

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
|body|body|undefined|false|none|

> Example responses

<h3 id="updatemoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="updatemoesifprice-responseschema">Response Schema</h3>

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
|body|body|undefined|false|none|

> Example responses

<h3 id="createmoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|created|None|

<h3 id="createmoesifplan-responseschema">Response Schema</h3>

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
[]
```

<h3 id="listmoesifplans-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="listmoesifplans-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

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

<h3 id="getmoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getmoesifplan-responseschema">Response Schema</h3>

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
|body|body|undefined|false|none|

> Example responses

<h3 id="updatemoesifplan-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="updatemoesifplan-responseschema">Response Schema</h3>

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
|body|body|undefined|false|none|

> Example responses

<h3 id="createmoesifprice-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|created|None|

<h3 id="createmoesifprice-responseschema">Response Schema</h3>

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
[]
```

<h3 id="listmoesifprices-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|Inline|

<h3 id="listmoesifprices-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|any|false|none|none|

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
|body|body|undefined|false|none|

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
|body|body|undefined|false|none|

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
|from|query|string(date-time)|false|The start date, which can be absolute such as 2024-02-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2024-02-02T00:00:00Z or relative such as now|
|body|body|undefined|false|The search definition using the Elasticsearch Query DSL|

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
|body|body|undefined|false|A query to restrict the results specified with the Elasticsearch Query DSL|

> Example responses

<h3 id="countcompanies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="countcompanies-responseschema">Response Schema</h3>

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

<h3 id="getproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getproperties-responseschema">Response Schema</h3>

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

<h3 id="getrequestbodyproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getrequestbodyproperties-responseschema">Response Schema</h3>

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

<h3 id="getresponsebodyproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getresponsebodyproperties-responseschema">Response Schema</h3>

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

<h3 id="getsubscription-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getsubscription-responseschema">Response Schema</h3>

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
|body|body|[SubscriptionDTO](#schemasubscriptiondto)|false|none|

> Example responses

<h3 id="batchcreatesubscriptions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="batchcreatesubscriptions-responseschema">Response Schema</h3>

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
|body|body|[SubscriptionDTO](#schemasubscriptiondto)|false|none|

> Example responses

<h3 id="createsubscription-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="createsubscription-responseschema">Response Schema</h3>

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
|body|body|undefined|false|The search definition using the Elasticsearch Query DSL|

> Example responses

<h3 id="countevents-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="countevents-responseschema">Response Schema</h3>

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
|from|query|string(date-time)|true|The start date, which can be absolute such as 2024-02-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2024-02-02T00:00:00Z or relative such as now|
|body|body|undefined|false|The search definition using the Elasticsearch Query DSL|

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
|from|query|string(date-time)|true|The start date, which can be absolute such as 2024-02-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2024-02-02T00:00:00Z or relative such as now|
|workspaceId|path|string|true|none|
|include_details|query|boolean|false|none|
|take|query|integer(int32)|false|none|
|body|body|undefined|false|The search definition using the Elasticsearch Query DSL|

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
|body|body|undefined|false|A query to restrict the results specified with the Elasticsearch Query DSL|

> Example responses

<h3 id="countusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="countusers-responseschema">Response Schema</h3>

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
|from|query|string(date-time)|false|The start date, which can be absolute such as 2024-02-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2024-02-02T00:00:00Z or relative such as now|
|body|body|undefined|false|The search definition using the Elasticsearch Query DSL|

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
|metric|math.bigdecimal|true|none|none|
|usage|math.bigdecimal|true|none|none|
|errors|[string]|false|none|none|

<h2 id="tocS_SignedTokenDTO">SignedTokenDTO</h2>

<a id="schemasignedtokendto"></a>
<a id="schema_SignedTokenDTO"></a>
<a id="tocSsignedtokendto"></a>
<a id="tocssignedtokendto"></a>

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
  "metadata": null
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|company_id|string|true|none|none|
|modified_time|string(date-time)|false|none|none|
|session_token|string|false|none|none|
|company_domain|string|false|none|none|
|metadata|[play.api.libs.json.JsObject](#schemaplay.api.libs.json.jsobject)|false|none|none|

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
  "session_token": null,
  "metadata": null,
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
|session_token|[play.api.libs.json.JsValue](#schemaplay.api.libs.json.jsvalue)|false|none|none|
|metadata|[play.api.libs.json.JsObject](#schemaplay.api.libs.json.jsobject)|false|none|none|
|user_name|string|false|none|none|
|phone|string|false|none|none|

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

<h2 id="tocS_SubscriptionDTO">SubscriptionDTO</h2>

<a id="schemasubscriptiondto"></a>
<a id="schema_SubscriptionDTO"></a>
<a id="tocSsubscriptiondto"></a>
<a id="tocssubscriptiondto"></a>

```json
{
  "trial_start": "2019-08-24T14:15:22Z",
  "company_id": "string",
  "items": [
    {
      "plan_id": "string"
    }
  ],
  "current_period_start": "2019-08-24T14:15:22Z",
  "status": "string",
  "trial_end": "2019-08-24T14:15:22Z",
  "external_id": "string",
  "subscription_id": "string",
  "current_period_end": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|trial_start|string(date-time)|false|none|none|
|company_id|string|true|none|none|
|items|[[SubscriptionItem](#schemasubscriptionitem)]|false|none|none|
|current_period_start|string(date-time)|true|none|none|
|status|string|true|none|none|
|trial_end|string(date-time)|false|none|none|
|external_id|string|false|none|none|
|subscription_id|string|true|none|none|
|current_period_end|string(date-time)|true|none|none|

<h2 id="tocS_SubscriptionItem">SubscriptionItem</h2>

<a id="schemasubscriptionitem"></a>
<a id="schema_SubscriptionItem"></a>
<a id="tocSsubscriptionitem"></a>
<a id="tocssubscriptionitem"></a>

```json
{
  "plan_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|plan_id|string|true|none|none|


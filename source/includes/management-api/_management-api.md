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

<h1 id="management-api-companies">Companies</h1>

## updateCompanies

<a id="opIdupdateCompanies"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/companies \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/companies',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}

r = requests.post('https://api.moesif.com/v1/search/~/companies', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}')

result = RestClient.post 'https://api.moesif.com/v1/search/~/companies',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/companies', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""company_id"": ""string"",
  ""modified_time"": ""2024-04-11T04:01:35.090Z"",
  ""session_token"": ""string"",
  ""company_domain"": ""string"",
  ""metadata"": {}
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(CompanyUpdate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(CompanyUpdate content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/companies`

*Update a Company*

> `POST https://api.moesif.com/v1/search/~/companies`

> Example Request

```json
{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}
```

<h3 id="updatecompanies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CompanyUpdate](#schemacompanyupdatedto)|true|none|

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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '[
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = [
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
];
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/companies/batch',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = [
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]

r = requests.post('https://api.moesif.com/v1/search/~/companies/batch', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('[
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]')

result = RestClient.post 'https://api.moesif.com/v1/search/~/companies/batch',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('[
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/companies/batch', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `[
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"[
  {
    ""company_id"": ""string"",
    ""modified_time"": ""2024-04-11T04:01:35.090Z"",
    ""session_token"": ""string"",
    ""company_domain"": ""string"",
    ""metadata"": {}
  }
]";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(CompanyUpdate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(CompanyUpdate content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """[
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/companies/batch`

*Update Companies in Batch*

> `POST https://api.moesif.com/v1/search/~/companies/batch`

> Example Request

```json
[
  {
    "company_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "session_token": "string",
    "company_domain": "string",
    "metadata": {}
  }
]
```

<h3 id="batchupdatecompanies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CompanyUpdate](#schemacompanyupdatedto)|true|none|

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/companies/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/companies/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/companies/{id}`

*Get a Company*

> `GET https://api.moesif.com/v1/search/~/companies/{id}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/search/~/companies/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/search/~/companies/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /search/~/companies/{id}`

*Delete a Company*

> `DELETE https://api.moesif.com/v1/search/~/companies/{id}`

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

## countCompanies

<a id="opIdcountCompanies"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/count/companies?app_id=string \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/count/companies?app_id=string',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/count/companies', params={
  'app_id': 'string'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/count/companies',
  params: {
  'app_id' => 'string'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/count/companies', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/count/companies`

*Count Companies*

> `POST https://api.moesif.com/v1/search/~/count/companies`

> Example Request

```json
false
```

<h3 id="countcompanies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

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

## searchCompanyMetrics

<a id="opIdsearchCompanyMetrics"></a>

<aside class="warning">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/companymetrics/companies \
  -H 'Content-Type: application/json' \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'0',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/search/companymetrics/companies',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '0',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/search/companymetrics/companies', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '0',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/companymetrics/companies',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => '0',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/companymetrics/companies', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"0"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'0');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/search/companymetrics/companies`

*Search CompanyMetrics/Companies*

> `POST https://api.moesif.com/v1/search/~/search/companymetrics/companies`

> Example Request

```json
false
```

<h3 id="searchcompanymetrics-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|

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

<h1 id="management-api-subscriptions">Subscriptions</h1>

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/companies/{id}/subscriptions', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/companies/{id}/subscriptions")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/companies/{id}/subscriptions`

*Get the Subscriptions of a Company*

> `GET https://api.moesif.com/v1/search/~/companies/{id}/subscriptions`

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

## createSubscription

<a id="opIdcreateSubscription"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/subscriptions \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/subscriptions',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}

r = requests.post('https://api.moesif.com/v1/search/~/subscriptions', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}')

result = RestClient.post 'https://api.moesif.com/v1/search/~/subscriptions',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/subscriptions', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""trial_start"": ""2024-04-11T04:01:35.090Z"",
  ""company_id"": ""string"",
  ""start_date"": ""2024-04-11T04:01:35.090Z"",
  ""collection_method"": ""string"",
  ""provider"": ""string"",
  ""items"": [
    {
      ""item_price_id"": ""string"",
      ""price_id"": ""string"",
      ""is_metered"": true,
      ""plan_id"": ""string"",
      ""unit_of_measure"": ""string"",
      ""status"": ""string"",
      ""subscription_item_id"": ""string""
    }
  ],
  ""current_period_start"": ""2024-04-11T04:01:35.090Z"",
  ""company_external_id"": ""string"",
  ""payment_status"": ""string"",
  ""cancel_time"": ""2024-04-11T04:01:35.090Z"",
  ""status"": ""string"",
  ""trial_end"": ""2024-04-11T04:01:35.090Z"",
  ""external_id"": ""string"",
  ""metadata"": {},
  ""subscription_id"": ""string"",
  ""version_id"": ""string"",
  ""current_period_end"": ""2024-04-11T04:01:35.090Z"",
  ""created"": ""2024-04-11T04:01:35.090Z""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(AddSubscription content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(AddSubscription content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/subscriptions`

*Create or Update a Subscription*

> `POST https://api.moesif.com/v1/search/~/subscriptions`

> Example Request

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="createsubscription-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[AddSubscription](#schemaaddsubscriptiondto)|true|none|

> Example responses

> 200 Response

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "org_id": "string",
  "created": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="createsubscription-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[Subscription](#schemasubscriptiondto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:subscriptions update:subscriptions )
</aside>

## batchCreateSubscriptions

<a id="opIdbatchCreateSubscriptions"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/subscriptions/batch \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/subscriptions/batch',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}

r = requests.post('https://api.moesif.com/v1/search/~/subscriptions/batch', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}')

result = RestClient.post 'https://api.moesif.com/v1/search/~/subscriptions/batch',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/subscriptions/batch', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""trial_start"": ""2024-04-11T04:01:35.090Z"",
  ""company_id"": ""string"",
  ""start_date"": ""2024-04-11T04:01:35.090Z"",
  ""collection_method"": ""string"",
  ""provider"": ""string"",
  ""items"": [
    {
      ""item_price_id"": ""string"",
      ""price_id"": ""string"",
      ""is_metered"": true,
      ""plan_id"": ""string"",
      ""unit_of_measure"": ""string"",
      ""status"": ""string"",
      ""subscription_item_id"": ""string""
    }
  ],
  ""current_period_start"": ""2024-04-11T04:01:35.090Z"",
  ""company_external_id"": ""string"",
  ""payment_status"": ""string"",
  ""cancel_time"": ""2024-04-11T04:01:35.090Z"",
  ""status"": ""string"",
  ""trial_end"": ""2024-04-11T04:01:35.090Z"",
  ""external_id"": ""string"",
  ""metadata"": {},
  ""subscription_id"": ""string"",
  ""version_id"": ""string"",
  ""current_period_end"": ""2024-04-11T04:01:35.090Z"",
  ""created"": ""2024-04-11T04:01:35.090Z""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(AddSubscription content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(AddSubscription content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/subscriptions/batch`

*Create or Update Subscriptions in Batch*

> `POST https://api.moesif.com/v1/search/~/subscriptions/batch`

> Example Request

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="batchcreatesubscriptions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[AddSubscription](#schemaaddsubscriptiondto)|true|none|

> Example responses

> 200 Response

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "org_id": "string",
  "created": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="batchcreatesubscriptions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[Subscription](#schemasubscriptiondto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:subscriptions update:subscriptions )
</aside>

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/subscriptions/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/subscriptions/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/subscriptions/{id}`

*Get a Subscription*

> `GET https://api.moesif.com/v1/search/~/subscriptions/{id}`

<h3 id="getsubscription-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

> Example responses

> 200 Response

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "org_id": "string",
  "created": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="getsubscription-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[Subscription](#schemasubscriptiondto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:subscriptions )
</aside>

<h1 id="management-api-metrics">Metrics</h1>

## countEvents

<a id="opIdcountEvents"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/count/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/count/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/count/events', params={
  'from': '2024-04-11T04:01:35.090Z',  'to': '2024-04-11T04:01:35.090Z'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/count/events',
  params: {
  'from' => 'string(date-time)',
  'to' => 'string(date-time)'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/count/events', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/count/events`

*Count Events*

> `POST https://api.moesif.com/v1/search/~/count/events`

> Example Request

```json
false
```

<h3 id="countevents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2019-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2019-07-02T00:00:00Z or relative such as now|
|track_total_hits|query|boolean|false|none|

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
  'event_time': '2024-04-11T04:01:35.090Z'

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/events/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/events/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/events/{id}`

*Get an Event*

> `GET https://api.moesif.com/v1/search/~/events/{id}`

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
    "company_id": "67890",
    "duration_ms": 76,
    "request": {
      "body": "json",
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
          "["
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
      "time": "2023-07-09T06:14:58.550",
      "headers": {}
    },
    "user_id": "123454",
    "company": {},
    "response": {
      "body": {},
      "transfer_encoding": "json",
      "status": 200,
      "time": "2023-07-09T06:14:58.626",
      "headers": {}
    },
    "id": "AWF5M-FDTqLFD8l5y2f4",
    "event_type": "api_call",
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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[eventResponse](#schemaeventresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

## searchEvents

<a id="opIdsearchEvents"></a>

<aside class="warning">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/search/events?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/search/events', params={
  'from': '2024-04-11T04:01:35.090Z',  'to': '2024-04-11T04:01:35.090Z'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/events',
  params: {
  'from' => 'string(date-time)',
  'to' => 'string(date-time)'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/events', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/search/events`

*Search Events*

> `POST https://api.moesif.com/v1/search/~/search/events`

> Example Request

```json
false
```

<h3 id="searchevents-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|

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
          "company_id": "[",
          "duration_ms": "[",
          "request": {},
          "user_id": "[",
          "company": {},
          "response": {},
          "id": "[",
          "event_type": "[",
          "session_token": "[",
          "metadata": {},
          "app_id": "[",
          "org_id": "[",
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
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponse](#schemasearcheventsresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:events )
</aside>

## searchPublicWorkspaces

<a id="opIdsearchPublicWorkspaces"></a>

<aside class="warning">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search', params={
  'from': '2024-04-11T04:01:35.090Z',  'to': '2024-04-11T04:01:35.090Z'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search',
  params: {
  'from' => 'string(date-time)',
  'to' => 'string(date-time)'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/workspaces/{workspaceId}/search`

*Search Events in saved public Workspace*

> `POST https://api.moesif.com/v1/search/~/workspaces/{workspaceId}/search`

> Example Request

```json
false
```

<h3 id="searchpublicworkspaces-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|true|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|
|workspaceId|path|string|true|none|
|include_details|query|boolean|false|none|
|take|query|integer(int32)|false|none|

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
          "company_id": "[",
          "duration_ms": "[",
          "request": {},
          "user_id": "[",
          "company": {},
          "response": {},
          "id": "[",
          "event_type": "[",
          "session_token": "[",
          "metadata": {},
          "app_id": "[",
          "org_id": "[",
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
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|success|[searchEventsResponse](#schemasearcheventsresponsedto)|

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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/count/users?app_id=string',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/count/users', params={
  'app_id': 'string'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/count/users',
  params: {
  'app_id' => 'string'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/count/users', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/count/users`

*Count Users*

> `POST https://api.moesif.com/v1/search/~/count/users`

> Example Request

```json
false
```

<h3 id="countusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

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

## searchUserMetrics

<a id="opIdsearchUserMetrics"></a>

<aside class="warning">
The Moesif UI has a query generator to make it easy to create the necessary query. From any workspace view in Moesif, click the orange Embed  button and then select Access via API.
</aside>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/search/usermetrics/users \
  -H 'Content-Type: application/json' \
  -H 'Accept: 0' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = false;
const headers = {
  'Content-Type':'application/json',
  'Accept':'0',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/search/usermetrics/users',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '0',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = false

r = requests.post('https://api.moesif.com/v1/search/~/search/usermetrics/users', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '0',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('false')

result = RestClient.post 'https://api.moesif.com/v1/search/~/search/usermetrics/users',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => '0',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('false')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/search/usermetrics/users', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"0"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `false`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'0');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """false""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/search/usermetrics/users`

*Search UserMetrics/Users*

> `POST https://api.moesif.com/v1/search/~/search/usermetrics/users`

> Example Request

```json
false
```

<h3 id="searchusermetrics-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|false|The start date, which can be absolute such as 2023-07-01T00:00:00Z or relative such as -24h|
|to|query|string(date-time)|false|The end date, which can be absolute such as 2023-07-02T00:00:00Z or relative such as now|

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

## updateUsers

<a id="opIdupdateUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/users \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/users',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}

r = requests.post('https://api.moesif.com/v1/search/~/users', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}')

result = RestClient.post 'https://api.moesif.com/v1/search/~/users',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/users', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""company_id"": ""string"",
  ""first_name"": ""string"",
  ""name"": ""string"",
  ""email"": ""string"",
  ""photo_url"": ""string"",
  ""user_id"": ""string"",
  ""modified_time"": ""2024-04-11T04:01:35.090Z"",
  ""last_name"": ""string"",
  ""metadata"": {},
  ""user_name"": ""string"",
  ""phone"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(UserUpdate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(UserUpdate content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/users`

*Update a User*

> `POST https://api.moesif.com/v1/search/~/users`

> Example Request

```json
{
  "company_id": "string",
  "first_name": "string",
  "name": "string",
  "email": "string",
  "photo_url": "string",
  "user_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
  "user_name": "string",
  "phone": "string"
}
```

<h3 id="updateusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[UserUpdate](#schemauserupdatedto)|true|none|

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
    "first_seen_time": "2023-07-27T21:52:58.0990000Z",
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
    "modified_time": "2023-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2023-07-27T21:52:58.0990000Z",
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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponse](#schemauserresponsedto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:users update:users )
</aside>

## batchUpdateUsers

<a id="opIdbatchUpdateUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/search/~/users/batch \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '[
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = [
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
];
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/users/batch',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = [
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]

r = requests.post('https://api.moesif.com/v1/search/~/users/batch', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('[
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]')

result = RestClient.post 'https://api.moesif.com/v1/search/~/users/batch',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('[
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/search/~/users/batch', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `[
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"[
  {
    ""company_id"": ""string"",
    ""first_name"": ""string"",
    ""name"": ""string"",
    ""email"": ""string"",
    ""photo_url"": ""string"",
    ""user_id"": ""string"",
    ""modified_time"": ""2024-04-11T04:01:35.090Z"",
    ""last_name"": ""string"",
    ""metadata"": {},
    ""user_name"": ""string"",
    ""phone"": ""string""
  }
]";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(UserUpdate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(UserUpdate content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """[
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /search/~/users/batch`

*Update Users in Batch*

> `POST https://api.moesif.com/v1/search/~/users/batch`

> Example Request

```json
[
  {
    "company_id": "string",
    "first_name": "string",
    "name": "string",
    "email": "string",
    "photo_url": "string",
    "user_id": "string",
    "modified_time": "2024-04-11T04:01:35.090Z",
    "last_name": "string",
    "metadata": {},
    "user_name": "string",
    "phone": "string"
  }
]
```

<h3 id="batchupdateusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[UserUpdate](#schemauserupdatedto)|true|none|

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
    "first_seen_time": "2023-07-27T21:52:58.0990000Z",
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
    "modified_time": "2023-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2023-07-27T21:52:58.0990000Z",
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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponse](#schemauserresponsedto)|

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/users/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/users/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/users/{id}`

*Get a User*

> `GET https://api.moesif.com/v1/search/~/users/{id}`

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
    "first_seen_time": "2023-07-27T21:52:58.0990000Z",
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
    "modified_time": "2023-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2023-07-27T21:52:58.0990000Z",
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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[userResponse](#schemauserresponsedto)|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/search/~/users/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/search/~/users/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /search/~/users/{id}`

*Delete a User*

> `DELETE https://api.moesif.com/v1/search/~/users/{id}`

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

<h1 id="management-api-properties">Properties</h1>

## getProperties

<a id="opIdgetProperties"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/search/~/mappings/users/properties?app_id=string \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/search/~/mappings/users/properties?app_id=string',
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

r = requests.get('https://api.moesif.com/v1/search/~/mappings/users/properties', params={
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

result = RestClient.get 'https://api.moesif.com/v1/search/~/mappings/users/properties',
  params: {
  'app_id' => 'string'
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/users/properties', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/users/properties")
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
      string url = "https://api.moesif.com/v1/search/~/mappings/users/properties";
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
URL obj = new URL("https://api.moesif.com/v1/search/~/mappings/users/properties?app_id=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/mappings/users/properties`

*Get Property Mapping for Users*

> `GET https://api.moesif.com/v1/search/~/mappings/users/properties`

<h3 id="getproperties-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|

> Example responses

<h3 id="getproperties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|None|

<h3 id="getproperties-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:users )
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
  'app_id': 'string',  'from': '2024-04-11T04:01:35.090Z',  'to': '2024-04-11T04:01:35.090Z'

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/events/request/body/properties', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/events/request/body/properties")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/mappings/events/request/body/properties`

*Get Property Mapping for Events Request Body*

> `GET https://api.moesif.com/v1/search/~/mappings/events/request/body/properties`

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
  'app_id': 'string',  'from': '2024-04-11T04:01:35.090Z',  'to': '2024-04-11T04:01:35.090Z'

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/search/~/mappings/events/response/body/properties', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/search/~/mappings/events/response/body/properties")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /search/~/mappings/events/response/body/properties`

*Get Property Mapping for Events Response Body*

> `GET https://api.moesif.com/v1/search/~/mappings/events/response/body/properties`

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/workspaces/access_token', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/workspaces/access_token")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /workspaces/access_token`

*Get new Workspace Token*

Get a new Workspace Access Token

> `GET https://api.moesif.com/v1/workspaces/access_token`

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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[SignedToken](#schemasignedtokendto)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:workspaces )
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/workspaces/public/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/workspaces/public/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /workspaces/public/{id}`

*Get a Public Workspace*

> `GET https://api.moesif.com/v1/workspaces/public/{id}`

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
            "key": null,
            "val": null
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": null,
            "val": null
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
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  "created": "2024-04-11T04:01:35.090Z",
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
        "created_at": "2024-04-11T04:01:35.090Z",
        "updated_at": "2024-04-11T04:01:35.090Z"
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

## createWorkspace

<a id="opIdcreateWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/workspaces',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}

r = requests.post('https://api.moesif.com/v1/~/workspaces', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}')

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""is_default"": true,
  ""view_count"": 0,
  ""dashboard"": {},
  ""colors"": {},
  ""drawings"": [
    {
      ""name"": ""string"",
      ""direction"": ""string"",
      ""id"": ""string"",
      ""type"": ""string"",
      ""value"": 0.1
    }
  ],
  ""chart"": {
    ""original_encoded_view_elements"": ""string"",
    ""funnel_query"": {},
    ""url_query"": ""string"",
    ""to"": ""string"",
    ""view_elements"": {},
    ""from"": ""string"",
    ""original_encoded_funnel_query"": ""string"",
    ""es_query"": {},
    ""args"": ""string"",
    ""original_encoded_query"": ""string"",
    ""time_zone"": ""string"",
    ""view"": ""string""
  },
  ""template"": {
    ""dynamic_fields"": [
      ""string""
    ],
    ""dynamic_time"": true
  },
  ""type"": ""string"",
  ""width"": 0.1,
  ""sort_order"": 0.1,
  ""policy"": {
    ""acl"": [
      {
        ""grantee"": ""string"",
        ""permission"": ""string""
      }
    ],
    ""resource"": {},
    ""api_scopes"": [
      ""string""
    ],
    ""original_encoded_resource"": ""string""
  }
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(WorkspaceCreateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(WorkspaceCreateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/workspaces`

*Create New Workspace*

> `POST https://api.moesif.com/v1/~/workspaces`

> Example Request

```json
{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}
```

<h3 id="createworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|expiration|query|string(date-time)|false|none|
|body|body|[WorkspaceCreateItem](#schemaworkspacecreateitem)|true|none|

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
            "key": null,
            "val": null
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": null,
            "val": null
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
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  "created": "2024-04-11T04:01:35.090Z",
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
        "created_at": "2024-04-11T04:01:35.090Z",
        "updated_at": "2024-04-11T04:01:35.090Z"
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/workspaces`

*Get Workspaces*

> `GET https://api.moesif.com/v1/~/workspaces`

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
            {}
          ],
          "verb": "string",
          "headers": [
            {}
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
        "value": 0.1
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
    "width": 0.1,
    "sort_order": 0.1,
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
    "created": "2024-04-11T04:01:35.090Z",
    "comments": {
      "summary": {
        "count": 0,
        "latest_comment": {
          "auth_user_id": "string",
          "comment_id": "string",
          "mentions": [
            null
          ],
          "partner_user_id": "string",
          "message": "string",
          "created_at": "2024-04-11T04:01:35.090Z",
          "updated_at": "2024-04-11T04:01:35.090Z"
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces/templates', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/templates")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/workspaces/templates`

*Get Workspace Templates*

> `GET https://api.moesif.com/v1/~/workspaces/templates`

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
            {}
          ],
          "verb": "string",
          "headers": [
            {}
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
        "value": 0.1
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
    "width": 0.1,
    "sort_order": 0.1,
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
    "created": "2024-04-11T04:01:35.090Z",
    "comments": {
      "summary": {
        "count": 0,
        "latest_comment": {
          "auth_user_id": "string",
          "comment_id": "string",
          "mentions": [
            null
          ],
          "partner_user_id": "string",
          "message": "string",
          "created_at": "2024-04-11T04:01:35.090Z",
          "updated_at": "2024-04-11T04:01:35.090Z"
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

## updateWorkspace

<a id="opIdupdateWorkspace"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/workspaces/{id}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}')

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""colors"": {},
  ""drawings"": [
    {
      ""name"": ""string"",
      ""direction"": ""string"",
      ""id"": ""string"",
      ""type"": ""string"",
      ""value"": 0.1
    }
  ],
  ""chart"": {
    ""original_encoded_view_elements"": ""string"",
    ""funnel_query"": {},
    ""url_query"": ""string"",
    ""to"": ""string"",
    ""view_elements"": {},
    ""from"": ""string"",
    ""original_encoded_funnel_query"": ""string"",
    ""es_query"": {},
    ""args"": ""string"",
    ""original_encoded_query"": ""string"",
    ""time_zone"": ""string"",
    ""view"": ""string""
  },
  ""template"": {
    ""dynamic_fields"": [
      ""string""
    ],
    ""dynamic_time"": true
  },
  ""width"": 0.1,
  ""sort_order"": 0.1,
  ""policy"": {
    ""acl"": [
      {
        ""grantee"": ""string"",
        ""permission"": ""string""
      }
    ],
    ""resource"": {},
    ""api_scopes"": [
      ""string""
    ],
    ""original_encoded_resource"": ""string""
  }
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(WorkspaceUpdateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(WorkspaceUpdateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/workspaces/{id}`

*Update a Workspace*

> `POST https://api.moesif.com/v1/~/workspaces/{id}`

> Example Request

```json
{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}
```

<h3 id="updateworkspace-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[WorkspaceUpdateItem](#schemaworkspaceupdateitem)|true|none|

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/workspaces/{id}`

*Get a Workspace*

> `GET https://api.moesif.com/v1/~/workspaces/{id}`

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
            "key": null,
            "val": null
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": null,
            "val": null
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
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  "created": "2024-04-11T04:01:35.090Z",
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
        "created_at": "2024-04-11T04:01:35.090Z",
        "updated_at": "2024-04-11T04:01:35.090Z"
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/workspaces/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/workspaces/{id}`

*Delete a Workspace*

> `DELETE https://api.moesif.com/v1/~/workspaces/{id}`

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

## createComment

<a id="opIdcreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/comments \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "message": "string",
  "mentions": [
    "string"
  ]
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "message": "string",
  "mentions": [
    "string"
  ]
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/comments',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "message": "string",
  "mentions": [
    "string"
  ]
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/comments', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "message": "string",
  "mentions": [
    "string"
  ]
}')

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}/comments',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "message": "string",
  "mentions": [
    "string"
  ]
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}/comments', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "message": "string",
  "mentions": [
    "string"
  ]
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""message"": ""string"",
  ""mentions"": [
    ""string""
  ]
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(CommentItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(CommentItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "message": "string",
  "mentions": [
    "string"
  ]
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/workspaces/{id}/comments`

*Create a New Comment*

> `POST https://api.moesif.com/v1/~/workspaces/{id}/comments`

> Example Request

```json
{
  "message": "string",
  "mentions": [
    "string"
  ]
}
```

<h3 id="createcomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[CommentItem](#schemacommentitem)|true|none|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/workspaces/{id}/comments', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/workspaces/{id}/comments")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/workspaces/{id}/comments`

*Get all Comments*

> `GET https://api.moesif.com/v1/~/workspaces/{id}/comments`

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

## updateComment

<a id="opIdupdateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "message": "string",
  "mentions": [
    "string"
  ]
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "message": "string",
  "mentions": [
    "string"
  ]
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "message": "string",
  "mentions": [
    "string"
  ]
}

r = requests.post('https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "message": "string",
  "mentions": [
    "string"
  ]
}')

result = RestClient.post 'https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "message": "string",
  "mentions": [
    "string"
  ]
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "message": "string",
  "mentions": [
    "string"
  ]
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""message"": ""string"",
  ""mentions"": [
    ""string""
  ]
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(CommentItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(CommentItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "message": "string",
  "mentions": [
    "string"
  ]
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/workspaces/{id}/comments/{commentId}`

*Update Existing Comment*

> `POST https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}`

> Example Request

```json
{
  "message": "string",
  "mentions": [
    "string"
  ]
}
```

<h3 id="updatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|commentId|path|string|true|none|
|body|body|[CommentItem](#schemacommentitem)|true|none|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/workspaces/{id}/comments/{commentId}`

*Delete a Comment*

> `DELETE https://api.moesif.com/v1/~/workspaces/{id}/comments/{commentId}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/workspaces/{id}/policy/acl`

*Add ACL permission*

> `POST https://api.moesif.com/v1/~/workspaces/{id}/policy/acl`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/workspaces/{id}/policy/acl', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/workspaces/{id}/policy/acl")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/workspaces/{id}/policy/acl`

*Delete ACL permission*

> `DELETE https://api.moesif.com/v1/~/workspaces/{id}/policy/acl`

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

<h1 id="management-api-applications">Applications</h1>

## addApp

<a id="opIdaddApp"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/apps \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/apps',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}

r = requests.post('https://api.moesif.com/v1/~/apps', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}')

result = RestClient.post 'https://api.moesif.com/v1/~/apps',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/apps', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""time_zone"": ""string"",
  ""week_starts_on"": 0,
  ""custom_app_id"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(AppCreate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(AppCreate content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/apps`

*Create a new App*

Create a new app under the selected organization

> `POST https://api.moesif.com/v1/~/apps`

> Example Request

```json
{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}
```

<h3 id="addapp-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[AppCreate](#schemaappcreatedto)|true|none|

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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AppResponse](#schemaappresponsedto)|

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/apps', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/apps")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/apps`

*Gets Apps*

Gets a list of apps for the selected organization

> `GET https://api.moesif.com/v1/~/apps`

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
|*anonymous*|[[AppResponse](#schemaappresponsedto)]|false|none|none|
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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/apps/{id}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}

r = requests.post('https://api.moesif.com/v1/~/apps/{id}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}')

result = RestClient.post 'https://api.moesif.com/v1/~/apps/{id}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/apps/{id}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""time_zone"": ""string"",
  ""week_starts_on"": 0,
  ""custom_app_id"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(AppUpdate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(AppUpdate content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/apps/{id}`

*Update Apps*

Update the name of the app for the selected organization

> `POST https://api.moesif.com/v1/~/apps/{id}`

> Example Request

```json
{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}
```

<h3 id="updateapp-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[AppUpdate](#schemaappupdatedto)|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}
```

<h3 id="updateapp-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|success|[AppUpdate](#schemaappupdatedto)|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/apps/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/apps/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/apps/{id}`

*Delete Apps*

Delete the app for the selected organization

> `DELETE https://api.moesif.com/v1/~/apps/{id}`

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

<h1 id="management-api-product-catalog">Product Catalog</h1>

## createMoesifPlan

<a id="opIdcreateMoesifPlan"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/billing/catalog/plans?provider=string \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans?provider=string',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}

r = requests.post('https://api.moesif.com/v1/~/billing/catalog/plans', params={
  'provider': 'string'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}')

result = RestClient.post 'https://api.moesif.com/v1/~/billing/catalog/plans',
  params: {
  'provider' => 'string'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/billing/catalog/plans', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""prices"": [
    {
      ""name"": ""string"",
      ""transform_quantity"": {
        ""divide_by"": 0,
        ""round"": ""string""
      },
      ""provider"": ""string"",
      ""price_in_decimal"": ""string"",
      ""tiers"": [
        {
          ""up_to"": null,
          ""unit_price_in_decimal"": ""string"",
          ""flat_price_in_decimal"": ""string""
        }
      ],
      ""period_units"": ""string"",
      ""plan_id"": ""string"",
      ""id"": ""string"",
      ""status"": ""string"",
      ""pricing_model"": ""string"",
      ""tax_behavior"": ""string"",
      ""currency"": ""string"",
      ""metadata"": null,
      ""created_at"": ""2024-04-11T04:01:35.090Z"",
      ""unit"": ""string"",
      ""usage_aggregator"": ""string"",
      ""period"": 0
    }
  ],
  ""provider"": ""string"",
  ""description"": ""string"",
  ""id"": ""string"",
  ""status"": ""string"",
  ""product_id"": ""string"",
  ""metadata"": null,
  ""created_at"": ""2024-04-11T04:01:35.090Z"",
  ""unit"": ""string"",
  ""updated_at"": ""2024-04-11T04:01:35.090Z""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(MoesifPlan content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(MoesifPlan content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/billing/catalog/plans`

*Create a new Moesif Plan*

> `POST https://api.moesif.com/v1/~/billing/catalog/plans`

> Example Request

```json
{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="createmoesifplan-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|true|none|
|body|body|[MoesifPlan](#schemamoesifplan)|true|none|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/plans', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/plans")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/catalog/plans`

*List all Moesif Plans*

> `GET https://api.moesif.com/v1/~/billing/catalog/plans`

<h3 id="listmoesifplans-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|false|none|
|includes|query|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "name": "string",
    "prices": [
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
        "created_at": "2024-04-11T04:01:35.090Z",
        "unit": "string",
        "usage_aggregator": "string",
        "period": 0
      }
    ],
    "provider": "string",
    "description": "string",
    "id": "string",
    "status": "string",
    "product_id": "string",
    "metadata": null,
    "created_at": "2024-04-11T04:01:35.090Z",
    "unit": "string",
    "updated_at": "2024-04-11T04:01:35.090Z"
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
|» prices|[[MoesifPrice](#schemamoesifprice)]|false|none|none|
|»» name|string|false|none|none|
|»» transform_quantity|object|false|none|none|
|»»» divide_by|integer(int64)|true|none|none|
|»»» round|string|true|none|none|
|»» provider|string|false|none|none|
|»» price_in_decimal|string|false|none|none|
|»» tiers|[[MoesifPriceTier](#schemamoesifpricetier)]|false|none|none|
|»»» up_to|util.either[scala.long,string]|true|none|none|
|»»» unit_price_in_decimal|string|false|none|none|
|»»» flat_price_in_decimal|string|false|none|none|
|»» period_units|string|false|none|none|
|»» plan_id|string|false|none|none|
|»» id|string|false|none|none|
|»» status|string|false|none|none|
|»» pricing_model|string|false|none|none|
|»» tax_behavior|string|false|none|none|
|»» currency|string|false|none|none|
|»» metadata|.map[string,string]|false|none|none|
|»» created_at|string(date-time)|false|none|none|
|»» unit|string|false|none|none|
|»» usage_aggregator|string|false|none|none|
|»» period|integer(int64)|false|none|none|
|» provider|string|false|none|none|
|» description|string|false|none|none|
|» id|string|false|none|none|
|» status|string|false|none|none|
|» product_id|string|false|none|none|
|» metadata|.map[string,string]|false|none|none|
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/plans/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/plans/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/catalog/plans/{id}`

*Get a Moesif Plan*

Get the Moesif Plan for authenticated users

> `GET https://api.moesif.com/v1/~/billing/catalog/plans/{id}`

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
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/billing/catalog/plans/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/billing/catalog/plans/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/billing/catalog/plans/{id}`

*Delete a Moesif Plan*

> `DELETE https://api.moesif.com/v1/~/billing/catalog/plans/{id}`

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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/plans/{id}?provider=string',
{
  method: 'PUT',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}

r = requests.put('https://api.moesif.com/v1/~/billing/catalog/plans/{id}', params={
  'provider': 'string'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}')

result = RestClient.put 'https://api.moesif.com/v1/~/billing/catalog/plans/{id}',
  params: {
  'provider' => 'string'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('PUT','https://api.moesif.com/v1/~/billing/catalog/plans/{id}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

      
      string json = @"{
  ""name"": ""string"",
  ""prices"": [
    {
      ""name"": ""string"",
      ""transform_quantity"": {
        ""divide_by"": 0,
        ""round"": ""string""
      },
      ""provider"": ""string"",
      ""price_in_decimal"": ""string"",
      ""tiers"": [
        {
          ""up_to"": null,
          ""unit_price_in_decimal"": ""string"",
          ""flat_price_in_decimal"": ""string""
        }
      ],
      ""period_units"": ""string"",
      ""plan_id"": ""string"",
      ""id"": ""string"",
      ""status"": ""string"",
      ""pricing_model"": ""string"",
      ""tax_behavior"": ""string"",
      ""currency"": ""string"",
      ""metadata"": null,
      ""created_at"": ""2024-04-11T04:01:35.090Z"",
      ""unit"": ""string"",
      ""usage_aggregator"": ""string"",
      ""period"": 0
    }
  ],
  ""provider"": ""string"",
  ""description"": ""string"",
  ""id"": ""string"",
  ""status"": ""string"",
  ""product_id"": ""string"",
  ""metadata"": null,
  ""created_at"": ""2024-04-11T04:01:35.090Z"",
  ""unit"": ""string"",
  ""updated_at"": ""2024-04-11T04:01:35.090Z""
}";
      var content = JsonConvert.DeserializeObject(json);
      var result = await PutAsync(id, content, url);
      
          
    }

    /// Performs a PUT Request
    public async Task PutAsync(int id, MoesifPlan content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute PUT request
        HttpResponseMessage response = await Client.PutAsync(url + $"/{id}", jsonContent);

        //Return response
        return await DeserializeObject(response);
    }
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(MoesifPlan content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`PUT /~/billing/catalog/plans/{id}`

*Update a Moesif Plan*

> `PUT https://api.moesif.com/v1/~/billing/catalog/plans/{id}`

> Example Request

```json
{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}
```

<h3 id="updatemoesifplan-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|
|body|body|[MoesifPlan](#schemamoesifplan)|true|none|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices?provider=string',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}

r = requests.post('https://api.moesif.com/v1/~/billing/catalog/prices', params={
  'provider': 'string'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}')

result = RestClient.post 'https://api.moesif.com/v1/~/billing/catalog/prices',
  params: {
  'provider' => 'string'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/billing/catalog/prices', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""transform_quantity"": {
    ""divide_by"": 0,
    ""round"": ""string""
  },
  ""provider"": ""string"",
  ""price_in_decimal"": ""string"",
  ""tiers"": [
    {
      ""up_to"": null,
      ""unit_price_in_decimal"": ""string"",
      ""flat_price_in_decimal"": ""string""
    }
  ],
  ""period_units"": ""string"",
  ""plan_id"": ""string"",
  ""id"": ""string"",
  ""status"": ""string"",
  ""pricing_model"": ""string"",
  ""tax_behavior"": ""string"",
  ""currency"": ""string"",
  ""metadata"": null,
  ""created_at"": ""2024-04-11T04:01:35.090Z"",
  ""unit"": ""string"",
  ""usage_aggregator"": ""string"",
  ""period"": 0
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(MoesifPrice content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(MoesifPrice content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/billing/catalog/prices`

*Create a new Moesif Price*

> `POST https://api.moesif.com/v1/~/billing/catalog/prices`

> Example Request

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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}
```

<h3 id="createmoesifprice-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|provider|query|string|true|none|
|body|body|[MoesifPrice](#schemamoesifprice)|true|none|

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
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/prices', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/prices")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/catalog/prices`

*List all Moesif Prices for a specific Plan*

> `GET https://api.moesif.com/v1/~/billing/catalog/prices`

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
    "created_at": "2024-04-11T04:01:35.090Z",
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
|» metadata|.map[string,string]|false|none|none|
|» created_at|string(date-time)|false|none|none|
|» unit|string|false|none|none|
|» usage_aggregator|string|false|none|none|
|» period|integer(int64)|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:prices )
</aside>

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/catalog/prices/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/catalog/prices/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/catalog/prices/{id}`

*Get a Moesif Price*

Get the Moesif Price for a specific Plan for authenticated users

> `GET https://api.moesif.com/v1/~/billing/catalog/prices/{id}`

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
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/billing/catalog/prices/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/billing/catalog/prices/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/billing/catalog/prices/{id}`

*Delete a Moesif Price*

> `DELETE https://api.moesif.com/v1/~/billing/catalog/prices/{id}`

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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/catalog/prices/{id}?provider=string',
{
  method: 'PUT',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}

r = requests.put('https://api.moesif.com/v1/~/billing/catalog/prices/{id}', params={
  'provider': 'string'

}, headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}')

result = RestClient.put 'https://api.moesif.com/v1/~/billing/catalog/prices/{id}',
  params: {
  'provider' => 'string'
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('PUT','https://api.moesif.com/v1/~/billing/catalog/prices/{id}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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

      
      string json = @"{
  ""name"": ""string"",
  ""transform_quantity"": {
    ""divide_by"": 0,
    ""round"": ""string""
  },
  ""provider"": ""string"",
  ""price_in_decimal"": ""string"",
  ""tiers"": [
    {
      ""up_to"": null,
      ""unit_price_in_decimal"": ""string"",
      ""flat_price_in_decimal"": ""string""
    }
  ],
  ""period_units"": ""string"",
  ""plan_id"": ""string"",
  ""id"": ""string"",
  ""status"": ""string"",
  ""pricing_model"": ""string"",
  ""tax_behavior"": ""string"",
  ""currency"": ""string"",
  ""metadata"": null,
  ""created_at"": ""2024-04-11T04:01:35.090Z"",
  ""unit"": ""string"",
  ""usage_aggregator"": ""string"",
  ""period"": 0
}";
      var content = JsonConvert.DeserializeObject(json);
      var result = await PutAsync(id, content, url);
      
          
    }

    /// Performs a PUT Request
    public async Task PutAsync(int id, MoesifPrice content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute PUT request
        HttpResponseMessage response = await Client.PutAsync(url + $"/{id}", jsonContent);

        //Return response
        return await DeserializeObject(response);
    }
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(MoesifPrice content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`PUT /~/billing/catalog/prices/{id}`

*Update a Moesif Price*

> `PUT https://api.moesif.com/v1/~/billing/catalog/prices/{id}`

> Example Request

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
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "usage_aggregator": "string",
  "period": 0
}
```

<h3 id="updatemoesifprice-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|provider|query|string|true|none|
|body|body|[MoesifPrice](#schemamoesifprice)|true|none|

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
  "created_at": "2024-04-11T04:01:35.090Z",
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

<h1 id="management-api-billing-meters">Billing Meters</h1>

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/meters', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/meters")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/meters`

*List Billing Meters*

List Billing Meters

> `GET https://api.moesif.com/v1/~/billing/meters`

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
          "reporting": {},
          "channel_ids": [
            null
          ],
          "custom_plan": {}
        },
        "recurly_params": {
          "plan": {},
          "add_on": {},
          "add_ons": [
            null
          ]
        },
        "chargebee_params": {
          "item_plan": {},
          "item_price": {},
          "item_prices": [
            null
          ],
          "reporting": {}
        },
        "stripe_params": {
          "product": {},
          "price": {},
          "prices": [
            null
          ],
          "reporting": {}
        },
        "zuora_params": {
          "plan_id": "string",
          "price_id": "string",
          "price_ids": [
            null
          ]
        },
        "usage_multiplier": null
      }
    },
    "url_query": "string",
    "_id": "string",
    "slug": "string",
    "status": "string",
    "modified_at": "2024-04-11T04:01:35.090Z",
    "es_query": "string",
    "created_at": "2024-04-11T04:01:35.090Z",
    "zero_balance_behavior": "string",
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
|» zero_balance_behavior|string|false|none|none
|» app_id|string|true|none|none|
|» org_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:billing_meters )
</aside>

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/meters/{meterId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/meters/{meterId}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/meters/{meterId}`

*Get Billing Meter by id*

Get Billing Meter by id

> `GET https://api.moesif.com/v1/~/billing/meters/{meterId}`

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
          "report_when": null
        },
        "channel_ids": [
          "string"
        ],
        "custom_plan": {
          "plan_id": null
        }
      },
      "recurly_params": {
        "plan": {
          "name": null,
          "id": null,
          "code": null
        },
        "add_on": {
          "name": null,
          "currencies": null,
          "usage_percentage": null,
          "add_on_type": null,
          "external_sku": null,
          "state": null,
          "tiers": null,
          "tier_type": null,
          "code": null,
          "plan_id": null,
          "id": null,
          "percentage_tiers": null,
          "usage_type": null,
          "created_at": null,
          "usage_calculation_type": null,
          "updated_at": null,
          "deleted_at": null
        },
        "add_ons": [
          {}
        ]
      },
      "chargebee_params": {
        "item_plan": {
          "name": null,
          "item_family_id": null,
          "description": null,
          "usage_calculation": null,
          "external_name": null,
          "metered": null,
          "id": null,
          "status": null,
          "unit": null,
          "updated_at": null,
          "archived_at": null
        },
        "item_price": {
          "name": null,
          "item_id": null,
          "description": null,
          "price": null,
          "price_in_decimal": null,
          "external_name": null,
          "tiers": null,
          "trial_end_action": null,
          "trial_period": null,
          "id": null,
          "status": null,
          "pricing_model": null,
          "created_at": null,
          "period_unit": null,
          "updated_at": null,
          "trial_period_unit": null,
          "item_type": null,
          "currency_code": null,
          "archived_at": null,
          "free_quantity": null,
          "period": null
        },
        "item_prices": [
          {}
        ],
        "reporting": {
          "reporting_period": null
        }
      },
      "stripe_params": {
        "product": {
          "name": null,
          "description": null,
          "unit_label": null,
          "id": null,
          "usage_type": null
        },
        "price": {
          "tiers_mode": null,
          "transform_quantity": null,
          "price_id": null,
          "tiers": null,
          "recurring": null,
          "unit_amount_decimal": null,
          "price_nickname": null,
          "currency": null,
          "billing_scheme": null,
          "unit_amount": null,
          "created": null,
          "active": null
        },
        "prices": [
          {}
        ],
        "reporting": {
          "reporting_period": null
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
  "modified_at": "2024-04-11T04:01:35.090Z",
  "es_query": "string",
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/billing/meters/{meterId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/billing/meters/{meterId}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/billing/meters/{meterId}`

*Delete Billing Meter by id*

Delete Billing Meter by id

> `DELETE https://api.moesif.com/v1/~/billing/meters/{meterId}`

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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/reports', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/reports")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/reports`

*Get BillingReports*

Query audit history of billing reports to external billing providers

> `GET https://api.moesif.com/v1/~/billing/reports`

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
|`type`|query|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "ending_balance": {
      "sequence_id": 0,
      "current_balance": 0.1,
      "pending_activity": 0.1,
      "available_balance": 0.1
    },
    "company_id": "string",
    "success": true,
    "provider": "string",
    "report_version": 0,
    "usage_end_time": "2024-04-11T04:01:35.090Z",
    "usage": {
      "invoice": {
        "period_start": "2024-04-11T04:01:35.090Z",
        "period_end": "2024-04-11T04:01:35.090Z",
        "id": "string"
      },
      "aggregator": "string"
    },
    "_id": "string",
    "meter_usage": 0,
    "last_success_time": "2024-04-11T04:01:35.090Z",
    "beginning_balance": {
      "sequence_id": 0,
      "current_balance": 0.1,
      "pending_activity": 0.1,
      "available_balance": 0.1
    },
    "billing_meter_id": "string",
    "amount": 0.1,
    "usage_start_time": "2024-04-11T04:01:35.090Z",
    "status": "string",
    "provider_requests": [
      {
        "success": true,
        "status_code": 0,
        "job_id": "string",
        "error_message": "string",
        "error_code": "string",
        "request_time": "2024-04-11T04:01:35.090Z"
      }
    ],
    "currency": "string",
    "report_total_usage": 0,
    "channel_requests": [
      {
        "channel_id": "string",
        "channel_name": "string",
        "provider_requests": [
          {
            "success": true,
            "status_code": 0,
            "job_id": "string",
            "error_message": "string",
            "error_code": "string",
            "request_time": "2024-04-11T04:01:35.090Z"
          }
        ]
      }
    ],
    "created_at": "2024-04-11T04:01:35.090Z",
    "app_id": "string",
    "subscription_id": "string",
    "subscription_period_start": "2024-04-11T04:01:35.090Z",
    "balance_changes": [
      {
        "amount": 0.1
      }
    ],
    "type": "string",
    "updated_at": "2024-04-11T04:01:35.090Z",
    "org_id": "string",
    "subscription_period_end": "2024-04-11T04:01:35.090Z",
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
|*anonymous*|[[BillingReport](#schemabillingreport)]|false|none|none|
|» ending_balance|object|false|none|none|
|»» sequence_id|integer(int32)|true|none|none|
|»» current_balance|number(double)|true|none|none|
|»» pending_activity|number(double)|true|none|none|
|»» available_balance|number(double)|true|none|none|
|» company_id|string|true|none|none|
|» success|boolean|true|none|none|
|» provider|string|true|none|none|
|» report_version|integer(int32)|false|none|none|
|» usage_end_time|string(date-time)|true|none|none|
|» usage|object|false|none|none|
|»» invoice|object|false|none|none|
|»»» period_start|string(date-time)|false|none|none|
|»»» period_end|string(date-time)|false|none|none|
|»»» id|string|true|none|none|
|»» aggregator|string|false|none|none|
|» _id|string|false|none|none|
|» meter_usage|integer(int64)|true|none|none|
|» last_success_time|string(date-time)|false|none|none|
|» beginning_balance|object|false|none|none|
|» billing_meter_id|string|true|none|none|
|» amount|number(double)|false|none|none|
|» usage_start_time|string(date-time)|true|none|none|
|» status|string|false|none|none|
|» provider_requests|[[ProviderRequest](#schemaproviderrequest)]|true|none|none|
|»» success|boolean|true|none|none|
|»» status_code|integer(int32)|true|none|none|
|»» job_id|string|true|none|none|
|»» error_message|string|true|none|none|
|»» error_code|string|true|none|none|
|»» request_time|string(date-time)|true|none|none|
|» currency|string|false|none|none|
|» report_total_usage|integer(int64)|true|none|none|
|» channel_requests|[[ChannelRequest](#schemachannelrequest)]|false|none|none|
|»» channel_id|string|true|none|none|
|»» channel_name|string|true|none|none|
|»» provider_requests|[[ProviderRequest](#schemaproviderrequest)]|true|none|none|
|» created_at|string(date-time)|false|none|none|
|» app_id|string|true|none|none|
|» subscription_id|string|true|none|none|
|» subscription_period_start|string(date-time)|false|none|none|
|» balance_changes|[[BalanceChange](#schemabalancechange)]|false|none|none|
|»» amount|number(double)|true|none|none|
|» type|string|false|none|none|
|» updated_at|string(date-time)|false|none|none|
|» org_id|string|true|none|none|
|» subscription_period_end|string(date-time)|false|none|none|
|» meter_metric|integer(int64)|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: read:billing_meters read:billing_reports )
</aside>

## getBillingReportsMetrics

<a id="opIdgetBillingReportsMetrics"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://api.moesif.com/v1/~/billing/reports/metrics?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/reports/metrics?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z',
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

r = requests.get('https://api.moesif.com/v1/~/billing/reports/metrics', params={
  'from': '2024-04-11T04:01:35.090Z',  'to': '2024-04-11T04:01:35.090Z'

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

result = RestClient.get 'https://api.moesif.com/v1/~/billing/reports/metrics',
  params: {
  'from' => 'string(date-time)',
  'to' => 'string(date-time)'
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/billing/reports/metrics', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/billing/reports/metrics")
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
URL obj = new URL("https://api.moesif.com/v1/~/billing/reports/metrics?from=2019-08-24T14%3A15%3A22Z&to=2019-08-24T14%3A15%3A22Z");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/billing/reports/metrics`

*Get BillingReports' values for a given meter and time range for a single company or all companies*

Get BillingReports' values for a given meter and time range for a single company or all companies

> `GET https://api.moesif.com/v1/~/billing/reports/metrics`

<h3 id="getbillingreportsmetrics-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string(date-time)|true|none|
|to|query|string(date-time)|true|none|
|billing_meter_id|query|string|false|none|
|success|query|boolean|false|none|
|aggregator|query|string|false|none|
|interval|query|string|false|none|
|company_id|query|string|false|none|
|subscription_id|query|string|false|none|
|`type`|query|array[string]|false|none|

> Example responses

> 200 Response

```json
{
  "buckets": [
    {
      "start": "2024-04-11T04:01:35.090Z",
      "metric": 0.1,
      "amounts": null,
      "ending_balance": {
        "current_balance": 0.1,
        "pending_activity": 0.1,
        "available_balance": 0.1
      }
    }
  ]
}
```

<h3 id="getbillingreportsmetrics-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|three buckets of aggregates for the given meter and time range including Metric Value, Reported Usage, and list of errors.|[BillingMetricResponse](#schemabillingmetricresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:billing_meters create:billing_reports )
</aside>

<h1 id="management-api-balance-transactions">Balance Transactions</h1>

## createBalanceTransaction

<a id="opIdcreateBalanceTransaction"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/billing/reports/balance_transactions \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/billing/reports/balance_transactions',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}

r = requests.post('https://api.moesif.com/v1/~/billing/reports/balance_transactions', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}')

result = RestClient.post 'https://api.moesif.com/v1/~/billing/reports/balance_transactions',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/billing/reports/balance_transactions', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/billing/reports/balance_transactions", data)
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
      string url = "https://api.moesif.com/v1/~/billing/reports/balance_transactions";
      
      string json = @"{
  ""company_id"": ""string"",
  ""description"": ""string"",
  ""expire_at"": ""2024-04-11T04:01:35.090Z"",
  ""active_at"": ""2024-04-11T04:01:35.090Z"",
  ""amount"": 0.1,
  ""transaction_id"": ""string"",
  ""subscription_id"": ""string"",
  ""type"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(BillingReportBalanceTransCreate content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(BillingReportBalanceTransCreate content)
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
URL obj = new URL("https://api.moesif.com/v1/~/billing/reports/balance_transactions");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/billing/reports/balance_transactions`

*Post BillingReports Balance Transactions*

Post a billing report of type balance_transaction

> `POST https://api.moesif.com/v1/~/billing/reports/balance_transactions`

> Example Request

```json
{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}
```

<h3 id="createbalancetransaction-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[BillingReportBalanceTransCreate](#schemabillingreportbalancetranscreate)|true|none|

<h3 id="createbalancetransaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|success, no content and BillingReports were created or updated|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
managementAPIToken ( Scopes: create:billing_meters create:billing_reports )
</aside>

<h1 id="management-api-cohorts">Cohorts</h1>

## createCohort

<a id="opIdcreateCohort"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/cohorts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/cohorts',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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

r = requests.post('https://api.moesif.com/v1/~/cohorts', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
}')

result = RestClient.post 'https://api.moesif.com/v1/~/cohorts',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/cohorts', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""channels"": null,
  ""priority"": 0,
  ""url_query"": ""string"",
  ""criteria"": {},
  ""notification_rule"": {
    ""send_on_addition"": true,
    ""send_on_removal"": true,
    ""period"": ""string"",
    ""fields"": [
      ""string""
    ]
  },
  ""cohort_name"": ""string"",
  ""to"": ""string"",
  ""week_starts_on"": 0,
  ""locked_by"": ""string"",
  ""from"": ""string"",
  ""cohort_type"": ""string"",
  ""time_zone"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(CohortCreateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(CohortCreateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/cohorts`

*Create New Cohort*

> `POST https://api.moesif.com/v1/~/cohorts`

> Example Request

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

<h3 id="createcohort-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CohortCreateItem](#schemacohortcreateitem)|true|none|

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
  "modified_at": "2024-04-11T04:01:35.090Z",
  "from": "string",
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/cohorts', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/cohorts")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/cohorts`

*Get Cohorts*

> `GET https://api.moesif.com/v1/~/cohorts`

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

## updateCohort

<a id="opIdupdateCohort"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/cohorts/{cohortId} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/cohorts/{cohortId}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}

r = requests.post('https://api.moesif.com/v1/~/cohorts/{cohortId}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}')

result = RestClient.post 'https://api.moesif.com/v1/~/cohorts/{cohortId}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/cohorts/{cohortId}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""channels"": null,
  ""priority"": 0,
  ""url_query"": ""string"",
  ""criteria"": {},
  ""sample_rate"": 0,
  ""notification_rule"": {
    ""send_on_addition"": true,
    ""send_on_removal"": true,
    ""period"": ""string"",
    ""fields"": [
      ""string""
    ]
  },
  ""cohort_name"": ""string"",
  ""to"": ""string"",
  ""week_starts_on"": 0,
  ""locked_by"": ""string"",
  ""from"": ""string"",
  ""cohort_type"": ""string"",
  ""time_zone"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(CohortUpdateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(CohortUpdateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/cohorts/{cohortId}`

*Update a Cohort*

> `POST https://api.moesif.com/v1/~/cohorts/{cohortId}`

> Example Request

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
  "locked_by": "string",
  "from": "string",
  "cohort_type": "string",
  "time_zone": "string"
}
```

<h3 id="updatecohort-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cohortId|path|string|true|none|
|body|body|[CohortUpdateItem](#schemacohortupdateitem)|true|none|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/cohorts/{cohortId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/cohorts/{cohortId}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/cohorts/{cohortId}`

*Get Cohort*

> `GET https://api.moesif.com/v1/~/cohorts/{cohortId}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/cohorts/{cohortId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/cohorts/{cohortId}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/cohorts/{cohortId}`

*Delete Cohort*

> `DELETE https://api.moesif.com/v1/~/cohorts/{cohortId}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/cohorts/{cohortId}/sample_rate`

*Delete Sample Rate for a Cohort*

> `DELETE https://api.moesif.com/v1/~/cohorts/{cohortId}/sample_rate`

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

<h1 id="management-api-dashboards">Dashboards</h1>

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboard/{dashId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboard/{dashId}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/dashboard/{dashId}`

*Delete a Dashboard*

> `DELETE https://api.moesif.com/v1/~/dashboard/{dashId}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboard/{id}/copy', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboard/{id}/copy")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/dashboard/{id}/copy`

*Copy Dashboard*

> `POST https://api.moesif.com/v1/~/dashboard/{id}/copy`

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
  }, 
  headers: headers

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

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/dashboards`

*Create New Dashboard*

> `POST https://api.moesif.com/v1/~/dashboards`

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
  "sort_order": 0.1,
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
  "created": "2024-04-11T04:01:35.090Z"
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/dashboards', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/dashboards")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/dashboards`

*Get a Dashboard*

> `GET https://api.moesif.com/v1/~/dashboards`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards/copy', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/copy")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/dashboards/copy`

*Copy All Dashboards*

> `POST https://api.moesif.com/v1/~/dashboards/copy`

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

## updateDashboard

<a id="opIdupdateDashboard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/dashboards/{dashId} \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/dashboards/{dashId}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}

r = requests.post('https://api.moesif.com/v1/~/dashboards/{dashId}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}')

result = RestClient.post 'https://api.moesif.com/v1/~/dashboards/{dashId}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards/{dashId}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""parent"": ""string"",
  ""name"": ""string"",
  ""dashboard_id"": ""string"",
  ""workspace_ids"": [
    [
      ""string""
    ]
  ],
  ""sort_order"": 0.1,
  ""dashboard_ids"": [
    ""string""
  ],
  ""policy"": {
    ""acl"": [
      {
        ""grantee"": ""string"",
        ""permission"": ""string""
      }
    ],
    ""resource"": {},
    ""api_scopes"": [
      ""string""
    ],
    ""original_encoded_resource"": ""string""
  }
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(DashboardUpdateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(DashboardUpdateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/dashboards/{dashId}`

*Update a Dashboard*

> `POST https://api.moesif.com/v1/~/dashboards/{dashId}`

> Example Request

```json
{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}
```

<h3 id="updatedashboard-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|dashId|path|string|true|none|
|body|body|[DashboardUpdateItem](#schemadashboardupdateitem)|true|none|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboards/{dashId}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{dashId}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/dashboards/{dashId}`

*Delete a Dashboard*

> `DELETE https://api.moesif.com/v1/~/dashboards/{dashId}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboards/{dashId}/cascade', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{dashId}/cascade")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/dashboards/{dashId}/cascade`

*Casccade delete a Dashboard*

> `DELETE https://api.moesif.com/v1/~/dashboards/{dashId}/cascade`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("POST", "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/dashboards/{id}/policy/acl`

*Add Dashboards ACL permission*

> `POST https://api.moesif.com/v1/~/dashboards/{id}/policy/acl`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/dashboards/{id}/policy/acl', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/dashboards/{id}/policy/acl")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/dashboards/{id}/policy/acl`

*Delete Dashboards ACL permission*

> `DELETE https://api.moesif.com/v1/~/dashboards/{id}/policy/acl`

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

<h1 id="management-api-email-templates">Email Templates</h1>

## createEmailTemplate

<a id="opIdcreateEmailTemplate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/emails/templates \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/emails/templates',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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

r = requests.post('https://api.moesif.com/v1/~/emails/templates', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
}')

result = RestClient.post 'https://api.moesif.com/v1/~/emails/templates',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/emails/templates', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""state"": 0,
  ""cohorts"": [
    {
      ""id"": ""string"",
      ""type"": ""string"",
      ""config"": {
        ""url_query"": ""string"",
        ""criteria"": ""string"",
        ""cohort_name"": ""string"",
        ""to"": ""string"",
        ""from"": ""string"",
        ""cohort_type"": ""string"",
        ""time_zone"": ""string""
      }
    }
  ],
  ""dynamic_fields"": [
    {
      ""token"": ""string"",
      ""field"": ""string"",
      ""aggregator"": ""avg""
    }
  ],
  ""content"": {
    ""html"": ""string"",
    ""chunks"": {}
  },
  ""template"": {
    ""subject"": ""string"",
    ""editor"": ""string"",
    ""design"": {},
    ""thumbnail_url"": ""string""
  },
  ""period"": ""string"",
  ""addresses"": {
    ""from"": ""string"",
    ""cc"": [
      ""string""
    ],
    ""bcc"": [
      ""string""
    ]
  }
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(EmailTemplateCreateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(EmailTemplateCreateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/emails/templates`

*Create New Email Template*

> `POST https://api.moesif.com/v1/~/emails/templates`

> Example Request

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

<h3 id="createemailtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[EmailTemplateCreateItem](#schemaemailtemplatecreateitem)|true|none|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/emails/templates', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/emails/templates`

*Get Email Templates*

> `GET https://api.moesif.com/v1/~/emails/templates`

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
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/emails/templates/{id}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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

r = requests.post('https://api.moesif.com/v1/~/emails/templates/{id}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
}')

result = RestClient.post 'https://api.moesif.com/v1/~/emails/templates/{id}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/emails/templates/{id}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""state"": 0,
  ""cohorts"": [
    {
      ""id"": ""string"",
      ""type"": ""string"",
      ""config"": {
        ""url_query"": ""string"",
        ""criteria"": ""string"",
        ""cohort_name"": ""string"",
        ""to"": ""string"",
        ""from"": ""string"",
        ""cohort_type"": ""string"",
        ""time_zone"": ""string""
      }
    }
  ],
  ""dynamic_fields"": [
    {
      ""token"": ""string"",
      ""field"": ""string"",
      ""aggregator"": ""avg""
    }
  ],
  ""content"": {
    ""html"": ""string"",
    ""chunks"": {}
  },
  ""template"": {
    ""subject"": ""string"",
    ""editor"": ""string"",
    ""design"": {},
    ""thumbnail_url"": ""string""
  },
  ""period"": ""string"",
  ""addresses"": {
    ""from"": ""string"",
    ""cc"": [
      ""string""
    ],
    ""bcc"": [
      ""string""
    ]
  }
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(EmailTemplateUpdateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(EmailTemplateUpdateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/emails/templates/{id}`

*Update an Email Template*

> `POST https://api.moesif.com/v1/~/emails/templates/{id}`

> Example Request

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

<h3 id="updateemailtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[EmailTemplateUpdateItem](#schemaemailtemplateupdateitem)|true|none|

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/emails/templates/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/emails/templates/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/emails/templates/{id}`

*Get Email Template*

> `GET https://api.moesif.com/v1/~/emails/templates/{id}`

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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/emails/templates/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/emails/templates/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/emails/templates/{id}`

*Delete Email Template*

> `DELETE https://api.moesif.com/v1/~/emails/templates/{id}`

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

<h1 id="management-api-governance-rules">Governance Rules</h1>

## createGovernanceRule

<a id="opIdcreateGovernanceRule"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://api.moesif.com/v1/~/governance/rules \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/governance/rules',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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

r = requests.post('https://api.moesif.com/v1/~/governance/rules', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
}')

result = RestClient.post 'https://api.moesif.com/v1/~/governance/rules',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/governance/rules', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""priority"": 0,
  ""model"": ""string"",
  ""state"": 0,
  ""cohorts"": [
    {}
  ],
  ""variables"": [
    {
      ""name"": ""string"",
      ""path"": ""string""
    }
  ],
  ""applied_to"": ""string"",
  ""block"": true,
  ""response"": {
    ""status"": 0,
    ""headers"": null,
    ""body"": {},
    ""original_encoded_body"": ""string""
  },
  ""applied_to_unidentified"": true,
  ""regex_config"": [
    {
      ""conditions"": [
        {
          ""path"": ""string"",
          ""value"": ""string""
        }
      ],
      ""sample_rate"": 0
    }
  ],
  ""plans"": [
    {
      ""provider"": ""string"",
      ""plan_id"": ""string"",
      ""price_ids"": [
        ""string""
      ]
    }
  ],
  ""type"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(GovernanceRuleCreateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(GovernanceRuleCreateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/governance/rules`

*Create New Governance Rules*

> `POST https://api.moesif.com/v1/~/governance/rules`

> Example Request

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

<h3 id="creategovernancerule-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[GovernanceRuleCreateItem](#schemagovernancerulecreateitem)|true|none|

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
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/governance/rules', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/governance/rules")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/governance/rules`

*Get Governance Rules*

> `GET https://api.moesif.com/v1/~/governance/rules`

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
  "created_at": "2024-04-11T04:01:35.090Z",
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
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_MANAGEMENT_API_KEY'

  -d '{
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
}' 
```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer YOUR_MANAGEMENT_API_KEY'
};

fetch('https://api.moesif.com/v1/~/governance/rules/{id}',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer YOUR_MANAGEMENT_API_KEY'
}
input_body = {
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

r = requests.post('https://api.moesif.com/v1/~/governance/rules/{id}', headers = headers, json = input_body)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY'
}

input_payload = JSON.parse('{
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
}')

result = RestClient.post 'https://api.moesif.com/v1/~/governance/rules/{id}',
  params: {
  }, 
  payload: input_payload.to_json, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$inputPayload = json_decode('{
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
}')

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('POST','https://api.moesif.com/v1/~/governance/rules/{id}', array(
        'headers' => $headers,
        'json' => $inputPayload,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer YOUR_MANAGEMENT_API_KEY"},
    }
    jsonPayload := `{
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
}`
    data := bytes.NewBuffer([]byte(jsonPayload))
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
      
      string json = @"{
  ""name"": ""string"",
  ""priority"": 0,
  ""model"": ""string"",
  ""state"": 0,
  ""cohorts"": [
    {}
  ],
  ""variables"": [
    {
      ""name"": ""string"",
      ""path"": ""string""
    }
  ],
  ""applied_to"": ""string"",
  ""block"": true,
  ""response"": {
    ""status"": 0,
    ""headers"": null,
    ""body"": {},
    ""original_encoded_body"": ""string""
  },
  ""applied_to_unidentified"": true,
  ""regex_config"": [
    {
      ""conditions"": [
        {
          ""path"": ""string"",
          ""value"": ""string""
        }
      ],
      ""sample_rate"": 0
    }
  ],
  ""plans"": [
    {
      ""provider"": ""string"",
      ""plan_id"": ""string"",
      ""price_ids"": [
        ""string""
      ]
    }
  ],
  ""type"": ""string""
}";
      var content = JsonConvert.DeserializeObject(json);
      await PostAsync(content, url);
      
      
    }

    /// Performs a POST Request
    public async Task PostAsync(GovernanceRuleUpdateItem content, string url)
    {
        //Serialize Object
        StringContent jsonContent = SerializeObject(content);

        //Execute POST request
        HttpResponseMessage response = await Client.PostAsync(url, jsonContent);
    }
    
    
    
    /// Serialize an object to Json
    private StringContent SerializeObject(GovernanceRuleUpdateItem content)
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

con.setRequestProperty("Content-Type",'application/json');
con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

// Enable sending a request body
con.setDoOutput(true);

String jsonPayload = """{
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
}""";

// Write payload to the request
try(OutputStream os = con.getOutputStream()) {
    byte[] input = jsonPayload.getBytes("utf-8");
    os.write(input, 0, input.length);           
}

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`POST /~/governance/rules/{id}`

*Update a Governance Rule*

> `POST https://api.moesif.com/v1/~/governance/rules/{id}`

> Example Request

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

<h3 id="updategovernancerule-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[GovernanceRuleUpdateItem](#schemagovernanceruleupdateitem)|true|none|

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
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

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

try {
    $response = $client->request('GET','https://api.moesif.com/v1/~/governance/rules/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("GET", "https://api.moesif.com/v1/~/governance/rules/{id}")
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

con.setRequestProperty("Accept",'application/json');
con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`GET /~/governance/rules/{id}`

*Get a Governance Rule*

> `GET https://api.moesif.com/v1/~/governance/rules/{id}`

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
  "created_at": "2024-04-11T04:01:35.090Z",
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
  }, 
  headers: headers

p JSON.parse(result)

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Authorization' => 'Bearer YOUR_MANAGEMENT_API_KEY',
);

$client = new \GuzzleHttp\Client();

try {
    $response = $client->request('DELETE','https://api.moesif.com/v1/~/governance/rules/{id}', array(
        'headers' => $headers,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

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
    
    
    req, err := http.NewRequest("DELETE", "https://api.moesif.com/v1/~/governance/rules/{id}")
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

con.setRequestProperty("Authorization",'Bearer YOUR_MANAGEMENT_API_KEY');

int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

`DELETE /~/governance/rules/{id}`

*Delete a Governance Rule*

> `DELETE https://api.moesif.com/v1/~/governance/rules/{id}`

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
  "modified_at": "2024-04-11T04:01:35.090Z",
  "from": "string",
  "created_at": "2024-04-11T04:01:35.090Z",
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
|headers|.map[string,string]|false|none|none|
|body|object|false|none|none|
|original_encoded_body|string|false|none|none|

<h2 id="tocS_AppCreate">AppCreate</h2>

<a id="schemaappcreatedto"></a>
<a id="schema_AppCreate"></a>
<a id="tocSappcreatedto"></a>
<a id="tocsappcreatedto"></a>

```json
{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|time_zone|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|custom_app_id|string|false|none|none|

<h2 id="tocS_AppUpdate">AppUpdate</h2>

<a id="schemaappupdatedto"></a>
<a id="schema_AppUpdate"></a>
<a id="tocSappupdatedto"></a>
<a id="tocsappupdatedto"></a>

```json
{
  "name": "string",
  "time_zone": "string",
  "week_starts_on": 0,
  "custom_app_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|time_zone|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|custom_app_id|string|false|none|none|

<h2 id="tocS_BillingReportUsageInvoice">BillingReportUsageInvoice</h2>

<a id="schemabillingreportusageinvoice"></a>
<a id="schema_BillingReportUsageInvoice"></a>
<a id="tocSbillingreportusageinvoice"></a>
<a id="tocsbillingreportusageinvoice"></a>

```json
{
  "period_start": "2024-04-11T04:01:35.090Z",
  "period_end": "2024-04-11T04:01:35.090Z",
  "id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|period_start|string(date-time)|false|none|none|
|period_end|string(date-time)|false|none|none|
|id|string|true|none|none|

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

<h2 id="tocS_BillingReportUsage">BillingReportUsage</h2>

<a id="schemabillingreportusage"></a>
<a id="schema_BillingReportUsage"></a>
<a id="tocSbillingreportusage"></a>
<a id="tocsbillingreportusage"></a>

```json
{
  "invoice": {
    "period_start": "2024-04-11T04:01:35.090Z",
    "period_end": "2024-04-11T04:01:35.090Z",
    "id": "string"
  },
  "aggregator": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|invoice|[BillingReportUsageInvoice](#schemabillingreportusageinvoice)|false|none|none|
|aggregator|string|false|none|none|

<h2 id="tocS_BillingMetricResponse">BillingMetricResponse</h2>

<a id="schemabillingmetricresponse"></a>
<a id="schema_BillingMetricResponse"></a>
<a id="tocSbillingmetricresponse"></a>
<a id="tocsbillingmetricresponse"></a>

```json
{
  "buckets": [
    {
      "start": "2024-04-11T04:01:35.090Z",
      "metric": 0.1,
      "amounts": null,
      "ending_balance": {
        "current_balance": 0.1,
        "pending_activity": 0.1,
        "available_balance": 0.1
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
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

<h2 id="tocS_BalanceChange">BalanceChange</h2>

<a id="schemabalancechange"></a>
<a id="schema_BalanceChange"></a>
<a id="tocSbalancechange"></a>
<a id="tocsbalancechange"></a>

```json
{
  "amount": 0.1
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|amount|number(double)|true|none|none|

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

<h2 id="tocS_DashboardUpdateItem">DashboardUpdateItem</h2>

<a id="schemadashboardupdateitem"></a>
<a id="schema_DashboardUpdateItem"></a>
<a id="tocSdashboardupdateitem"></a>
<a id="tocsdashboardupdateitem"></a>

```json
{
  "parent": "string",
  "name": "string",
  "dashboard_id": "string",
  "workspace_ids": [
    [
      "string"
    ]
  ],
  "sort_order": 0.1,
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
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|parent|string|false|none|none|
|name|string|false|none|none|
|dashboard_id|string|false|none|none|
|workspace_ids|[array]|false|none|none|
|sort_order|number(double)|false|none|none|
|dashboard_ids|[string]|false|none|none|
|policy|[PolicyItem](#schemapolicyitem)|false|none|none|

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
      "created_at": "2024-04-11T04:01:35.090Z",
      "updated_at": "2024-04-11T04:01:35.090Z"
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|summary|[Summary](#schemasummary)|true|none|none|

<h2 id="tocS_SignedToken">SignedToken</h2>

<a id="schemasignedtokendto"></a>
<a id="schema_SignedToken"></a>
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
  "created_at": "2024-04-11T04:01:35.090Z",
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
|metadata|.map[string,string]|false|none|none|
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
  "start": "2024-04-11T04:01:35.090Z",
  "metric": 0.1,
  "amounts": null,
  "ending_balance": {
    "current_balance": 0.1,
    "pending_activity": 0.1,
    "available_balance": 0.1
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|start|string(date-time)|true|none|none|
|metric|number(double)|false|none|none|
|amounts|.map[string,scala.double]|false|none|none|
|ending_balance|[CreditBalanceMetric](#schemacreditbalancemetric)|false|none|none|

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
  "sort_order": 0.1,
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
  "created": "2024-04-11T04:01:35.090Z"
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

<h2 id="tocS_CreditBalanceMetric">CreditBalanceMetric</h2>

<a id="schemacreditbalancemetric"></a>
<a id="schema_CreditBalanceMetric"></a>
<a id="tocScreditbalancemetric"></a>
<a id="tocscreditbalancemetric"></a>

```json
{
  "current_balance": 0.1,
  "pending_activity": 0.1,
  "available_balance": 0.1
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|current_balance|number(double)|true|none|none|
|pending_activity|number(double)|true|none|none|
|available_balance|number(double)|true|none|none|

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
  "created_at": "2024-04-11T04:01:35.090Z",
  "updated_at": "2024-04-11T04:01:35.090Z"
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

<h2 id="tocS_BillingReportBalanceTransCreate">BillingReportBalanceTransCreate</h2>

<a id="schemabillingreportbalancetranscreate"></a>
<a id="schema_BillingReportBalanceTransCreate"></a>
<a id="tocSbillingreportbalancetranscreate"></a>
<a id="tocsbillingreportbalancetranscreate"></a>

```json
{
  "company_id": "string",
  "description": "string",
  "expire_at": "2024-04-11T04:01:35.090Z",
  "active_at": "2024-04-11T04:01:35.090Z",
  "amount": 0.1,
  "transaction_id": "string",
  "subscription_id": "string",
  "type": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|company_id|string|true|none|none|
|description|string|false|none|none|
|expire_at|string(date-time)|false|none|none|
|active_at|string(date-time)|false|none|none|
|amount|number(double)|true|none|none|
|transaction_id|string|true|none|none|
|subscription_id|string|true|none|none|
|type|string|true|none|none|

<h2 id="tocS_WorkspaceCreateItem">WorkspaceCreateItem</h2>

<a id="schemaworkspacecreateitem"></a>
<a id="schema_WorkspaceCreateItem"></a>
<a id="tocSworkspacecreateitem"></a>
<a id="tocsworkspacecreateitem"></a>

```json
{
  "name": "string",
  "is_default": true,
  "view_count": 0,
  "dashboard": {},
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "type": "string",
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|is_default|boolean|false|none|none|
|view_count|integer(int32)|false|none|none|
|dashboard|object|false|none|none|
|colors|object|false|none|none|
|drawings|[[DrawingItem](#schemadrawingitem)]|false|none|none|
|chart|[ChartItem](#schemachartitem)|true|none|none|
|template|[TemplateItem](#schematemplateitem)|false|none|none|
|type|string|false|none|none|
|width|number(double)|false|none|none|
|sort_order|number(double)|false|none|none|
|policy|[PolicyItem](#schemapolicyitem)|true|none|none|

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

<h2 id="tocS_CreditBalance">CreditBalance</h2>

<a id="schemacreditbalance"></a>
<a id="schema_CreditBalance"></a>
<a id="tocScreditbalance"></a>
<a id="tocscreditbalance"></a>

```json
{
  "sequence_id": 0,
  "current_balance": 0.1,
  "pending_activity": 0.1,
  "available_balance": 0.1
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|sequence_id|integer(int32)|true|none|none|
|current_balance|number(double)|true|none|none|
|pending_activity|number(double)|true|none|none|
|available_balance|number(double)|true|none|none|

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
  "prices": [
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
      "created_at": "2024-04-11T04:01:35.090Z",
      "unit": "string",
      "usage_aggregator": "string",
      "period": 0
    }
  ],
  "provider": "string",
  "description": "string",
  "id": "string",
  "status": "string",
  "product_id": "string",
  "metadata": null,
  "created_at": "2024-04-11T04:01:35.090Z",
  "unit": "string",
  "updated_at": "2024-04-11T04:01:35.090Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|prices|[[MoesifPrice](#schemamoesifprice)]|false|none|none|
|provider|string|false|none|none|
|description|string|false|none|none|
|id|string|false|none|none|
|status|string|false|none|none|
|product_id|string|false|none|none|
|metadata|.map[string,string]|false|none|none|
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
  "value": 0.1
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

<h2 id="tocS_BillingReport">BillingReport</h2>

<a id="schemabillingreport"></a>
<a id="schema_BillingReport"></a>
<a id="tocSbillingreport"></a>
<a id="tocsbillingreport"></a>

```json
{
  "ending_balance": {
    "sequence_id": 0,
    "current_balance": 0.1,
    "pending_activity": 0.1,
    "available_balance": 0.1
  },
  "company_id": "string",
  "success": true,
  "provider": "string",
  "report_version": 0,
  "usage_end_time": "2024-04-11T04:01:35.090Z",
  "usage": {
    "invoice": {
      "period_start": "2024-04-11T04:01:35.090Z",
      "period_end": "2024-04-11T04:01:35.090Z",
      "id": "string"
    },
    "aggregator": "string"
  },
  "_id": "string",
  "meter_usage": 0,
  "last_success_time": "2024-04-11T04:01:35.090Z",
  "beginning_balance": {
    "sequence_id": 0,
    "current_balance": 0.1,
    "pending_activity": 0.1,
    "available_balance": 0.1
  },
  "billing_meter_id": "string",
  "amount": 0.1,
  "usage_start_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "provider_requests": [
    {
      "success": true,
      "status_code": 0,
      "job_id": "string",
      "error_message": "string",
      "error_code": "string",
      "request_time": "2024-04-11T04:01:35.090Z"
    }
  ],
  "currency": "string",
  "report_total_usage": 0,
  "channel_requests": [
    {
      "channel_id": "string",
      "channel_name": "string",
      "provider_requests": [
        {
          "success": true,
          "status_code": 0,
          "job_id": "string",
          "error_message": "string",
          "error_code": "string",
          "request_time": "2024-04-11T04:01:35.090Z"
        }
      ]
    }
  ],
  "created_at": "2024-04-11T04:01:35.090Z",
  "app_id": "string",
  "subscription_id": "string",
  "subscription_period_start": "2024-04-11T04:01:35.090Z",
  "balance_changes": [
    {
      "amount": 0.1
    }
  ],
  "type": "string",
  "updated_at": "2024-04-11T04:01:35.090Z",
  "org_id": "string",
  "subscription_period_end": "2024-04-11T04:01:35.090Z",
  "meter_metric": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ending_balance|[CreditBalance](#schemacreditbalance)|false|none|none|
|company_id|string|true|none|none|
|success|boolean|true|none|none|
|provider|string|true|none|none|
|report_version|integer(int32)|false|none|none|
|usage_end_time|string(date-time)|true|none|none|
|usage|[BillingReportUsage](#schemabillingreportusage)|false|none|none|
|_id|string|false|none|none|
|meter_usage|integer(int64)|true|none|none|
|last_success_time|string(date-time)|false|none|none|
|beginning_balance|[CreditBalance](#schemacreditbalance)|false|none|none|
|billing_meter_id|string|true|none|none|
|amount|number(double)|false|none|none|
|usage_start_time|string(date-time)|true|none|none|
|status|string|false|none|none|
|provider_requests|[[ProviderRequest](#schemaproviderrequest)]|true|none|none|
|currency|string|false|none|none|
|report_total_usage|integer(int64)|true|none|none|
|channel_requests|[[ChannelRequest](#schemachannelrequest)]|false|none|none|
|created_at|string(date-time)|false|none|none|
|app_id|string|true|none|none|
|subscription_id|string|true|none|none|
|subscription_period_start|string(date-time)|false|none|none|
|balance_changes|[[BalanceChange](#schemabalancechange)]|false|none|none|
|type|string|false|none|none|
|updated_at|string(date-time)|false|none|none|
|org_id|string|true|none|none|
|subscription_period_end|string(date-time)|false|none|none|
|meter_metric|integer(int64)|true|none|none|

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

<h2 id="tocS_ChannelRequest">ChannelRequest</h2>

<a id="schemachannelrequest"></a>
<a id="schema_ChannelRequest"></a>
<a id="tocSchannelrequest"></a>
<a id="tocschannelrequest"></a>

```json
{
  "channel_id": "string",
  "channel_name": "string",
  "provider_requests": [
    {
      "success": true,
      "status_code": 0,
      "job_id": "string",
      "error_message": "string",
      "error_code": "string",
      "request_time": "2024-04-11T04:01:35.090Z"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|channel_id|string|true|none|none|
|channel_name|string|true|none|none|
|provider_requests|[[ProviderRequest](#schemaproviderrequest)]|true|none|none|

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
            "key": null,
            "val": null
          }
        ],
        "verb": "string",
        "headers": [
          {
            "key": null,
            "val": null
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
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  "created": "2024-04-11T04:01:35.090Z",
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
        "created_at": "2024-04-11T04:01:35.090Z",
        "updated_at": "2024-04-11T04:01:35.090Z"
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
          "report_when": null
        },
        "channel_ids": [
          "string"
        ],
        "custom_plan": {
          "plan_id": null
        }
      },
      "recurly_params": {
        "plan": {
          "name": null,
          "id": null,
          "code": null
        },
        "add_on": {
          "name": null,
          "currencies": null,
          "usage_percentage": null,
          "add_on_type": null,
          "external_sku": null,
          "state": null,
          "tiers": null,
          "tier_type": null,
          "code": null,
          "plan_id": null,
          "id": null,
          "percentage_tiers": null,
          "usage_type": null,
          "created_at": null,
          "usage_calculation_type": null,
          "updated_at": null,
          "deleted_at": null
        },
        "add_ons": [
          {}
        ]
      },
      "chargebee_params": {
        "item_plan": {
          "name": null,
          "item_family_id": null,
          "description": null,
          "usage_calculation": null,
          "external_name": null,
          "metered": null,
          "id": null,
          "status": null,
          "unit": null,
          "updated_at": null,
          "archived_at": null
        },
        "item_price": {
          "name": null,
          "item_id": null,
          "description": null,
          "price": null,
          "price_in_decimal": null,
          "external_name": null,
          "tiers": null,
          "trial_end_action": null,
          "trial_period": null,
          "id": null,
          "status": null,
          "pricing_model": null,
          "created_at": null,
          "period_unit": null,
          "updated_at": null,
          "trial_period_unit": null,
          "item_type": null,
          "currency_code": null,
          "archived_at": null,
          "free_quantity": null,
          "period": null
        },
        "item_prices": [
          {}
        ],
        "reporting": {
          "reporting_period": null
        }
      },
      "stripe_params": {
        "product": {
          "name": null,
          "description": null,
          "unit_label": null,
          "id": null,
          "usage_type": null
        },
        "price": {
          "tiers_mode": null,
          "transform_quantity": null,
          "price_id": null,
          "tiers": null,
          "recurring": null,
          "unit_amount_decimal": null,
          "price_nickname": null,
          "currency": null,
          "billing_scheme": null,
          "unit_amount": null,
          "created": null,
          "active": null
        },
        "prices": [
          {}
        ],
        "reporting": {
          "reporting_period": null
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
  "modified_at": "2024-04-11T04:01:35.090Z",
  "es_query": "string",
  "created_at": "2024-04-11T04:01:35.090Z",
  "zero_balance_behavior": "string",
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
|zero_balance_behavior|string|false|none|none|
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

<h2 id="tocS_AppResponse">AppResponse</h2>

<a id="schemaappresponsedto"></a>
<a id="schema_AppResponse"></a>
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
|criteria|object|false|none|none|
|sample_rate|integer(int32)|false|none|none|
|notification_rule|[NotificationRule](#schemanotificationrule)|false|none|none|
|cohort_name|string|false|none|none|
|to|string|false|none|none|
|week_starts_on|integer(int32)|false|none|none|
|locked_by|string|false|none|none|
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
            null
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
            null
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
            "currency": null,
            "unit_amount": null,
            "unit_amount_decimal": null
          }
        ],
        "usage_percentage": null,
        "add_on_type": "string",
        "external_sku": "string",
        "state": "string",
        "tiers": [
          {
            "ending_quantity": null,
            "currencies": null
          }
        ],
        "tier_type": "string",
        "code": "string",
        "plan_id": "string",
        "id": "string",
        "percentage_tiers": [
          {
            "tiers": null,
            "currency": null
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
            "starting_unit": null,
            "ending_unit": null,
            "price": null
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
            "flat_amount_decimal": null,
            "up_to": null,
            "unit_amount_decimal": null,
            "flat_amount": null,
            "unit_amount": null
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
            "currency": null,
            "unit_amount": null,
            "unit_amount_decimal": null
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
            "usage_percent": null
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
            {}
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
            {}
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
  "created_at": "2024-04-11T04:01:35.090Z",
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
          {}
        ],
        "usage_percentage": null,
        "add_on_type": "string",
        "external_sku": "string",
        "state": "string",
        "tiers": [
          {}
        ],
        "tier_type": "string",
        "code": "string",
        "plan_id": "string",
        "id": "string",
        "percentage_tiers": [
          {}
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
            null
          ],
          "usage_percentage": null,
          "add_on_type": "string",
          "external_sku": "string",
          "state": "string",
          "tiers": [
            null
          ],
          "tier_type": "string",
          "code": "string",
          "plan_id": "string",
          "id": "string",
          "percentage_tiers": [
            null
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
          {}
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
            null
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
          "divide_by": null,
          "round": null
        },
        "price_id": "string",
        "tiers": [
          {}
        ],
        "recurring": {
          "trial_period_days": null,
          "interval": null,
          "usage_type": null,
          "interval_count": null,
          "aggregate_usage": null
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
          "transform_quantity": {},
          "price_id": "string",
          "tiers": [
            null
          ],
          "recurring": {},
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

<h2 id="tocS_ProviderRequest">ProviderRequest</h2>

<a id="schemaproviderrequest"></a>
<a id="schema_ProviderRequest"></a>
<a id="tocSproviderrequest"></a>
<a id="tocsproviderrequest"></a>

```json
{
  "success": true,
  "status_code": 0,
  "job_id": "string",
  "error_message": "string",
  "error_code": "string",
  "request_time": "2024-04-11T04:01:35.090Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|success|boolean|true|none|none|
|status_code|integer(int32)|true|none|none|
|job_id|string|true|none|none|
|error_message|string|true|none|none|
|error_code|string|true|none|none|
|request_time|string(date-time)|true|none|none|

<h2 id="tocS_CommentItem">CommentItem</h2>

<a id="schemacommentitem"></a>
<a id="schema_CommentItem"></a>
<a id="tocScommentitem"></a>
<a id="tocscommentitem"></a>

```json
{
  "message": "string",
  "mentions": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|message|string|false|none|none|
|mentions|[string]|false|none|none|

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
    "created_at": "2024-04-11T04:01:35.090Z",
    "updated_at": "2024-04-11T04:01:35.090Z"
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

<h2 id="tocS_WorkspaceUpdateItem">WorkspaceUpdateItem</h2>

<a id="schemaworkspaceupdateitem"></a>
<a id="schema_WorkspaceUpdateItem"></a>
<a id="tocSworkspaceupdateitem"></a>
<a id="tocsworkspaceupdateitem"></a>

```json
{
  "name": "string",
  "colors": {},
  "drawings": [
    {
      "name": "string",
      "direction": "string",
      "id": "string",
      "type": "string",
      "value": 0.1
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
  "width": 0.1,
  "sort_order": 0.1,
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
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|colors|object|false|none|none|
|drawings|[[DrawingItem](#schemadrawingitem)]|false|none|none|
|chart|[ChartItem](#schemachartitem)|false|none|none|
|template|[TemplateItem](#schematemplateitem)|false|none|none|
|width|number(double)|false|none|none|
|sort_order|number(double)|false|none|none|
|policy|[PolicyItem](#schemapolicyitem)|false|none|none|

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

<h2 id="tocS_searchUsersResponse">searchUsersResponse</h2>

<a id="schemasearchusersresponsedto"></a>
<a id="schema_searchUsersResponse"></a>
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
          "first_name": "[",
          "body": {},
          "name": "[",
          "email": "[",
          "first_seen_time": "[",
          "user_agent": {},
          "geo_ip": {},
          "modified_time": "[",
          "last_name": "[",
          "ip_address": "[",
          "session_token": [
            null
          ],
          "last_seen_time": "[",
          "app_id": "[",
          "org_id": "["
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
|» hits|[[userResponse](#schemauserresponsedto)]|false|none|none|

<h2 id="tocS_Subscription">Subscription</h2>

<a id="schemasubscriptiondto"></a>
<a id="schema_Subscription"></a>
<a id="tocSsubscriptiondto"></a>
<a id="tocssubscriptiondto"></a>

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "app_id": "string",
  "subscription_id": "string",
  "version_id": "string",
  "type": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "org_id": "string",
  "created": "2024-04-11T04:01:35.090Z"
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
|metadata|object|false|none|none|
|app_id|string|true|none|none|
|subscription_id|string|true|none|none|
|version_id|string|false|none|none|
|type|string|true|none|none|
|current_period_end|string(date-time)|false|none|none|
|org_id|string|true|none|none|
|created|string(date-time)|false|none|none|

<h2 id="tocS_searchEventsResponse">searchEventsResponse</h2>

<a id="schemasearcheventsresponsedto"></a>
<a id="schema_searchEventsResponse"></a>
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
          "company_id": "[",
          "duration_ms": "[",
          "request": {},
          "user_id": "[",
          "company": {},
          "response": {},
          "id": "[",
          "event_type": "[",
          "session_token": "[",
          "metadata": {},
          "app_id": "[",
          "org_id": "[",
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
|» hits|[[eventResponse](#schemaeventresponsedto)]|false|none|none|

<h2 id="tocS_searchcompanysResponse">searchcompanysResponse</h2>

<a id="schemasearchcompanysresponsedto"></a>
<a id="schema_searchcompanysResponse"></a>
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
|» hits|[[companyResponse](#schemacompanyresponsedto)]|false|none|none|

<h2 id="tocS_UserUpdate">UserUpdate</h2>

<a id="schemauserupdatedto"></a>
<a id="schema_UserUpdate"></a>
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
  "modified_time": "2024-04-11T04:01:35.090Z",
  "last_name": "string",
  "metadata": {},
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
|metadata|object|false|none|none|
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

<h2 id="tocS_userResponse">userResponse</h2>

<a id="schemauserresponsedto"></a>
<a id="schema_userResponse"></a>
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
    "first_seen_time": "2023-07-27T21:52:58.0990000Z",
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
    "modified_time": "2023-07-27T21:55:19.464",
    "last_name": "Doe",
    "ip_address": "107.200.85.196",
    "session_token": [
      "e93u2jiry8fij8q09-tfZ9SIK9DERDXUYMF"
    ],
    "last_seen_time": "2023-07-27T21:52:58.0990000Z",
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

<h2 id="tocS_eventResponse">eventResponse</h2>

<a id="schemaeventresponsedto"></a>
<a id="schema_eventResponse"></a>
<a id="tocSeventresponsedto"></a>
<a id="tocseventresponsedto"></a>

```json
{
  "_id": "AWF5M-FDTqLFD8l5y2f4",
  "_source": {
    "company_id": "67890",
    "duration_ms": 76,
    "request": {
      "body": "json",
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
          "["
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
      "time": "2023-07-09T06:14:58.550",
      "headers": {}
    },
    "user_id": "123454",
    "company": {},
    "response": {
      "body": {},
      "transfer_encoding": "json",
      "status": 200,
      "time": "2023-07-09T06:14:58.626",
      "headers": {}
    },
    "id": "AWF5M-FDTqLFD8l5y2f4",
    "event_type": "api_call",
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
|» company_id|string|false|none|none|
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
|» user_id|string|false|none|none|
|» company|object|false|none|none|
|» response|object|false|none|none|
|»» body|object|false|none|none|
|»» transfer_encoding|string|false|none|none|
|»» status|integer|false|none|none|
|»» time|string|false|none|none|
|»» headers|object|false|none|none|
|» id|string|false|none|none|
|» event_type|string|false|none|none|
|» session_token|string|false|none|none|
|» metadata|object|false|none|none|
|» app_id|string|false|none|none|
|» org_id|string|false|none|none|
|» user|object|false|none|none|
|sort|[integer]|false|none|none|

<h2 id="tocS_AddSubscription">AddSubscription</h2>

<a id="schemaaddsubscriptiondto"></a>
<a id="schema_AddSubscription"></a>
<a id="tocSaddsubscriptiondto"></a>
<a id="tocsaddsubscriptiondto"></a>

```json
{
  "trial_start": "2024-04-11T04:01:35.090Z",
  "company_id": "string",
  "start_date": "2024-04-11T04:01:35.090Z",
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
  "current_period_start": "2024-04-11T04:01:35.090Z",
  "company_external_id": "string",
  "payment_status": "string",
  "cancel_time": "2024-04-11T04:01:35.090Z",
  "status": "string",
  "trial_end": "2024-04-11T04:01:35.090Z",
  "external_id": "string",
  "metadata": {},
  "subscription_id": "string",
  "version_id": "string",
  "current_period_end": "2024-04-11T04:01:35.090Z",
  "created": "2024-04-11T04:01:35.090Z"
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
|metadata|object|false|none|none|
|subscription_id|string|true|none|none|
|version_id|string|false|none|none|
|current_period_end|string(date-time)|false|none|none|
|created|string(date-time)|false|none|none|

<h2 id="tocS_CompanyUpdate">CompanyUpdate</h2>

<a id="schemacompanyupdatedto"></a>
<a id="schema_CompanyUpdate"></a>
<a id="tocScompanyupdatedto"></a>
<a id="tocscompanyupdatedto"></a>

```json
{
  "company_id": "string",
  "modified_time": "2024-04-11T04:01:35.090Z",
  "session_token": "string",
  "company_domain": "string",
  "metadata": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|company_id|string|true|none|none|
|modified_time|string(date-time)|false|none|none|
|session_token|string|false|none|none|
|company_domain|string|false|none|none|
|metadata|object|false|none|none|


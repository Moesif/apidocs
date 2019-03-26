## Companies

### Update a Company

**`POST https://api.moesif.net/v1/companies`**

Updates a company profile in Moesif.

A custom JSON object can be placed in the `metadata` object which
will be stored as part of the company profile.

If present, Moesif will detect the company_domain field.

Updating a company will create one if it does not exist,
also know as [upsert](https://en.wikipedia.org/wiki/Merge_(SQL))
If a company exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/companies</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  {
    "modified_time": "2018-01-20T04:45:42.914",
    "ip_address": "61.48.220.123",
    "session_token": "df32dkj32opxzfdmji4hf4fs98y18cx98q3yhwmnhcfx43f",
    "company_id": "123456",
    "metadata": {
      "company_domain": "my-service.com",
      "custom_string_field": "some_value",
      "custom_int_field": 55,
      "custom_obj_field": {
          "sub_a": "value_a",
          "sub_b": "value_b"
      }
    }
  }

```

```shell
# You can also use wget
curl -X GET https://api.moesif.net/v1/companies \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```javascript--nodejs
// 1. Import the module
var moesifapi = require('moesifapi');
var api = moesifapi.ApiController;
var CompanyModel = moesifapi.CompanyModel;

// 2. Configure the ApplicationId
var config = moesifapi.configuration;
config.ApplicationId = "my_application_id";

// 3. Generate a Company Model
var company = {
    companyId: "my_company_id",
    sessionToken: "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f",
    metadata: {
      company_domain: "my-service.com",
      string_field: "value_1",
      number_field: 0,
      object_field: {
        field_a: "value_a",
        field_b: "value_b"
      }
    }
};

// 4. Create a single company
api.updateCompany(new CompanyModel(company), function(error, response, context) {
  // Do Something
});
```

```python
from __future__ import print_function
from moesifapi.moesif_api_client import *
from moesifapi.models import *
from datetime import *

client = MoesifAPIClient(my_application_id)
api = client.api

metadata = APIHelper.json_deserialize("""  {
        "company_domain": "my-service.com"
    } """)

company_model = CompanyModel(
    company_id = 'ihjdewhdiew',
    modified_time = datetime.utcnow(),
    metadata = metadata)

# Perform the API call through the SDK function
api.update_company(company_model)
```

```ruby
client = MoesifApi::MoesifAPIClient.new(my_application_id)
api = client.api

metadata = JSON.parse('{'\
  '"company_domain": "my-service.com"'\
'}')

company_model = CompanyModel.new()
company_model.modified_time = Time.now.utc.iso8601  # option, default now.
company_model.company_id = "testrubyapicompany"  #only required field.
company_model.metadata = metadata

response = api.update_company(company_model)
```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.

require_once "vendor/autoload.php";

// Import the SDK client in your project:

use MoesifApi\MoesifApiClient;

// Instantiate the client. After this, you can now access the Moesif API
// and call the respective methods:

$client = new MoesifApiClient("Your application Id");
$api = $client->getApi();

$company = new Models\CompanyModel();

$company->companyId = "moesifphpcompany";
$company->metadata = [
  "company_domain": "my-service.com",
  "custom" => "randomdata"
];

$api->updateCompany($company);
```

```go
```

```csharp
```

```java
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
APIController api = getClient().getAPI();

CompanyModel company = new CompanyBuilder()
    .companyId("12345")
    .modifiedTime(new Date())
    .ipAddress("29.80.250.240")
    .sessionToken("di3hd982h3fubv3yfd94egf")
    .metadata(APIHelper.deserialize("{" +
        "\"company_domain\": \"my-service.com\"," +
        "\"string_field\": \"value_1\"," +
        "\"number_field\": 0," +
        "\"object_field\": {" +
          "\"field_1\": \"value_1\"," +
          "\"field_2\": \"value_2\"" +
        "}" +
      "}"))
     .build();

// Asynchronous Call to update Company
APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
      // Do something
    }

    public void onFailure(HttpContext context, Throwable error) {
      // Do something else
    }
};

api.updateCompanyAsync(company, callBack);

// Synchronous Call to update company
api.updateCompany(company, callBack);
```

#### _company_id_ vs. _session_token_
Companies in Moesif are identified by two attributes: _company_id_ and _session_token_.

- A `company_id` is a __permanent__ and unique identifier to track a company across platforms and services.
It is recommended to set the Moesif company_id field with the id used in your own databases and services.

- A `session_token` may be __temporary__ or can expire unlike a company_id.
Examples include [JSON Web Tokens's](https://jwt.io/introduction/) (JWT), API keys, and session ids.
Moesif can _alias_ multiple session_token's to the same company_id. To create a new alias,
call the update company API with at least the company_id and session_token set.
The new session_token will be appended to the alias table.

Name | Required | Description
--------- | -------- | -----------
company_id | __true__ | Your application's `company_id` to identify this company.
modified_time | false | Last Modified Timestamp for the company in ISO 8601 format (Set automatically if not provided).
ip_address | false | Current IP address of the company, If not set, we use the IP address of the POST request.
session_token | false | Current end company session or API token such as a JWT. Setting this field does not remove old session tokens previously stored. Instead, Moesif will append the new value to an alias table for this company_id.
metadata | false | A JSON Object consisting of any custom metadata to be stored with this company.

### Update Companies in Batch

**`POST https://api.moesif.net/v1/companies/batch`**

Updates a list of companies profile in Moesif.

A custom JSON object can be placed in the `metadata` object of each company
which will be stored as part of the company profile.

If present, Moesif will detect the company_domain field.

If company does not exist, a new one will be created.
If a company exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/companies/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  [
    {
      "modified_time": "2018-01-20T04:45:42.914",
      "ip_address": "61.48.220.123",
      "session_token": "df32dkj32opxzfdmji4hf4fs98y18cx98q3yhwmnhcfx43f",
      "company_id": "12345",
      "metadata": {
        "company_domain": "my-service.com",
        "custom_string_field": "some_value",
        "custom_int_field": 55,
        "custom_obj_field": {
            "sub_a": "value_a",
            "sub_b": "value_b"
        }
      }
    },
    {
      "modified_time": "2018-01-20T04:45:42.914",
      "ip_address": "61.48.220.129",
      "session_token": "d2ewzcazchurvcqdevnhcuiyrgvru",
      "company_id": "7890",
      "metadata": {
        "company_domain": "other-service.com",
        "custom_string_field": "some_value",
        "custom_int_field": 55,
        "custom_obj_field": {
            "sub_a": "value_a",
            "sub_b": "value_b"
        }
      }
    }
  ]

```

```shell
# You can also use wget
curl -X GET https://api.moesif.net/v1/events/batch \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```javascript--nodejs
var moesifapi = require('moesifapi');
var api = moesifapi.ApiController;

// 2. Configure the ApplicationId
var config = moesifapi.configuration;
config.ApplicationId = "my_application_id";

// 3. Generate an API Event Model
var companyA = {
    companyId: "12345",
    sessionToken: "23jdf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f",
    metadata: {
      company_domain: "my-service.com",
      string_field: "value_1",
      number_field: 0,
      object_field: {
        field_a: "value_a",
        field_b: "value_b"
      }
    }
};

var companyB = {
    companyId: "6789",
    sessionToken: "23jdf0oszfexfqe[lwjfiefovprewv4d8ayrcdx8nu2ng]zfeeadedefx43f",
    metadata: {
      company_domain: "other-service.com",
      string_field: "value_1",
      number_field: 1,
      object_field: {
        field_a: "value_a",
        field_b: "value_b"
      }
    }
};

var companies = [new CompanyModel(companyA), new CompanyModel(companyB)];

// 4. Send batch of events
api.updateCompaniesBatch(companies, function(error, response, context) {
  // Do Something
});
```

```java
MoesifAPIClient client = new MoesifAPIClient("my_application_id");
APIController api = getClient().getAPI();

List<CompanyModel> companies = new ArrayList<CompanyModel>();

CompanyModel companyA = new CompanyBuilder()
    .companyId("12345")
    .modifiedTime(new Date())
    .ipAddress("29.80.250.240")
    .sessionToken("di3hd982h3fubv3yfd94egf")
    .metadata(APIHelper.deserialize("{" +
        "\"company_domain\": \"my-service.com\"," +
        "\"string_field\": \"value_1\"," +
        "\"number_field\": 0," +
        "\"object_field\": {" +
          "\"field_1\": \"value_1\"," +
          "\"field_2\": \"value_2\"" +
        "}" +
      "}"))
    .build();
companies.add(companyA);

CompanyModel companyB = new CompanyBuilder()
    .companyId("56789")
    .modifiedTime(new Date())
    .ipAddress("21.80.11.242")
    .sessionToken("zceadckekvsfgfpsakvnbfouavsdvds")
    .metadata(APIHelper.deserialize("{" +
        "\"company_domain\": \"other-service.com\"," +
        "\"string_field\": \"value_1\"," +
        "\"number_field\": 1," +
        "\"object_field\": {" +
          "\"field_1\": \"value_1\"," +
          "\"field_2\": \"value_2\"" +
        "}" +
      "}"))
    .build();
companies.add(companyB);

// Asynchronous call to update companies
APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
      // Do something
    }

    public void onFailure(HttpContext context, Throwable error) {
      // Do something else
    }
};

api.updateCompaniesBatchAsync(companies, callBack);


//Synchronous call to update companies
api.updateCompaniesBatch(companies, callBack);
```

#### _company_id_ vs. _session_token_
Companies in Moesif are identified by two attributes: _company_id_ and _session_token_.

- A `company_id` is a __permanent__ and unique identifier to track a company across platforms and services.
It is recommended to set the Moesif company_id field with the id used in your own databases and services.

- A `session_token` may be __temporary__ or can expire unlike a company_id.
Examples include [JSON Web Tokens's](https://jwt.io/introduction/) (JWT), API keys, and session ids.
Moesif can _alias_ multiple session_token's to the same company_id. To create a new alias,
call the update company API with at least the company_id and session_token set.
The new session_token will be appended to the alias table.

Name | Required | Description
--------- | -------- | -----------
company_id | __true__ | Your application's `company_id` to identify this company.
modified_time | false | Last Modified Timestamp for the company in ISO 8601 format (Set automatically if not provided).
ip_address | false | Current IP address of the company, If not set, we use the IP address of the POST request.
metadata | false | A JSON Object consisting of any custom metadata to be stored with this company.

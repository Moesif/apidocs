## Companies

### Update a Company

**`POST https://api.moesif.net/v1/companies`**


Updates a company profile in Moesif. A company can be an enterprise account or a group of [users](#update-a-user) accessing the API.
Adding company metadata enables you to understand API usage across different cohorts, 
company demographics, acquisition channels, etc.

Any custom company properties can be stored via the `metadata` object. 
You can also set the company's website domain which enables Moesif to automatically your company profiles
with publicly available information.

#### Create vs update
If the company does not exist, Moesif will create a new one. 

If a company exists, the new company properties will be merged with the existing properties
recursively. This means you don't need to resend the entire company object if you are only 
updating a single field.

<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif 
and selecting API keys from top right menu.
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/companies</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  {
    "modified_time": "2019-06-20T04:45:42.914",
    "ip_address": "61.48.220.123",
    "session_token": "df32dkj32opxzfdmji4hf4fs98y18cx98q3yhwmnhcfx43f",
    "company_id": "12345",
    "company_domain": "acmeinc.com",
    "metadata": {
      "plan": "free",
      "mrr": 0,
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
var moesifapi = require('moesifapi');
var api = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";


// Only companyId is required.
// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
// metadata can be any custom object
var company = {
  companyId: '67890',
  companyDomain: 'acmeinc.com', // If domain is set, Moesif will enrich your profiles with publicly available info 
  campaign: { 
    utmSource: 'google',
    utmMedium: 'cpc', 
    utmCampaign: 'adwords',
    utmTerm: 'api+tooling',
    utmContent: 'landing'
  },
  metadata: {
    orgName: 'Acme, Inc',
    planName: 'Free Plan',
    dealStage: 'Lead',
    mrr: 24000,
    demographics: {
      alexaRanking: 500000,
      employeeCount: 47
    }
  }
};

api.updateCompany(company, function(error, response, context) {
  // Do Something
});
```

```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").api

# Only company_id is required.
# Campaign object is optional, but useful if you want to track ROI of acquisition channels
# See https://www.moesif.com/docs/api#update-a-company for campaign schema
# metadata can be any custom object
company = {
  'company_id': '12345',
  'company_domain': 'acmeinc.com', # If domain is set, Moesif will enrich your profiles with publicly available info 
  'campaign': {
    'utm_source': 'google',
    'utm_medium': 'cpc', 
    'utm_campaign': 'adwords',
    'utm_term': 'api+tooling',
    'utm_content': 'landing'
  },
  'metadata': {
    'org_name': 'Acme, Inc',
    'plan_name': 'Free',
    'deal_stage': 'Lead',
    'mrr': 24000,
    'demographics': {
        'alexa_ranking': 500000,
        'employee_count': 47
    },
  }
}

update_company = api_client.update_company(company)
```

```ruby
api_client = MoesifApi::MoesifAPIClient.new('eyJhcHAiOiIyMjM6MjUiLCJ2ZXIiOiIyLjAiLCJvcmciOiIxMTY6MjEiLCJpYXQiOjE1NzY2MjcyMDB9.DUEhLw1McpUto0kFn_1n7a5E7jE1PLOb7bmEbeV8arw').api

metadata => {
  :org_name => 'Acme, Inc',
  :plan_name => 'Free',
  :deal_stage => 'Lead',
  :mrr => 24000,
  :demographics => {
      :alexa_ranking => 500000,
      :employee_count => 47
  }
}

# Campaign object is optional, but useful if you want to track ROI of acquisition channels
# See https://www.moesif.com/docs/api#update-a-company for campaign schema
campaign = CampaignModel.new()
campaign.utm_source = "google"
campaign.utm_medium = "cpc"
campaign.utm_campaign = "adwords"
campaign.utm_term = "api+tooling"
campaign.utm_content = "landing"

# Only company_id is required.
# metadata can be any custom object
company = CompanyModel.new()
company.company_id = "67890"
company.company_domain = "acmeinc.com" # If domain is set, Moesif will enrich your profiles with publicly available info 
company.campaign = campaign
company.metadata = metadata

update_company = api_client.update_company(company)
```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.

require_once "vendor/autoload.php";

use MoesifApi\MoesifApiClient;
$client = new MoesifApiClient("eyJhcHAiOiIyMjM6MjUiLCJ2ZXIiOiIyLjAiLCJvcmciOiIxMTY6MjEiLCJpYXQiOjE1NzY2MjcyMDB9.DUEhLw1McpUto0kFn_1n7a5E7jE1PLOb7bmEbeV8arw");
$api = $client->getApi();

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
$campaign = new Models\CampaignModel();
$campaign->utmSource = "google";
$campaign->utmCampaign = "cpc";
$campaign->utmMedium = "adwords";
$campaign->utmContent = "api+tooling";
$campaign->utmTerm = "landing";


$company = new Models\CompanyModel();
$company->companyId = "67890";
$company->companyDomain = "acmeinc.com";
$company->campaign = $campaign;

// metadata can be any custom object
$company->metadata = array(
        "org_name" => "Acme, Inc",
        "plan_name" => "Free",
        "deal_stage" => "Lead",
        "mrr" => 24000,
        "demographics" => array(
            "alexa_ranking" => 500000,
            "employee_count" => 47
        )
    );

$api->updateCompany($company);
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("eyJhcHAiOiIyMjM6MjUiLCJ2ZXIiOiIyLjAiLCJvcmciOiIxMTY6MjEiLCJpYXQiOjE1NzY2MjcyMDB9.DUEhLw1McpUto0kFn_1n7a5E7jE1PLOb7bmEbeV8arw")

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
campaign := models.CampaignModel {
  UtmSource: "google",
  UtmMedium: "cpc", 
  UtmCampaign: "adwords",
  UtmTerm: "api+tooling",
  UtmContent: "landing",
}
  
// metadata can be any custom dictionary
metadata := map[string]interface{}{
  "org_name", "Acme, Inc",
  "plan_name", "Free",
  "deal_stage", "Lead",
  "mrr", 24000,
  "demographics", map[string]interface{}{
      "alexa_ranking", 500000,
      "employee_count", 47,
  },
}

// Prepare company model
company := models.CompanyModel{
    CompanyId:        "67890",  // The only required field is your company id
    CompanyDomain:    "acmeinc.com", // If domain is set, Moesif will enrich your profiles with publicly available info 
    Campaign:         &campaign,
    Metadata:         &metadata,
}

// Update Company asynchronously
apiClient.QueueCompany(&company, moesifOption)
```

```csharp
// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
Dictionary<string, object> campaign = new Dictionary<string, object>
{
    {"utm_source", "google"},
    {"utm_medium", "cpc"},
    {"utm_campaign", "adwords"},
    {"utm_term", "api+tooling"},
    {"utm_content", "landing"}
};

// metadata can be any custom dictionary
Dictionary<string, object> metadata = new Dictionary<string, object>
{
    {"org_name", "Acme, Inc"},
    {"plan_name", "Free"},
    {"deal_stage", "Lead"},
    {"mrr", 24000},
    {"demographics", new Dictionary<string, string> {
        {"alexa_ranking", 500000},
        {"employee_count", 47}
    }
};

Dictionary<string, object> company = new Dictionary<string, object>
{
    {"company_id", "67890"}, // The only required field is your company id
    {"company_domain", "acmeinc.com"}, // If domain is set, Moesif will enrich your profiles with publicly available info 
    {"campaign", campaign},
    {"metadata", metadata},
};

MoesifMiddleware moesifMiddleware = new MoesifMiddleware(RequestDelegate next, Dictionary<string, object> moesifOptions)

// Update the company asynchronously
moesifMiddleware.UpdateCompany(company);
```

```java
MoesifAPIClient client = new MoesifAPIClient("eyJhcHAiOiIyMjM6MjUiLCJ2ZXIiOiIyLjAiLCJvcmciOiIxMTY6MjEiLCJpYXQiOjE1NzY2MjcyMDB9.DUEhLw1McpUto0kFn_1n7a5E7jE1PLOb7bmEbeV8arw");

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
CampaignModel campaign = new CampaignBuilder()
        .utmSource("google")
        .utmCampaign("cpc")
        .utmMedium("adwords")
        .utmTerm("api+tooling")
        .utmContent("landing")
        .build();

// Only companyId is required
// metadata can be any custom object
CompanyModel company = new CompanyBuilder()
    .companyId("67890")
    .companyDomain("acmeinc.com") // If set, Moesif will enrich your profiles with publicly available info 
    .campaign(campaign) 
    .metadata(APIHelper.deserialize("{" +
        "\"org_name\": \"Acme, Inc\"," +
        "\"plan_name\": \"Free\"," +
        "\"deal_stage\": \"Lead\"," +
        "\"mrr\": 24000," +
        "\"demographics\": {" +
            "\"alexa_ranking\": 500000," +
            "\"employee_count\": 47" +
          "}" +
        "}"))
    .build();

// Asynchronous Call to update company
client.updateCompanyAsync(company, callBack);

// Synchronous Call to update company
client.updateCompany(company, callBack);
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

While optional, you can set the `company_domain` field which enables Moesif
to enrich your company profiles with stuff like company logo.

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
      "modified_time": "2019-06-20T04:45:42.914",
      "ip_address": "61.48.220.123",
      "session_token": "df32dkj32opxzfdmji4hf4fs98y18cx98q3yhwmnhcfx43f",
      "company_id": "12345",
      "company_domain": "acmeinc.com",
      "metadata": {
        "plan": "free",
        "mrr": 0,
        "custom_obj_field": {
            "sub_a": "value_a",
            "sub_b": "value_b"
        }
      }
    },
    {
      "modified_time": "2019-06-20T04:45:42.914",
      "ip_address": "61.48.220.129",
      "session_token": "e3red3odf43uf4ifrh80",
      "company_id": "67890",
      "company_domain": "example.com",
      "metadata": {
\       "plan": "pro",
        "mrr": 5000,
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
    company_domain: "acmeinc.com",
    metadata: {
      plan: "free",
      mrr: 0,
      custom_obj_field: {
          sub_a: "value_a",
          sub_b: "value_b"
      }
    }
};

var companyB = {
    companyId: "67890",
    sessionToken: "23jdf0oszfexfqe[lwjfiefovprewv4d8ayrcdx8nu2ng]zfeeadedefx43f",
    company_domain: "example.com",
    metadata: {
      plan: "pro",
      mrr: 5000,
      custom_obj_field: {
          sub_a: "value_a",
          sub_b: "value_b"
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
    .companyDomain("acmeinc.com")
    .metadata(APIHelper.deserialize("{" +
        "\"plan\": \"free\"," +
        "\"mrr\": 0," +
        "\"object_field\": {" +
          "\"field_1\": \"value_1\"," +
          "\"field_2\": \"value_2\"" +
        "}" +
      "}"))
    .build();
companies.add(companyA);

CompanyModel companyB = new CompanyBuilder()
    .companyId("67890")
    .modifiedTime(new Date())
    .ipAddress("21.80.11.242")
    .sessionToken("zceadckekvsfgfpsakvnbfouavsdvds")
    .companyDomain("example.com")
    .metadata(APIHelper.deserialize("{" +
        "\"plan\": \"pro\"," +
        "\"mrr\": 5000," +
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

## Companies

### Update a Company

**`POST https://api.moesif.net/v1/companies`**

Updates a company profile in Moesif. A company is your direct customer paying for your service. A company can have one or more [users](#update-a-user) and one or more [subscriptions](#update-a-subscription). [More info on the Moesif data model](https://www.moesif.com/docs/getting-started/overview/).

You can save custom properties to a company via the `metadata` object. While optional, it's also recommended to set the `company_domain`. When set, Moesif will enrich the company with publicly available information.

If company does not exist, a new one will be created.
If a company exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

#### Create vs update
If the company does not exist, Moesif will create a new one. 

If a company exists, the new company properties will be merged with the existing properties
recursively. This means you don't need to resend the entire company object if you are only 
updating a single field.

<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif 
and selecting API keys from bottom left menu.
</aside>

<blockquote class="lang-specific javascript--browser">
<b>If you call both identifyUser() and identifyCompany() in the same session, then Moesif 
will automatically associate the user with the company.
</b>
</blockquote>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/companies</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
{
  "company_id": "12345",
  "company_domain": "acmeinc.com",
  "metadata": {
    "org_name": "Acme, Inc",
    "plan_name": "Free",
    "deal_stage": "Lead",
    "mrr": 24000,
    "demographics": {
      "alexa_ranking": 500000,
      "employee_count": 47
    }
  }
}
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/companies \
  -d '{"company_id":"12345","company_domain":"acmeinc.com","metadata":{"org_name":"Acme, Inc","plan_name":"Free","deal_stage":"Lead","mrr":24000,"demographics":{"alexa_ranking":500000,"employee_count":47}}}' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'
```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";


// Only companyId is required.
// metadata can be any custom object
var company = {
  companyId: '67890',
  companyDomain: 'acmeinc.com', // If domain is set, Moesif will enrich your profiles with publicly available info 
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

apiClient.updateCompany(company, function(error, response, context) {
  // Do Something
});
```

```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").api

# Only company_id is required.
# metadata can be any custom object
company = {
  'company_id': '12345',
  'company_domain': 'acmeinc.com', # If domain is set, Moesif will enrich your profiles with publicly available info 
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
api_client = MoesifApi::MoesifAPIClient.new('YOUR_COLLECTOR_APPLICATION_ID').api

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

# Only company_id is required.
# metadata can be any custom object
company = CompanyModel.new()
company.company_id = "67890"
company.company_domain = "acmeinc.com" # If domain is set, Moesif will enrich your profiles with publicly available info 
company.metadata = metadata

update_company = api_client.update_company(company)
```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.

require_once "vendor/autoload.php";

use MoesifApi\MoesifApiClient;
$apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID")->getApi();


$company = new Models\CompanyModel();
$company->companyId = "67890";
$company->companyDomain = "acmeinc.com";

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

$apiClient->updateCompany($company);
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

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
    Metadata:         &metadata,
}

// Queue the company asynchronously
apiClient.QueueCompany(&company)

// Update the company synchronously
err := apiClient.UpdateCompany(&company)
```

```csharp
var apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID").Api;;

// metadata can be any custom dictionary
var metadata = new Dictionary<string, object>
{
    {"org_name", "Acme, Inc"},
    {"plan_name", "Free"},
    {"deal_stage", "Lead"},
    {"mrr", 24000},
    {"demographics", new Dictionary<string, object> {
        {"alexa_ranking", 500000},
        {"employee_count", 47}
    }
};

// Only company id is required
var company = new CompanyModel()
{
  CompanyId = "67890",
  CompanyDomain = "acmeinc.com", // If domain is set, Moesif will enrich your profiles with publicly available info 
	Metadata = metadata
};

// Update the company asynchronously
await apiClient.UpdateCompanyAsync(company);

// Update the company synchronously
apiClient.UpdateCompany(company);
```

```java
MoesifAPIClient apiClient = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").Api;

// Only companyId is required
// metadata can be any custom object
CompanyModel company = new CompanyBuilder()
    .companyId("67890")
    .companyDomain("acmeinc.com") // If set, Moesif will enrich your profiles with publicly available info 
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
apiClient.updateCompanyAsync(company, callBack);

// Synchronous Call to update company
apiClient.updateCompany(company, callBack);
```

```javascript--browser
var moesif = require('moesif-browser-js');

moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
  // add other option here.
});

// Only the first argument is a string containing the company id. 
// This is the only required field. 
//
// The second argument is a object used to store a company info like plan, 
// MRR, and company demographics.
// 
// The third argument is a string containing company website or email domain. 
// If set, Moesif will enrich your profiles with publicly available info.  
metadata = {
  orgName: 'Acme, Inc',
  planName: 'Free Plan',
  dealStage: 'Lead',
  mrr: 24000,
  demographics: {
    alexaRanking: 500000,
    employeeCount: 47
  }
};

moesif.identifyCompany('67890', metadata, 'acmeinc.com');
```

#### Company ids
Users in Moesif are identified via a `company_id` and should be a __permanent__ and robust identifier, like a database id. 
We recommend not using values that can change like website domain or company name.
The company_id matches the identifyCompany hook in your [API monitoring agent.](https://www.moesif.com/implementation)

Users can also be associated to a company by setting the `company_id` field when you update a user. This enables tracking API usage for 
individual users along with account-level usage. 

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
|company_id |string| __true__ | The unique identifier for this company.|
|company_domain |string| false | If set, Moesif will enrich your company profile with publicly available info|
|session_token |string| false | Associate this company with a new API key/session token. This field is _append only_ meaning when you set this field, previously set tokens are not removed.|
|modified_time |string(date-time)| false | Last modified time of company profile. Set automatically by Moesif if not provided.|
|ip_address |string| false | Set the company's last known ip address. Moesif sets this automatically from the user's most recent API activity if not provided.|
|campaign |object| false | [Referrer](https://en.wikipedia.org/wiki/HTTP_referer) and [UTM parameters](https://en.wikipedia.org/wiki/UTM_parameters) to track effectiveness of your acquisition channels. Set automatically by moesif-browser-js, but not with server side SDKs|
|<p style="margin-left:1.5em">utm_source</p>|string|false|UTM parameter that identifies which site sent the traffic|
|<p style="margin-left:1.5em">utm_medium</p>|string|false|UTM parameter that identifies what type of link was used, such as cost per click or email.|
|<p style="margin-left:1.5em">utm_campaign</p>|string|false|UTM parameter that identifies a specific product promotion or strategic campaign.|
|<p style="margin-left:1.5em">utm_term</p>|string|false|UTM parameter that identifies search terms.|
|<p style="margin-left:1.5em">utm_content</p>|string|false|UTM parameter that identifies what specifically was clicked to bring the company to the site, such as a banner ad or a text link.|
|<p style="margin-left:1.5em">referrer</p>|string|false|The referring URI before your domain.|
|<p style="margin-left:1.5em">referring_domain</p>|string|false|The referring domain of the page that linked to your domain.|
|<p style="margin-left:1.5em">gclid</p>|string|false|Google click Identifier to track Google Ads|
|metadata |object| false | An object containing company demographics or other properties you want to store with this profile.|

### Update Companies in Batch

**`POST https://api.moesif.net/v1/companies/batch`**

Updates a list of companies profile in Moesif.

A custom JSON object can be placed in the `metadata` object of each company
which will be stored as part of the company profile.

A company is your direct customer paying for your service. A company can have one or more [users](#update-a-user) and one or more [subscriptions](#update-a-subscription). [More info on the Moesif data model](https://www.moesif.com/docs/getting-started/overview/).

You can save custom properties to a company via the `metadata` object. While optional, it's also recommended to set the `company_domain`. When set, Moesif will enrich the company with publicly available information.

If company does not exist, a new one will be created.
If a company exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/companies/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
[
  {
    "company_id": "12345",
    "company_domain": "acmeinc.com",
    "metadata": {
      "org_name": "Acme, Inc",
      "plan_name": "Free",
      "deal_stage": "Lead",
      "mrr": 24000,
      "demographics": {
        "alexa_ranking": 500000,
        "employee_count": 47
      }
    }
  },
  {
    "company_id": "54321",
    "company_domain": "contoso.com",
    "metadata": {
      "org_name": "Contoso, Inc",
      "plan_name": "Paid",
      "deal_stage": "Lead",
      "mrr": 48000,
      "demographics": {
        "alexa_ranking": 500000,
        "employee_count": 47
      }
    }
  }
]
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/companies/batch \
  -d '[{"company_id":"12345","company_domain":"acmeinc.com","metadata":{"org_name":"Acme, Inc","plan_name":"Free","deal_stage":"Lead","mrr":24000,"demographics":{"alexa_ranking":500000,"employee_count":47}}},{"company_id":"54321","company_domain":"contoso.com","metadata":{"org_name":"Contoso, Inc","plan_name":"Paid","deal_stage":"Lead","mrr":48000,"demographics":{"alexa_ranking":500000,"employee_count":47}}}]' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'
```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";


// Only companyId is required.
// metadata can be any custom object
var companies = [{
    companyId: '67890',
    companyDomain: 'acmeinc.com', // If domain is set, Moesif will enrich your profiles with publicly available info 
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
  },
  {
    companyId: '09876',
    companyDomain: 'contoso.com', // If domain is set, Moesif will enrich your profiles with publicly available info 
    metadata: {
      orgName: 'Contoso, Inc',
      planName: 'Paid Plan',
      dealStage: 'Lead',
      mrr: 48000,
      demographics: {
        alexaRanking: 500000,
        employeeCount: 53
      }
    }
  }
]

apiClient.updateCompanies(companies, function(error, response, context) {
  // Do Something
});
```

```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").api

# Only company_id is required.
# metadata can be any custom object
companies = [{
  'company_id': '67890',
  'company_domain': 'acmeinc.com', # If domain is set, Moesif will enrich your profiles with publicly available info 
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
},
{
  'company_id': '09876',
  'company_domain': 'contoso.com', # If domain is set, Moesif will enrich your profiles with publicly available info 
  'metadata': {
    'org_name': 'Contoso, Inc',
    'plan_name': 'Paid',
    'deal_stage': 'Lead',
    'mrr': 48000,
    'demographics': {
        'alexa_ranking': 500000,
        'employee_count': 53
    },
  }
}]

update_company = api_client.update_companies(companies)
```

```ruby
api_client = MoesifApi::MoesifAPIClient.new('YOUR_COLLECTOR_APPLICATION_ID').api

companies = []

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

# Only company_id is required.
# metadata can be any custom object
company = CompanyModel.new()
company.company_id = "67890"
company.company_domain = "acmeinc.com" # If domain is set, Moesif will enrich your profiles with publicly available info 
company.metadata = metadata

companies << company

update_company = api_client.update_companies(companies)
```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.

require_once "vendor/autoload.php";

use MoesifApi\MoesifApiClient;
$apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID")->getApi();

$companyA = new Models\CompanyModel();
$companyA->companyId = "67890";
$companyA->companyDomain = "acmeinc.com";

// metadata can be any custom object
$companyB->metadata = array(
        "org_name" => "Acme, Inc",
        "plan_name" => "Free",
        "deal_stage" => "Lead",
        "mrr" => 24000,
        "demographics" => array(
            "alexa_ranking" => 500000,
            "employee_count" => 47
        )
    );

$companyB = new Models\CompanyModel();
$companyB->companyId = "67890";
$companyB->companyDomain = "acmeinc.com";

// metadata can be any custom object
$companyB->metadata = array(
        "org_name" => "Acme, Inc",
        "plan_name" => "Free",
        "deal_stage" => "Lead",
        "mrr" => 24000,
        "demographics" => array(
            "alexa_ranking" => 500000,
            "employee_count" => 47
        )
    );

$companies = array($companyA, $companyB)
$apiClient->updateCompaniesBatch(array($companies));
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

// List of Companies
var companies []*models.CompanyModel
  
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
companyA := models.CompanyModel{
	CompanyId:		  "67890",	// The only required field is your company id
	CompanyDomain:  "acmeinc.com", // If domain is set, Moesif will enrich your profiles with publicly available info 
	Metadata:		    &metadata,
}

companies = append(companies, &companyA)

// Queue the company asynchronously
apiClient.QueueCompanies(&companies)

// Update the company synchronously
err := apiClient.UpdateCompaniesBatch(&companies)
```

```csharp
var apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID").Api;;

var companies = new List<CompanyModel>();

// metadata can be any custom dictionary
var metadataA = new Dictionary<string, object>
{
    {"org_name", "Acme, Inc"},
    {"plan_name", "Free"},
    {"deal_stage", "Lead"},
    {"mrr", 24000},
    {"demographics", new Dictionary<string, object> {
        {"alexa_ranking", 500000},
        {"employee_count", 47}
    }
};

// Only company id is required
var companyA = new CompanyModel()
{
  CompanyId = "67890",
  CompanyDomain = "acmeinc.com", // If domain is set, Moesif will enrich your profiles with publicly available info 
	Metadata = metadata
};

// metadata can be any custom dictionary
var metadataB = new Dictionary<string, object>
{
    {"org_name", "Contoso, Inc"},
    {"plan_name", "Paid"},
    {"deal_stage", "Lead"},
    {"mrr", 48000},
    {"demographics", new Dictionary<string, object> {
        {"alexa_ranking", 500000},
        {"employee_count", 53}
    }
};

// Only company id is required
var companyB = new CompanyModel()
{
  CompanyId = "09876",
  CompanyDomain = "contoso.com", // If domain is set, Moesif will enrich your profiles with publicly available info 
	Metadata = metadata
};


companies.Add(companyA);
companies.Add(companyB);

// Update the companies asynchronously
await apiClient.UpdateCompaniesBatchAsync(companies);

// Update the companies synchronously
apiClient.UpdateCompaniesBatch(companies);
```

```java
MoesifAPIClient apiClient = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").Api;

// Only companyId is required
// metadata can be any custom object
CompanyModel company = new CompanyBuilder()
    .companyId("67890")
    .companyDomain("acmeinc.com") // If set, Moesif will enrich your profiles with publicly available info 
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
apiClient.updateCompanyAsync(company, callBack);

// Synchronous Call to update company
apiClient.updateCompany(company, callBack);
```

<blockquote class="lang-specific javascript--browser">
<b>Since this is a client side SDK, you cannot save a batch of companies with moesif-browser-js.</b>
</blockquote>

#### Company ids
Users in Moesif are identified via a `company_id` and should be a __permanent__ and robust identifier, like a database id. 
We recommend not using values that can change like website domain or company name.
The company_id matches the identifyCompany hook in your [API monitoring agent.](https://www.moesif.com/implementation)

Users can also be associated to a company by setting the `company_id` field when you update a user. This enables tracking API usage for 
individual users along with account-level usage. 

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
|company_id |string| __true__ | The unique identifier for this company.|
|company_domain |string| false | If set, Moesif will enrich your company profile with publicly available info|
|session_token |string| false | Associate this company with a new API key/session token. This field is _append only_ meaning when you set this field, previously set tokens are not removed.|
|modified_time |string(date-time)| false | Last modified time of company profile. Set automatically by Moesif if not provided.|
|ip_address |string| false | Set the company's last known ip address. Moesif sets this automatically from the user's most recent API activity if not provided.|
|campaign |object| false | [Referrer](https://en.wikipedia.org/wiki/HTTP_referer) and [UTM parameters](https://en.wikipedia.org/wiki/UTM_parameters) to track effectiveness of your acquisition channels. Set automatically by moesif-browser-js, but not with server side SDKs|
|<p style="margin-left:1.5em">utm_source</p>|string|false|UTM parameter that identifies which site sent the traffic|
|<p style="margin-left:1.5em">utm_medium</p>|string|false|UTM parameter that identifies what type of link was used, such as cost per click or email.|
|<p style="margin-left:1.5em">utm_campaign</p>|string|false|UTM parameter that identifies a specific product promotion or strategic campaign.|
|<p style="margin-left:1.5em">utm_term</p>|string|false|UTM parameter that identifies search terms.|
|<p style="margin-left:1.5em">utm_content</p>|string|false|UTM parameter that identifies what specifically was clicked to bring the company to the site, such as a banner ad or a text link.|
|<p style="margin-left:1.5em">referrer</p>|string|false|The referring URI before your domain.|
|<p style="margin-left:1.5em">referring_domain</p>|string|false|The referring domain of the page that linked to your domain.|
|<p style="margin-left:1.5em">gclid</p>|string|false|Google click Identifier to track Google Ads|
|metadata |object| false | An object containing company demographics or other properties you want to store with this profile.|
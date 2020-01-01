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
  "company_id": "12345",
  "company_domain": "acmeinc.com",
  "campaign": {
    "utm_source": "google",
    "utm_medium": "cpc",
    "utm_campaign": "adwords",
    "utm_term": "api+tooling",
    "utm_content": "landing"
  },
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
curl -X GET https://api.moesif.net/v1/companies \
  -d '{"company_id":"12345","company_domain":"acmeinc.com","campaign":{"utm_source":"google","utm_medium":"cpc","utm_campaign":"adwords","utm_term":"api+tooling","utm_content":"landing"},"metadata":{"org_name":"Acme, Inc","plan_name":"Free","deal_stage":"Lead","mrr":24000,"demographics":{"alexa_ranking":500000,"employee_count":47}}}' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

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

apiClient.updateCompany(company, function(error, response, context) {
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
$apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID")->getApi();

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

$apiClient->updateCompany($company);
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

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

// Queue the company asynchronously
apiClient.QueueCompany(&company)

// Update the company synchronously
err := apiClient.UpdateCompany(&company)
```

```csharp
var apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID").Api;;

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#companies for campaign schema
var campaign = new CampaignModel()
{
	UtmSource = "google",
	UtmMedium = "cpc"
  UtmCampaign = "adwords"
	UtmTerm = "api+tooling"
	UtmContent = "landing"
};

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
  Campaign = campaign,
	Metadata = metadata
};

// Update the company asynchronously
await apiClient.UpdateCompanyAsync(company);

// Update the company synchronously
apiClient.UpdateCompany(company);
```

```java
MoesifAPIClient apiClient = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").Api;

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
apiClient.updateCompanyAsync(company, callBack);

// Synchronous Call to update company
apiClient.updateCompany(company, callBack);
```

<blockquote class="lang-specific javascript--browser">
<b>Only the company id and metadata object need to be set. All other fields like 
the company's IP address and converting campaign are captured from browser context automatically.</b>
</blockquote>

```javascript--browser
var moesif = require('moesif-browser-js');

moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
  // add other option here.
});

// Only the first argument is a string containing the company id. This is the only required field. 
// The second argument is a object used to store a company info like plan, MRR, and company demographics.
// The third argument is a string containing company website or email domain. If set, Moesif will enrich your profiles with publicly available info.  
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

#### Company id vs. session token
Companies in Moesif are identified by two attributes: _company_id_ and _session_token_.

- A `company_id` is a unique identifier for the company or enterprise account performing the activity.
Company Ids are a __permanent__ and robust identifier, like a database id or permanent [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
We recommend using database ids instead of the company's name or website domain, because database ids never change.

- A `session_token` is an API key or [JSON Web Tokens's](https://jwt.io/introduction/) (JWT) that expires after a short duration.
Unlike company ids, session tokens, are __transient__. Thus, the same company can be associated with many API keys and tokens over
the lifetime of the company. 

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
    "company_id": "12345",
    "company_domain": "acmeinc.com",
    "campaign": {
      "utm_source": "google",
      "utm_medium": "cpc",
      "utm_campaign": "adwords",
      "utm_term": "api+tooling",
      "utm_content": "landing"
    },
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
    "campaign": {
      "utm_source": "facebook",
      "utm_medium": "dislay",
      "utm_campaign": "retargeting"
    },
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
curl -X GET https://api.moesif.net/v1/events/batch \
  -d '[{"company_id":"12345","company_domain":"acmeinc.com","campaign":{"utm_source":"google","utm_medium":"cpc","utm_campaign":"adwords","utm_term":"api+tooling","utm_content":"landing"},"metadata":{"org_name":"Acme, Inc","plan_name":"Free","deal_stage":"Lead","mrr":24000,"demographics":{"alexa_ranking":500000,"employee_count":47}}},{"company_id":"54321","company_domain":"contoso.com","campaign":{"utm_source":"facebook","utm_medium":"dislay","utm_campaign":"retargeting"},"metadata":{"org_name":"Contoso, Inc","plan_name":"Paid","deal_stage":"Lead","mrr":48000,"demographics":{"alexa_ranking":500000,"employee_count":47}}}]' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";


// Only companyId is required.
// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
// metadata can be any custom object
var companies = [{
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
  },
  {
    companyId: '09876',
    companyDomain: 'contoso.com', // If domain is set, Moesif will enrich your profiles with publicly available info 
    campaign: { 
      utmSource: 'facebook',
      utmMedium: 'cpc', 
      utmCampaign: 'retargeting'
    },
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
# Campaign object is optional, but useful if you want to track ROI of acquisition channels
# See https://www.moesif.com/docs/api#update-a-company for campaign schema
# metadata can be any custom object
companies = [{
  'company_id': '67890',
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
},
{
  'company_id': '09876',
  'company_domain': 'contoso.com', # If domain is set, Moesif will enrich your profiles with publicly available info 
  'campaign': {
    'utm_source': 'facebook',
    'utm_medium': 'cpc', 
    'utm_campaign': 'retargeting'
  },
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

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-company for campaign schema
$campaignA = new Models\CampaignModel();
$campaignA->utmSource = "google";
$campaignA->utmCampaign = "cpc";
$campaignA->utmMedium = "adwords";
$campaignA->utmContent = "api+tooling";
$campaignA->utmTerm = "landing";


$companyA = new Models\CompanyModel();
$companyA->companyId = "67890";
$companyA->companyDomain = "acmeinc.com";
$companyA->campaign = $campaign;

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
$companyB->campaign = $campaign;

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
companyA := models.CompanyModel{
	CompanyId:		  "67890",	// The only required field is your company id
	CompanyDomain:  "acmeinc.com", // If domain is set, Moesif will enrich your profiles with publicly available info 
	Campaign: 		  &campaign,
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

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#companies for campaign schema
var campaignA = new CampaignModel()
{
	UtmSource = "google",
	UtmMedium = "cpc"
  UtmCampaign = "adwords"
	UtmTerm = "api+tooling"
	UtmContent = "landing"
};

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
  Campaign = campaign,
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
  Campaign = campaign,
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
apiClient.updateCompanyAsync(company, callBack);

// Synchronous Call to update company
apiClient.updateCompany(company, callBack);
```

<blockquote class="lang-specific javascript--browser">
<b>Since this is a client side SDK, you cannot save a batch of companies with moesif-browser-js.</b>
</blockquote>

#### Company id vs. session token
Companies in Moesif are identified by two attributes: _company_id_ and _session_token_.

- A `company_id` is a unique identifier for the company or enterprise account performing the activity.
Company Ids are a __permanent__ and robust identifier, like a database id or permanent [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
We recommend using database ids instead of the company's name or website domain, because database ids never change.

- A `session_token` is an API key or [JSON Web Tokens's](https://jwt.io/introduction/) (JWT) that expires after a short duration.
Unlike company ids, session tokens, are __transient__. Thus, the same company can be associated with many API keys and tokens over
the lifetime of the company. 

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
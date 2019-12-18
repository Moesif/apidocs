## Users

### Update a User

**`POST https://api.moesif.net/v1/users`**

Updates an end user profile in Moesif.

Custom user properties such as user demographic info can be stored via the `metadata` object.

We’ve reserved some fields names that have semantic meanings for users, and we handle them in special ways. 
For example, we expect email to be a string containing the user’s email address. Moesif uses this field
to look up the user's Gravatar or enrich with company info if it's a work email. 

Reserved fields include:
  - email
  - name
  - first_name
  - last_name
  - phone
  - photo_url

If the user does not exist, Moesif will create a new one. 
If a user exists, it will be merged with the existing fields
recursively. This means you don't need to resend the entire user object if just 
updating a single field.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/users</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
  {
    "user_id": "12345",
    "company_id": "67890",
    "session_token": "XXXXXXXXXX",
    "campaign": {
      "utm_source": "google",
      "utm_medium": "cpc", 
      "utm_campaign": "adwords",
      "utm_term": "api+tooling",
      "utm_content": "landing"
    },
    "metadata": {
      "email": "john@acmeinc.com",
      "first_name": "John",
      "last_name": "Doe",
      "title": "Software Engineer",
      "sales_info": {
          "stage": "Customer",
          "lifetime_value": 24000,
          "account_owner": "mary@contoso.com"
      }
    }
  }
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/users \
  -d '{"user_id":"12345","company_id":"67890","session_token":"XXXXXXXXXX","campaign":{"utm_source":"google","utm_medium":"cpc","utm_campaign":"adwords","utm_term":"api+tooling","utm_content":"landing"},"metadata":{"email":"john@acmeinc.com","first_name":"John","last_name":"Doe","title":"Software Engineer","sales_info":{"stage":"Customer","lifetime_value":24000,"account_owner":"mary@contoso.com"}}}' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'
```

```javascript--nodejs
// 1. Import the module
var moesifapi = require('moesifapi');
var api = moesifapi.ApiController;

// 2. Configure the ApplicationId
var config = moesifapi.configuration;
config.ApplicationId = "my_application_id";

// Only userId is required.
// metadata can be any custom object
var user = {
  userId: '12345',
  companyId: '67890'
  campaign: {
    utmSource: 'google',
    utmMedium: 'cpc', 
    utmCampaign: 'adwords',
    utmTerm: 'api+tooling',
    utmContent: 'landing'
  },
  metadata: {
    email: 'john@acmeinc.com',
    firstName: 'John',
    lastName: 'Doe',
    title: 'Software Engineer',
    salesInfo: {
        stage: 'Customer',
        lifetimeValue: 24000,
        accountOwner: 'mary@contoso.com',
    },
  }
};
// 4. Create a single user
api.updateUser(new moesifapi.UserModel(user), function(error, response, context) {
  // Do Something
});
```

```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("Your Moesif Application Id").api

# Only user_id is required.
# Campaign object is optional, but useful if you want to track ROI of acquisition channels
# See https://www.moesif.com/docs/api#users for campaign schema
# metadata can be any custom object
user = {
  'user_id': '12345',
  'company_id': '67890', # If set, associate user with a company object
  'campaign': {
    'utm_source': 'google',
    'utm_medium': 'cpc', 
    'utm_campaign': 'adwords',
    'utm_term': 'api+tooling',
    'utm_content': 'landing'
  },
  'metadata': {
    'email': 'john@acmeinc.com',
    'first_name': 'John',
    'last_name': 'Doe',
    'title': 'Software Engineer',
    'sales_info': {
        'stage': 'Customer',
        'lifetime_value': 24000,
        'account_owner': 'mary@contoso.com'
    },
  }
}

update_user = api_client.update_user(user)
```

```ruby
api_client = MoesifApi::MoesifAPIClient.new('Your Moesif Application Id').api

metadata => {
  :email => 'john@acmeinc.com',
  :first_name => 'John',
  :last_name => 'Doe',
  :title => 'Software Engineer',
  :salesInfo => {
      :stage => 'Customer',
      :lifetime_value => 24000,
      :accountOwner => 'mary@contoso.com',
  }
}

# Campaign object is optional, but useful if you want to track ROI of acquisition channels
# See https://www.moesif.com/docs/api#users for campaign schema
campaign = CampaignModel.new()
campaign.utm_source = "google"
campaign.utm_medium = "cpc"
campaign.utm_campaign = "adwords"
campaign.utm_term = "api+tooling"
campaign.utm_content = "landing"

# Only user_id is required.
# metadata can be any custom object
user = UserModel.new()
user.user_id = "12345"
user.company_id = "67890" # If set, associate user with a company object
user.campaign = campaign
user.metadata = metadata

update_user = api_client.update_user(user)
```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.
require_once "vendor/autoload.php";

// Import the SDK client in your project:
use MoesifApi\MoesifApiClient;
$client = new MoesifApiClient("Your Moesif Application Id");
$api = $client->getApi();

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#update-a-user for campaign schema
$campaign = new Models\CampaignModel();
$campaign->utmSource = "google";
$campaign->utmCampaign = "cpc";
$campaign->utmMedium = "adwords";
$campaign->utmContent = "api+tooling";
$campaign->utmTerm = "landing";


$user = new Models\UserModel();
$user->userId = "12345";
$user->companyId = "67890"; // If set, associate user with a company object
$user->campaign = $campaign;

// metadata can be any custom object
$user->metadata = array(
        "email" => "john@acmeinc.com",
        "first_name" => "John",
        "last_name" => "Doe",
        "title" => "Software Engineer",
        "sales_info" => array(
            "stage" => "Customer",
            "lifetime_value" => 24000,
            "account_owner" => "mary@contoso.com"
        )
    );

$api->updateUser($user);
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("Your Moesif Application Id")

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#users for campaign schema
campaign := models.CampaignModel {
  UtmSource: "google",
  UtmMedium: "cpc", 
  UtmCampaign: "adwords",
  UtmTerm: "api+tooling",
  UtmContent: "landing",
}
  
// metadata can be any custom dictionary
metadata := map[string]interface{}{
  "email", "john@acmeinc.com",
  "first_name", "John",
  "last_name", "Doe",
  "title", "Software Engineer",
  "sales_info", map[string]interface{}{
      "stage", "Customer",
      "lifetime_value", 24000,
      "account_owner", "mary@contoso.com",
  },
}

// Only UserId is required
user := models.UserModel{
  UserId:  "12345",
  CompanyId:  "67890", // If set, associate user with a company object
  Campaign:  &campaign,
  Metadata:  &metadata,
}

// Update the user asynchronously
err := apiClient.QueueUser(&user)
```

```csharp
// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#users for campaign schema
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
    {"email", "john@acmeinc.com"},
    {"first_name", "John"},
    {"last_name", "Doe"},
    {"title", "Software Engineer"},
    {"sales_info", new Dictionary<string, string> {
        {"stage", "Customer"},
        {"lifetime_value", 24000},
        {"account_owner", "mary@contoso.com"}
    }
};

// Only user_id is required
Dictionary<string, object> user = new Dictionary<string, object>
{
    {"user_id", "12345"},
    {"company_id", "67890"}, // If set, associate user with a company object
    {"campaign", campaign},
    {"metadata", metadata},
};

MoesifMiddleware moesifMiddleware = new MoesifMiddleware(RequestDelegate next, Dictionary<string, object> moesifOptions)

// Update the user asynchronously
moesifMiddleware.UpdateUser(user);
```

```java
MoesifAPIClient client = new MoesifAPIClient("Your Moesif Application Id");

// Campaign object is optional, but useful if you want to track ROI of acquisition channels
// See https://www.moesif.com/docs/api#users for campaign schema
CampaignModel campaign = new CampaignBuilder()
        .utmSource("google")
        .utmCampaign("cpc")
        .utmMedium("adwords")
        .utmTerm("api+tooling")
        .utmContent("landing")
        .build();

// Only userId is required
// metadata can be any custom object
UserModel user = new UserBuilder()
    .userId("12345")
    .companyId("67890") // If set, associate user with a company object
    .campaign(campaign)
    .metadata(APIHelper.deserialize("{" +
        "\"email\": \"johndoe@acmeinc.com\"," +
        "\"first_name\": \"John\"," +
        "\"last_name\": \"Doe\"," +
        "\"title\": \"Software Engineer\"," +
        "\"sales_info\": {" +
            "\"stage\": \"Customer\"," +
            "\"lifetime_value\": 24000," +
            "\"account_owner\": \"mary@contoso.com\"" +
          "}" +
        "}"))
    .build();

// Synchronous Call to update user
client.updateUser(user);

// Asynchronous Call to update user
client.updateUserAsync(user, callBack);
```

#### _user_id_ vs. _session_token_
Users in Moesif are identified by two attributes: _user_id_ and _session_token_.

- A `user_id` is a __permanent__ and unique identifier to track a user across platforms and services.
It is recommended to set the Moesif user_id field with the id used in your own databases and services.

- A `session_token` may be __temporary__ or can expire unlike a user_id.
Examples include [JSON Web Tokens's](https://jwt.io/introduction/) (JWT), API keys, and session ids.
Moesif can _alias_ multiple session_token's to the same user_id. To create a new alias,
call the update user API with at least the user_id and session_token set.
The new session_token will be appended to the alias table.

Name | Required | Description
--------- | -------- | -----------
user_id | __true__ | Your application's `user_id` to identify this user.
modified_time | false | Last Modified Timestamp for the user in ISO 8601 format (Set automatically if not provided).
ip_address | false | Current IP address of the user, If not set, we use the IP address of the POST request.
session_token | false | Current end user session or API token such as a JWT. Setting this field does not remove old session tokens previously stored. Instead, Moesif will append the new value to an alias table for this user_id.
user_agent_string | false | If you want Moesif to parse a user agent string, you can do so via `user_agent_string`.
metadata | false | A JSON Object consisting of any custom metadata to be stored with this user.

### Update Users in Batch

**`POST https://api.moesif.net/v1/users/batch`**

Updates a list of end user profile in Moesif.

Custom user properties such as user demographic info can be stored via the `metadata` object.

We’ve reserved some fields names that have semantic meanings for users, and we handle them in special ways. 
For example, we expect email to be a string containing the user’s email address. Moesif uses this field
to look up the user's Gravatar or enrich with company info if it's a work email. 

Reserved fields include:
  - email
  - name
  - first_name
  - last_name
  - phone
  - photo_url

If the user does not exist, Moesif will create a new one. 
If a user exists, it will be merged with the existing fields
recursively. This means you don't need to resend the entire user object if just 
updating a single field.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
<code><b>POST</b> https://api.moesif.net/v1/users/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```yaml
[
  {
    "user_id": "12345",
    "company_id": "67890",
    "session_token": "XXXXXXXXXX",
    "campaign": {
      "utm_source": "google",
      "utm_medium": "cpc",
      "utm_campaign": "adwords",
      "utm_term": "api+tooling",
      "utm_content": "landing"
    },
    "metadata": {
      "email": "john@acmeinc.com",
      "first_name": "John",
      "last_name": "Doe",
      "title": "Software Engineer",
      "sales_info": {
        "stage": "Customer",
        "lifetime_value": 24000,
        "account_owner": "mary@contoso.com"
      }
    }
  },
  {
    "user_id": "54321",
    "company_id": "67890",
    "session_token": "XXXXXXXXXX",
    "campaign": {
      "utm_source": "google",
      "utm_medium": "cpc",
      "utm_campaign": "adwords",
      "utm_term": "api+tooling",
      "utm_content": "landing"
    },
    "metadata": {
      "email": "mary@acmeinc.com",
      "first_name": "Mary",
      "last_name": "Jane",
      "title": "Software Engineer",
      "sales_info": {
        "stage": "Customer",
        "lifetime_value": 24000,
        "account_owner": "mary@contoso.com"
      }
    }
  }
]
```

```shell
# You can also use wget
curl -X GET https://api.moesif.net/v1/events/batch \
  -d '[{"user_id":"12345","company_id":"67890","session_token":"XXXXXXXXXX","campaign":{"utm_source":"google","utm_medium":"cpc","utm_campaign":"adwords","utm_term":"api+tooling","utm_content":"landing"},"metadata":{"email":"john@acmeinc.com","first_name":"John","last_name":"Doe","title":"Software Engineer","sales_info":{"stage":"Customer","lifetime_value":24000,"account_owner":"mary@contoso.com"}}},{"user_id":"54321","company_id":"67890","session_token":"XXXXXXXXXX","campaign":{"utm_source":"google","utm_medium":"cpc","utm_campaign":"adwords","utm_term":"api+tooling","utm_content":"landing"},"metadata":{"email":"mary@acmeinc.com","first_name":"Mary","last_name":"Jane","title":"Software Engineer","sales_info":{"stage":"Customer","lifetime_value":24000,"account_owner":"mary@contoso.com"}}}]' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```javascript--nodejs
// 1. Import the module
var moesifapi = require('moesifapi');
var api = moesifapi.ApiController;

// 2. Configure the ApplicationId
var config = moesifapi.configuration;
config.ApplicationId = "my_application_id";

// 3. Generate a User Model
var userA = {
  userId: '12345',
  companyId: '67890'
  campaign: {
    utmSource: 'google',
    utmMedium: 'cpc', 
    utmCampaign: 'adwords',
    utmTerm: 'api+tooling',
    utmContent: 'landing'
  },
  metadata: {
    email: 'john@acmeinc.com',
    firstName: 'John',
    lastName: 'Doe',
    title: 'Software Engineer',
    salesInfo: {
        stage: 'Customer',
        lifetimeValue: 24000,
        accountOwner: 'mary@contoso.com',
    },
  }
};
};

var userB = {
  userId: '67890',
  companyId: '67890'
  campaign: {
    utmSource: 'google',
    utmMedium: 'cpc', 
    utmCampaign: 'adwords',
    utmTerm: 'api+tooling',
    utmContent: 'landing'
  },
  metadata: {
    email: 'mary@contoso.com',
    firstName: 'Mary',
    lastName: 'Jane',
    title: 'Software Engineer',
    salesInfo: {
        stage: 'Customer',
        lifetimeValue: 24000,
        accountOwner: 'mary@contoso.com',
    },
  }
};

var users = [
  new moesifapi.UserModel(userA),
  new moesifapi.UserModel(userB)
];

// 4. Send batch of users
api.updateUsersBatch(users, function(error, response, context) {
  // Do Something
});
```


```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("Your Moesif Application Id").api

userA = {
  'user_id': '12345',
  'company_id': '67890', # If set, associate user with a company object
  'metadata': {
    'email': 'john@acmeinc.com',
    'first_name': 'John',
    'last_name': 'Doe',
    'title': 'Software Engineer',
    'sales_info': {
        'stage': 'Customer',
        'lifetime_value': 24000,
        'account_owner': 'mary@contoso.com'
    },
  }
}

userB = {
  'user_id': '54321',
  'company_id': '67890', # If set, associate user with a company object
  'metadata': {
    'email': 'mary@acmeinc.com',
    'first_name': 'Mary',
    'last_name': 'Jane',
    'title': 'Software Engineer',
    'sales_info': {
        'stage': 'Customer',
        'lifetime_value': 48000,
        'account_owner': 'mary@contoso.com'
    },
  }
}
update_users = api_client.update_users_batch([userA, userB])
```

```ruby
api_client = MoesifApi::MoesifAPIClient.new('Your Moesif Application Id').api

users = []

metadata => {
  :email => 'john@acmeinc.com',
  :first_name => 'John',
  :last_name => 'Doe',
  :title => 'Software Engineer',
  :salesInfo => {
      :stage => 'Customer',
      :lifetime_value => 24000,
      :accountOwner => 'mary@contoso.com',
  }
}

# Campaign object is optional, but useful if you want to track ROI of acquisition channels
# See https://www.moesif.com/docs/api#users for campaign schema
campaign = CampaignModel.new()
campaign.utm_source = "google"
campaign.utm_medium = "cpc"
campaign.utm_campaign = "adwords"
campaign.utm_term = "api+tooling"
campaign.utm_content = "landing"

# Only user_id is required.
# metadata can be any custom object
user = UserModel.new()
user.user_id = "12345"
user.company_id = "67890" # If set, associate user with a company object
user.campaign = campaign
user.metadata = metadata

users << user

api_client = api_controller.update_users_batch(user_model)
```

```php
use MoesifApi\MoesifApiClient;
$client = new MoesifApiClient("Your Moesif Application Id");
$api = $client->getApi();

$userA = new Models\UserModel();
$userA->userId = "12345";
$userA->companyId = "67890"; // If set, associate user with a company object
$userA->campaign = $campaign;

// metadata can be any custom object
$userA->metadata = array(
        "email" => "john@acmeinc.com",
        "first_name" => "John",
        "last_name" => "Doe",
        "title" => "Software Engineer",
        "sales_info" => array(
            "stage" => "Customer",
            "lifetime_value" => 24000,
            "account_owner" => "mary@contoso.com"
        )
    );

$users = array($userA)
$api->updateUsersBatch($user);
```

```csharp
var client = new MoesifApiClient("Your Moesif Application Id").Api;

var usersBatch = new List<UserModel>();

Dictionary<string, object> metadataA = new Dictionary<string, object>
{
    {"email", "john@acmeinc.com"},
    {"first_name", "John"},
    {"last_name", "Doe"},
    {"title", "Software Engineer"},
    {"sales_info", new Dictionary<string, string> {
        {"stage", "Customer"},
        {"lifetime_value", 24000},
        {"account_owner", "mary@contoso.com"}
    }
};

// Only user_id is required
var userA = new UserModel()
{
	UserId = "12345",
  CampaignId = "67890", // If set, associate user with a company object
	Metadata = metadataA
};

Dictionary<string, object> metadataB = new Dictionary<string, object>
{
    {"email", "mary@acmeinc.com"},
    {"first_name", "Mary"},
    {"last_name", "Jane"},
    {"title", "Software Engineer"},
    {"sales_info", new Dictionary<string, string> {
        {"stage", "Customer"},
        {"lifetime_value", 24000},
        {"account_owner", "mary@contoso.com"}
    }
};

// Only user_id is required
var userB = new UserModel()
{
	UserId = "54321",
  CampaignId = "67890",
	Metadata = metadataA
};


usersBatch.Add(userA);
usersBatch.Add(userB);

apiClient.UpdateUsersBatchAsync(userModel);
```

```java
List<UserModel> users = new ArrayList<UserModel>();

UserModel userA = new UserBuilder()
        .userId("12345")
        .companyId("67890")
        .campaign(campaign)
        .metadata(APIHelper.deserialize("{" +
            "\"email\": \"johndoe@acmeinc.com\"," +
            "\"first_name\": \"John\"," +
            "\"last_name\": \"Doe\"," +
            "\"title\": \"Software Engineer\"," +
            "\"sales_info\": {" +
                "\"stage\": \"Customer\"," +
                "\"lifetime_value\": 24000," +
                "\"account_owner\": \"mary@contoso.com\"" +
              "}" +
            "}"))
		.build();
users.add(userA);

UserModel userB = new UserBuilder()
        .userId("54321")
        .companyId("67890")
        .campaign(campaign)
        .metadata(APIHelper.deserialize("{" +
            "\"email\": \"johndoe@acmeinc.com\"," +
            "\"first_name\": \"John\"," +
            "\"last_name\": \"Doe\"," +
            "\"title\": \"Software Engineer\"," +
            "\"sales_info\": {" +
                "\"stage\": \"Customer\"," +
                "\"lifetime_value\": 24000," +
                "\"account_owner\": \"mary@contoso.com\"" +
              "}" +
            "}"))
		.build();
users.add(userB);

// Asynchronous call to update users
APICallBack<Object> callBack = new APICallBack<Object>() {
    public void onSuccess(HttpContext context, Object response) {
      // Do something
    }

    public void onFailure(HttpContext context, Throwable error) {
      // Do something else
    }
};

api.updateUsersBatchAsync(users, callBack);


//Synchronous call to update users
api.updateUsersBatch(users, callBack);
```

#### _user_id_ vs. _session_token_
Users in Moesif are identified by two attributes: _user_id_ and _session_token_.

- A `user_id` is a __permanent__ and unique identifier to track a user across platforms and services.
It is recommended to set the Moesif user_id field with the id used in your own databases and services.

- A `session_token` may be __temporary__ or can expire unlike a user_id.
Examples include [JSON Web Tokens's](https://jwt.io/introduction/) (JWT), API keys, and session ids.
Moesif can _alias_ multiple session_token's to the same user_id. To create a new alias,
call the update user API with at least the user_id and session_token set.
The new session_token will be appended to the alias table.

Name | Required | Description
--------- | -------- | -----------
user_id | __true__ | Your application's `user_id` to identify this user.
modified_time | false | Last Modified Timestamp for the user in ISO 8601 format (Set automatically if not provided).
ip_address | false | Current IP address of the user, If not set, we use the IP address of the POST request.
session_token | false | Current end user session or API token such as a JWT. Setting this field does not remove old session tokens previously stored. Instead, Moesif will append the new value to an alias table for this user_id.
user_agent_string | false | If you want Moesif to parse a user agent string, you can do so via `user_agent_string`.
metadata | false | A JSON Object consisting of any custom metadata to be stored with this user.

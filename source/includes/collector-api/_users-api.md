## Users

### Update a User

**`POST https://api.moesif.net/v1/users`**

Updates a user profile in Moesif, which is typically a single person or API consumer. For updating customer profiles such as for monetization use cases, see [companies](#companies) and [subscriptions](#subscriptions).

You can also track users automatically using a Moesif client integration like [moesif-browser-js](https://www.moesif.com/implementation/track-user-behaviors-with-browser?platform=browser) or Segment.

User properties can be stored via the `metadata` object.

We’ve reserved some `metadata` fields that have semantic meanings for users, and we handle them in special ways. 
For example, we expect email to be a string containing the user’s email address which is used to look up a user's demographic enrichment data and send [behavioral emails](https://www.moesif.com/features/user-behavioral-emails).

Reserved metadata fields include:

  - email
  - name (Which can contain both first and last name)
  - first_name
  - last_name
  - phone
  - photo_url

#### Create vs update
If the user does not exist, Moesif will create a new one. 

If a user exists, the new user properties will be merged with the existing properties
recursively. This means you don't need to resend the entire user object if you are only 
updating a single field.

<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif 
and selecting API keys from bottom left menu.
</aside>

<blockquote class="lang-specific javascript--browser">
<b>Do not call identifyUser for anonymous visitors. The SDK automatically tracks these via a generated anonymousId in localStorage. Once you call identifyUser, Moesif automatically merges multiple user profiles if needed.</b>
</blockquote>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/users</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
  {
    "user_id": "12345",
    "company_id": "67890",
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
  -d '{"user_id":"12345","company_id":"67890","metadata":{"email":"john@acmeinc.com","first_name":"John","last_name":"Doe","title":"Software Engineer","sales_info":{"stage":"Customer","lifetime_value":24000,"account_owner":"mary@contoso.com"}}}' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'
```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";

// Only userId is required.
// metadata can be any custom object
var user = {
  userId: '12345',
  companyId: '67890'
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
apiClient.updateUser(new moesifapi.UserModel(user), function(error, response, context) {
  // Do Something
});
```

```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").api

# Only user_id is required.
# metadata can be any custom object
user = {
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

update_user = api_client.update_user(user)
```

```ruby
api_client = MoesifApi::MoesifAPIClient.new('YOUR_COLLECTOR_APPLICATION_ID').api

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

# Only user_id is required.
# metadata can be any custom object
user = UserModel.new()
user.user_id = "12345"
user.company_id = "67890" # If set, associate user with a company object
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
$apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID")->getApi();;

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

$user = new Models\UserModel();
$user->userId = "12345";
$user->companyId = "67890"; // If set, associate user with a company object
$user->metadata = $metadata;

$apiClient->updateUser($user);
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

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
  Metadata:  &metadata,
}

// Queue the user asynchronously
err := apiClient.QueueUser(&user)

// Update the user synchronously
err := apiClient.UpdateUser(&user)
```

```csharp
var apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID").Api;;

// metadata can be any custom dictionary
var metadata = new Dictionary<string, object>
{
    {"email", "john@acmeinc.com"},
    {"first_name", "John"},
    {"last_name", "Doe"},
    {"title", "Software Engineer"},
    {"sales_info", new Dictionary<string, object> {
        {"stage", "Customer"},
        {"lifetime_value", 24000},
        {"account_owner", "mary@contoso.com"}
    }
};

// Only user_id is required
var user = new UserModel()
{
	UserId = "12345",
  CompanyId = "67890",
	Metadata = metadata
};

// Update the user asynchronously
await apiClient.UpdateUserAsync(user);

// Update the user synchronously
apiClient.UpdateUser(user);
```

```java
MoesifAPIClient client = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID");

// Only userId is required
// metadata can be any custom object
UserModel user = new UserBuilder()
    .userId("12345")
    .companyId("67890") // If set, associate user with a company object
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

// Asynchronous Call to update user
client.getAPI().updateUserAsync(user, callBack);

// Synchronous Call to update user
client.getAPI().updateUser(user);
```

```javascript--browser
var moesif = require('moesif-browser-js');

moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
  // add other option here.
});

// The second argument containing user metatdata is optional,
// but useful to store customer properties like email and name.
moesif.identifyUser('12345', {
  email: 'john@acmeinc.com',
  firstName: 'John',
  lastName: 'Doe',
  title: 'Software Engineer',
  salesInfo: {
      stage: 'Customer',
      lifetimeValue: 24000,
      accountOwner: 'mary@contoso.com',
  },
});
```

#### User id
Users in Moesif are identified via a `user_id` and should be a __permanent__ and robust identifier, like a database id. 
We recommend not using values that can change like email addresses or usernames.
The user_id matches the identifyUser hook in your [API monitoring agent.](https://www.moesif.com/implementation)

Users can also be associated to a company by setting the `company_id` field when you update a user. This enables tracking API usage for 
individual users along with account-level usage. 

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
|user_id |string| __true__ | The unique identifier for this user.|
|company_id |string| false | Associate the user with a [company](#companies) (Helpful for B2B companies)|
|session_token |string| false | Associate this user with a new API key/session token. This field is _append only_ meaning when you set this field, previously set tokens are not removed.|
|modified_time |string(date-time)| false | Last modified time of user profile. Set automatically by Moesif if not provided.|
|ip_address |string| false | Set the user's last known ip address. Moesif sets this automatically from the user's most recent API activity if not provided.|
|user_agent_string |string| false | Set the user's last known user agent. Moesif sets this automatically from the user's most recent API activity if not provided.|
|campaign |object| false | [Referrer](https://en.wikipedia.org/wiki/HTTP_referer) and [UTM parameters](https://en.wikipedia.org/wiki/UTM_parameters) to track effectiveness of your acquisition channels. Set automatically by moesif-browser-js, but not with server side SDKs|
|<p style="margin-left:1.5em">utm_source</p>|string|false|UTM parameter that identifies which site sent the traffic|
|<p style="margin-left:1.5em">utm_medium</p>|string|false|UTM parameter that identifies what type of link was used, such as cost per click or email.|
|<p style="margin-left:1.5em">utm_campaign</p>|string|false|UTM parameter that identifies a specific product promotion or strategic campaign.|
|<p style="margin-left:1.5em">utm_term</p>|string|false|UTM parameter that identifies search terms.|
|<p style="margin-left:1.5em">utm_content</p>|string|false|UTM parameter that identifies what specifically was clicked to bring the user to the site, such as a banner ad or a text link.|
|<p style="margin-left:1.5em">referrer</p>|string|false|The referring URI before your domain.|
|<p style="margin-left:1.5em">referring_domain</p>|string|false|The referring domain of the page that linked to your domain.|
|<p style="margin-left:1.5em">gclid</p>|string|false|Google click Identifier to track Google Ads|
|metadata |object| false | An object containing user demographics or other properties you want to store with this profile.|

### Update Users in Batch

**`POST https://api.moesif.net/v1/users/batch`**

Updates a list of user profiles in a single batch. Users are typically a single person or API consumer. For updating customer profiles such as for monetization use cases, see [companies](#companies) and [subscriptions](#subscriptions).

You can also track users automatically using a Moesif client integration like [moesif-browser-js](https://www.moesif.com/implementation/track-user-behaviors-with-browser?platform=browser) or Segment.

Any custom user properties can be stored via the `metadata` object.

We’ve reserved some fields names in the `metadata` object that have semantic meanings for users, and we handle them in special ways. 
For example, we expect email to be a string containing the user’s email address which is used to sync with 
external CRMs and to look up a user's Gravatar and demographics.

Reserved metadata fields include:

  - email
  - name (Which can contain both first and last name)
  - first_name
  - last_name
  - phone
  - photo_url

#### Create vs update
If the user does not exist, Moesif will create a new one. 

If a user exists, the new user properties will be merged with the existing properties
recursively. This means you don't need to resend the entire user object if you are only 
updating a single field.

<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif 
and selecting API keys from bottom left menu.
</aside>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/users/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
[
  {
    "user_id": "12345",
    "company_id": "67890",
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
curl -X POST https://api.moesif.net/v1/users/batch \
  -d '[{"user_id":"12345","company_id":"67890","metadata":{"email":"john@acmeinc.com","first_name":"John","last_name":"Doe","title":"Software Engineer","sales_info":{"stage":"Customer","lifetime_value":24000,"account_owner":"mary@contoso.com"}}},{"user_id":"54321","company_id":"67890","metadata":{"email":"mary@acmeinc.com","first_name":"Mary","last_name":"Jane","title":"Software Engineer","sales_info":{"stage":"Customer","lifetime_value":24000,"account_owner":"mary@contoso.com"}}}]' \
  -H 'Accept: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID'


```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";

// 3. Generate a User Model
var userA = {
  userId: '12345',
  companyId: '67890'
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

var userB = {
  userId: '67890',
  companyId: '67890'
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
apiClient.updateUsersBatch(users, function(error, response, context) {
  // Do Something
});
```


```python
from moesifapi.moesif_api_client import *
from moesifapi.models import *

api_client = MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID").api

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
api_client = MoesifApi::MoesifAPIClient.new('YOUR_COLLECTOR_APPLICATION_ID').api

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

# Only user_id is required.
# metadata can be any custom object
user = UserModel.new()
user.user_id = "12345"
user.company_id = "67890" # If set, associate user with a company object
user.metadata = metadata

users << user

api_client = api_controller.update_users_batch(user_model)
```

```php
<?php
// Depending on your project setup, you might need to include composer's
// autoloader in your PHP code to enable autoloading of classes.
require_once "vendor/autoload.php";

use MoesifApi\MoesifApiClient;
$apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID")->getApi();

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

$userA = new Models\UserModel();
$userA->userId = "12345";
$userA->companyId = "67890"; // If set, associate user with a company object
$userA->metadata = $metadata;

// metadata can be any custom object
$userB->metadata = array(
        "email" => "mary@acmeinc.com",
        "first_name" => "Mary",
        "last_name" => "Jane",
        "title" => "Software Engineer",
        "sales_info" => array(
            "stage" => "Customer",
            "lifetime_value" => 24000,
            "account_owner" => "mary@contoso.com"
        )
    );

$userB = new Models\UserModel();
$userB->userId = "12345";
$userB->companyId = "67890"; // If set, associate user with a company object
$userB->metadata = $metadata;

$users = array($userA, $userB)
$apiClient->updateUsersBatch($user);
```

```go
import "github.com/moesif/moesifapi-go"
import "github.com/moesif/moesifapi-go/models"

apiClient := moesifapi.NewAPI("YOUR_COLLECTOR_APPLICATION_ID")

// List of Users
var users []*models.UserModel
  
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
userA := models.UserModel{
  UserId:  "12345",
  CompanyId:  "67890", // If set, associate user with a company object
  Metadata:  &metadata,
}

users = append(users, &userA)

// Queue the user asynchronously
err := apiClient.QueueUsers(&users)

// Update the user synchronously
err := apiClient.UpdateUsersBatch(&users)
```

```csharp
var apiClient = new MoesifApiClient("YOUR_COLLECTOR_APPLICATION_ID").Api;;

var users = new List<UserModel>();

var metadataA = new Dictionary<string, object>
{
    {"email", "john@acmeinc.com"},
    {"first_name", "John"},
    {"last_name", "Doe"},
    {"title", "Software Engineer"},
    {"sales_info", new Dictionary<string, object> {
        {"stage", "Customer"},
        {"lifetime_value", 24000},
        {"account_owner", "mary@contoso.com"}
    }
};

// Only user_id is required
var userA = new UserModel()
{
	UserId = "12345",
  CompanyId = "67890", // If set, associate user with a company object
	Metadata = metadataA
};

var metadataB = new Dictionary<string, object>
{
    {"email", "mary@acmeinc.com"},
    {"first_name", "Mary"},
    {"last_name", "Jane"},
    {"title", "Software Engineer"},
    {"sales_info", new Dictionary<string, object> {
        {"stage", "Customer"},
        {"lifetime_value", 24000},
        {"account_owner", "mary@contoso.com"}
    }
};

// Only user_id is required
var userB = new UserModel()
{
	UserId = "54321",
  CompanyId = "67890",
	Metadata = metadataA
};


users.Add(userA);
users.Add(userB);

// Update the users asynchronously
await apiClient.UpdateUsersBatchAsync(users);

// Update the users synchronously
apiClient.UpdateUsersBatch(users);
```

```java
MoesifAPIClient client = new MoesifAPIClient("YOUR_COLLECTOR_APPLICATION_ID");

List<UserModel> users = new ArrayList<UserModel>();

UserModel userA = new UserBuilder()
        .userId("12345")
        .companyId("67890")
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

// Asynchronous call to update users
client.getAPI().updateUsersBatchAsync(users, callBack);


// Synchronous call to update users
client.getAPI().updateUsersBatch(users);
```

<blockquote class="lang-specific javascript--browser">
<b>Since this is a client side SDK, you cannot save a batch of users with moesif-browser-js.</b>
</blockquote>


#### User id
Users in Moesif are identified via a `user_id` and should be a __permanent__ and robust identifier, like a database id. 
We recommend not using values that can change like email addresses or usernames.
The user_id matches the identifyUser hook in your [API monitoring agent.](https://www.moesif.com/implementation)

Users can also be associated to a company by setting the `company_id` field when you update a user. This enables tracking API usage for 
individual users along with account-level usage. 

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
|user_id |string| __true__ | The unique identifier for this user.|
|company_id |string| false | Associate the user with a [company](#companies) (Helpful for B2B companies).|
|session_token |string| false | Associate this user with a new API key/session token. This field is _append only_ meaning when you set this field, previously set tokens are not removed.|
|modified_time |string(date-time)| false | Last modified time of user profile. Set automatically by Moesif if not provided.|
|ip_address |string| false | Set the user's last known ip address. Moesif sets this automatically from the user's most recent API activity if not provided.|
|user_agent_string |string| false | Set the user's last known user agent. Moesif sets this automatically from the user's most recent API activity if not provided.|
|campaign |object| false | [Referrer](https://en.wikipedia.org/wiki/HTTP_referer) and [UTM parameters](https://en.wikipedia.org/wiki/UTM_parameters) to track effectiveness of your acquisition channels. Set automatically by moesif-browser-js, but not with server side SDKs.|
|<p style="margin-left:1.5em">utm_source</p>|string|false|UTM parameter that identifies which site sent the traffic.|
|<p style="margin-left:1.5em">utm_medium</p>|string|false|UTM parameter that identifies what type of link was used, such as cost per click or email.|
|<p style="margin-left:1.5em">utm_campaign</p>|string|false|UTM parameter that identifies a specific product promotion or strategic campaign.|
|<p style="margin-left:1.5em">utm_term</p>|string|false|UTM parameter that identifies search terms.|
|<p style="margin-left:1.5em">utm_content</p>|string|false|UTM parameter that identifies what specifically was clicked to bring the user to the site, such as a banner ad or a text link.|
|<p style="margin-left:1.5em">referrer</p>|string|false|The referring URI before your domain.|
|<p style="margin-left:1.5em">referring_domain</p>|string|false|The referring domain of the page that linked to your domain.|
|<p style="margin-left:1.5em">gclid</p>|string|false|Google click Identifier to track Google Ads.|
|metadata |object| false | An object containing user demographics or other properties you want to store with this profile.|
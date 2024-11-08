## Actions

### Track a Custom Action

**`POST https://api.moesif.net/v1/actions`**

Log a single action to Moesif. 
Actions represent events that occur within your application at a specific point in time. They can be tracked within your UI (such as "User Clicked Sign Up") or from your backend (such as "SMS Job Finished"). Each action consists of a required _Action Name_ and optional _Metadata_.

<aside class="notice">

Actions can be tracked from your frontend app using <code>moesif-browser-js</code> or directly from your backend using this API. You can also use 
<a href="https://github.com/Moesif/moesifapi-nodejs">Moesif API library for Node.js</a> and 
<a href="https://github.com/Moesif/moesif-nodejs">Moesif Node.js middleware</a>.

</aside>

<aside class="info">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id
</aside>


<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/actions</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
{
  "action_name": "Clicked Sign Up",
  "user_id": "12345",
  "company_id": "67890",
  "transaction_id": "a3765025-46ec-45dd-bc83-b136c8d1d257",
  "request": {
    "uri": "https://acmeinc.com/pricing",
    "user_agent_string": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"
  },
  "metadata": {
    "button_label": "Get Started",
    "sign_up_method": "Google SSO"
  }
}
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/actions \
  -H 'Content-Type: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID' \
  -d '{"action_name":"Clicked Sign Up","user_id":"12345","company_id":"67890","transaction_id": "a3765025-46ec-45dd-bc83-b136c8d1d257","request":{"uri":"https://acmeinc.com/pricing","user_agent_string":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"},"metadata":{"button_label":"Get Started","sign_up_method":"Google SSO"}}'
```

```javascript--browser
var moesif = require('moesif-browser-js');

moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
});

// The first argument (required) contains the action name string. 
// The second argument (optional) contains event metadata.
moesif.track('Clicked Sign Up', {
  button_label: 'Get Started',
  sign_up_method: 'Google SSO'
});
```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";

var action = {
  transactionId: "a3765025-46ec-45dd-bc83-b136c8d1d257",
  actionName: "Clicked Sign Up",
  sessionToken: "23jdf0owekfmcn4u3qypxg08w4d8ayrcdx8nu2nz]s98y18cx98q3yhwmnhcfx43f",
  userId: "12345",
  companyId: "67890",
  metadata: {
    email: "johndoe@acmeinc.com",
    button_label: 'Get Started',
    sign_up_method: 'Google SSO'
  },
  request: {
    time: new Date(),
    uri: "https://api.acmeinc.com/items/reviews/",
    ipAddress: "61.48.220.123",
  }
};
// Send the Action
apiClient.sendAction(new moesifapi.ActionModel(action), function(error, response, context) {
  // Do Something
});
```

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
transaction_id | string | false | A random 36 char UUID for this event. If set, Moesif will deduplicate events using this id and ensure idempotency.
action_name | string | __true__ | A recognizable name such as <i>Clicked Sign Up</i> or <i>SMS Job Finished<i>
session_token | string | false | The customer's current session token as a string.
user_id | string | false | Associate this API call to a [user](#users). Typically, a real person.
company_id | string | false | Associate this API call to a [company](#companies) (Required for metered billing).
subscription_id | string | false | Associate this API call to a specific [subscription](#subscriptions) of a company. Not needed unless same company can have multiple subscriptions to the same plan. When set, usage will be reported to only this subscription.
metadata | object | false | An object containing any custom event metadata you want to store with this event.
request |object | __true__ | The object containing the action's request context.
<p style="margin-left:1.5em">time</p> |string(date-time) | false | Timestamp for the action in ISO 8601 format. Set by server automatically if not set.
<p style="margin-left:1.5em">uri</p> | string| __true__ | Full uri customer is on such as _https://wwww.acmeinc.com/pricing?utm_source=adwords_ including protocol, host, and query string.
<p style="margin-left:1.5em">ip_address</p> | string| false | IP address of the customer, If not set, we extract the remote IP address.
<p style="margin-left:1.5em">user_agent_string</p> | string | false | The customer's browser agent string for device context.

### Track Custom Actions in Batch

**`POST https://api.moesif.net/v1/actions/batch`**

Log a batch of actions to Moesif. 
Actions represent events that occur within your application at a specific point in time. They can be tracked within your UI (such as "User Clicked Sign Up") or from your backend (such as "SMS Job Finished"). Each action consists of a required _Action Name_ and optional _Metadata_.

This API accepts an array of actions as the payload 
The maximum batch size is **15MB**. Break up larger batches into smaller batches.

<aside class="notice">

Actions can be tracked from your frontend app using <code>moesif-browser-js</code> 
or directly from your backend using this API. You can also use 
<a href="https://github.com/Moesif/moesifapi-nodejs">Moesif API library for Node.js</a> and 
<a href="https://github.com/Moesif/moesif-nodejs">Moesif Node.js middleware</a>.

</aside>

<aside class="info">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id
</aside>


<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/actions/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
[
  {
    "action_name": "Clicked Sign Up",
    "user_id": "12345",
    "company_id": "67890",
    "transaction_id": "a3765025-46ec-45dd-bc83-b136c8d1d257",
    "request": {
      "uri": "https://acmeinc.com/pricing",
      "user_agent_string": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"
    },
    "metadata": {
      "button_label": "Get Started",
      "sign_up_method": "Google SSO"
    }
  },
  {
    "action_name": "Purchased Subscription",
    "user_id": "12345",
    "company_id": "67890",
    "transaction_id": "a90cbabb-2dfc-4290-a368-48ce1a1af7ba",
    "request": {
      "uri": "https://acmeinc.com/pricing",
      "user_agent_string": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"
    },
    "metadata": {
      "plan_name": "Pay As You Go",
      "plan_revenue": 5000
    }
  }
]
```

```shell
# You can also use wget
curl -X POST https://api.moesif.net/v1/actions/batch \
  -H 'Content-Type: application/json' \
  -H 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID' \
  -d '[{"action_name":"Clicked Sign Up","user_id":"12345","company_id":"67890","transaction_id": "a3765025-46ec-45dd-bc83-b136c8d1d257","request":{"uri":"https://acmeinc.com/pricing","user_agent_string":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"},"metadata":{"button_label":"Get Started","sign_up_method":"Google SSO"}},{"action_name":"Purchased Subscription","user_id":"12345","company_id":"67890","transaction_id": "a90cbabb-2dfc-4290-a368-48ce1a1af7ba","request":{"uri":"https://acmeinc.com/pricing","user_agent_string":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"},"metadata":{"plan_name":"Pay As You Go","plan_revenue":5000}}]'
```

```javascript--browser
var moesif = require('moesif-browser-js');

moesif.init({
  applicationId: 'YOUR_COLLECTOR_APPLICATION_ID'
});

// The first argument (required) contains the action name string. 
// The second argument (optional) contains event metadata.
moesif.track('Clicked Sign Up', {
  button_label: 'Get Started',
  sign_up_method: 'Google SSO'
});
```

```javascript--nodejs
var moesifapi = require('moesifapi');
var apiClient = moesifapi.ApiController;

moesifapi.configuration.ApplicationId = "YOUR_COLLECTOR_APPLICATION_ID";

// Define the request context objects for each action.
var req_contextA = {
  time: new Date(),
  uri: "https://api.acmeinc.com/items/reviews/",
  ipAddress: "61.48.220.123",
  userAgentString: "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0"
};

var req_contextB = {
  time: new Date(),
  uri: "https://api.acmeinc.com/pricing/",
  ipAddress: "61.48.220.126",
  userAgentString: "PostmanRuntime/7.26.5"
};

// Define the actions.
var actionA = {
  transactionId: "a3765025-46ec-45dd-bc83-b136a8d1d357",
  actionName: "Clicked Sign Up",
  sessionToken: "23abf0owekfmcn4u3qypxg09w4d8ayrcdx8nu2ng]s98y18cx98q3yhwmnhcfx43f",
  userId: "18340",
  companyId: "25100",
  metadata: {
    email: "alex@acmeinc.com",
    button_label: 'Get Started',
    sign_up_method: 'Google SSO'
  },
  request: req_contextA
};

var actionB = {
  transactionId: "a3765024-46ee-45dd-bc83-b136c8d1d250",
  actionName: "Viewed pricing",
  sessionToken: "23jdf0owejfmbn4u3qypxg09w4d8ayrxdx8nu2ng]s98y18cx98q3yhwmnhcfx43f",
  userId: "12390",
  companyId: "97895",
  metadata: {
    email: "kim@acmeinc.com",
    button_label: 'See pricing',
    sign_up_method: 'Google SSO'
  },
  request: req_contextB
};

var actions = [
  new moesifapi.ActionModel(actionA),
  new moesifapi.ActionModel(actionB)
];
// Send the batch of Actions
apiClient.sendActionsBatch(actions, function(error, response, context) {
  // Do Something
});
```

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
transaction_id | string | false | A random 36 char UUID for this event. If set, Moesif will deduplicate events using this id and ensure idempotency. Moesif will still deduplicate even across different size batches.
action_name | string | __true__ | A recognizable name such as <i>Clicked Sign Up</i> or <i>SMS Job Finished<i>
session_token | string | false | The customer's current session token as a string.
user_id | string | false | Associate this API call to a [user](#users). Typically, a real person.
company_id | string | false | Associate this API call to a [company](#companies) (Required for metered billing).
subscription_id | string | false | Associate this API call to a specific [subscription](#subscriptions) of a company. Not needed unless same company can have multiple subscriptions to the same plan. When set, usage will be reported to only this subscription.
metadata | object | false | An object containing any custom event metadata you want to store with this event.
request |object | __true__ | The object containing the action's request context.
<p style="margin-left:1.5em">time</p> |string(date-time) | false | Timestamp for the action in ISO 8601 format. Set by server automatically if not set.
<p style="margin-left:1.5em">uri</p> | string| __true__ | Full uri customer is on such as _https://wwww.acmeinc.com/pricing?utm_source=adwords_ including protocol, host, and query string.
<p style="margin-left:1.5em">ip_address</p> | string| false | IP address of the customer, If not set, we extract the remote IP address.
<p style="margin-left:1.5em">user_agent_string</p> | string | false | The customer's browser agent string for device context.
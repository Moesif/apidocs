## Actions

### Track a User Action

**`POST https://api.moesif.net/v1/actions`**

Log a single user action to Moesif. An action represents something a customer performed on your website
such as _Sign In_ or _Purchased Subscription_. Each action consists of an _Action Name_ and optional _Metadata_.

<aside class="warning">
Currently only the moesif-browser-js SDK supports tracking actions. If you need to track user actions from your server, use the HTTP API directly.
</aside>

**An example tracking actions using moesif-browser-js:**

<div class="center-column"></div>
```javascript
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
</pre>

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

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
transaction_id | string | false | A random 36 char UUID for this event. If set, Moesif will deduplicate events using this id and ensure idempotency.
action_name | string | __true__ | A recognizable name such as <i>Clicked Sign Up</i> or <i>Purchased Subscription<i>
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

### Track User Actions in Batch

**`POST https://api.moesif.net/v1/actions/batch`**

Log a batch of user action to Moesif. An action represents something a customer performed on your website
such as _Sign In_ or _Purchased Subscription_. Each action consists of an _Action Name_ and optional _Metadata_.

This API takes an array form of the same model defined for track single action.
The maximum batch size is **12MB**. Break up larger batches.


<aside class="warning">
Currently only the moesif-browser-js SDK supports tracking actions. if you need to track actions server-side, use the HTTP API directly.
</aside>

**An example tracking actions using moesif-browser-js:**

<div class="center-column"></div>
```javascript
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
</pre>

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

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
transaction_id | string | false | A random 36 char UUID for this event. If set, Moesif will deduplicate events using this id and ensure idempotency. Moesif will still deduplicate even across different size batches.
action_name | string | __true__ | A recognizable name such as <i>Clicked Sign Up</i> or <i>Purchased Subscription<i>
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
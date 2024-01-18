## Subscriptions

### Update a Subscription

**`POST https://api.moesif.net/v1/subscriptions`**

Updates a subscription for a subscription in Moesif. A subscription represents a single plan a customer is subscribed to and paying for. A company can have one or more subscriptions. Any custom subscription properties can be stored via the `metadata` object.

#### Create vs update
If the subscription does not exist, Moesif will create a new one.

If a subscription exists, the new subscription properties will be merged with the existing properties
recursively. This means you don't need to resend the entire subscription object if you are only
updating a single field.

<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif
and selecting API keys from bottom left menu.
</aside>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/subscriptions</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
{
    "subscription_id": "12345", // Subscription Id
    "company_id": "67890", // Company Id
    "current_period_start": "2024-01-21T17:32:28.000Z",
    "current_period_end": "2024-11-21T17:32:28.000Z",
    "status": "active",
    "metadata": {
        "subscription_type": "PAYG",
        "subscription_tier": "Pro",
        "quota": {
            "quota_limit": 1000000,
            "quota_period": "Year"
        }
    }
}
```

```shell
# You can also use wget
curl --location 'https://api.moesif.net/v1/subscriptions' \
--header 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID' \
--header 'Content-Type: application/json' \
--data '{
    "subscription_id": "12345",
    "company_id": "67890",
    "current_period_start": "2024-01-21T17:32:28.000Z",
    "current_period_end": "2024-11-21T17:32:28.000Z",
    "status": "active",
    "metadata": {
        "subscription_type": "PAYG",
        "subscription_tier": "Pro",
        "quota": {
            "quota_limit": 1000000,
            "quota_period": "YEAR"
        }
    }
}'
```

#### Subscription ids
Subscriptions in Moesif are identified via a `subscription_id` and should be a __permanent__ and robust identifier, like a database id. We recommend not using values that can change like website domain or subscription name.

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
|subscription_id |string| __true__ | The unique identifier for this subscription.|
|company_id |string| __true__ | The unique identifier for the company this subscription should be associated with.|
|current_period_start |string(date-time)| false | The start time of the current billing term. This can be yearly, monthly, or other billing term. Required for quota and billing management.|
|current_period_end |string(date-time)| false | The end time of the current billing term. This can be yearly, monthly, or other billing term. Required for quota and billing management.|
|status |string| __true__ | One of [active, cancelled, paused, trialing, pending, draft, future]. This can be used to drive governance rules that the subscription status in Moesif such as blocking access to cancelled subscriptions.|
|metadata |object| false | An object containing subscription demographics or other properties you want to store with this profile.|

### Update Subscriptions in Batch

**`POST https://api.moesif.net/v1/subscriptions/batch`**

Updates a list of subscriptions profile in Moesif.

A custom JSON object can be placed in the `metadata` object of each subscription
which will be stored as part of the subscription profile.

If subscription does not exist, a new one will be created.
If a subscription exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/subscriptions/batch</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
[
  {
    "subscription_id": "12345", // Subscription Id
    "company_id": "67890", // Company Id
    "current_period_start": "2024-01-21T17:32:28.000Z",
    "current_period_end": "2024-11-21T17:32:28.000Z",
    "status": "active",
    "metadata": {
        "subscription_type": "PAYG",
        "subscription_tier": "Pro",
        "quota": {
            "quota_limit": 1000000,
            "quota_period": "Year"
        }
    }
},
{
    "subscription_id": "abcde", // Subscription Id
    "company_id": "xyz", // Company Id
    "current_period_start": "2024-01-21T17:32:28.000Z",
    "current_period_end": "2024-11-21T17:32:28.000Z",
    "status": "active",
    "metadata": {
        "subscription_type": "PAYG",
        "subscription_tier": "Enterprise",
        "quota": {
            "quota_limit": 1000000,
            "quota_period": "YEAR"
        }
    }
}
]
```

```shell
# You can also use wget
curl --location 'https://api.moesif.net/v1/subscriptions/batch' \
--header 'X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID' \
--header 'Content-Type: application/json' \
--data '[{
    "subscription_id": "12345",
    "company_id": "67890",
    "current_period_start": "2024-01-21T17:32:28.000Z",
    "current_period_end": "2024-11-21T17:32:28.000Z",
    "status": "active",
    "metadata": {
        "subscription_type": "PAYG",
        "subscription_tier": "Pro",
        "quota": {
            "quota_limit": 1000000,
            "quota_period": "YEAR"
        }
    }
}]'
```

#### Subscription ids
Subscriptions in Moesif are identified via a `subscription_id` and should be a __permanent__ and robust identifier, like a database id. We recommend not using values that can change like website domain or subscription name.

|Name|Type|Required|Description|
|-----------|-----------|-----------|-----------|
|subscription_id |string| __true__ | The unique identifier for this subscription.|
|company_id |string| __true__ | The unique identifier for the company this subscription should be associated with.|
|current_period_start |string(date-time)| false | The start time of the current billing term. This can be yearly, monthly, or other billing term. Required for quota and billing management.|
|current_period_end |string(date-time)| false | The end time of the current billing term. This can be yearly, monthly, or other billing term. Required for quota and billing management.|
|status |string| false | One of [active, cancelled, paused, trialing, pending, draft, future]. This can be used to drive governance rules that the subscription status in Moesif such as blocking access to cancelled subscriptions.|
|metadata |object| false | An object containing subscription demographics or other properties you want to store with this profile.|

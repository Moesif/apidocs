## Config

### Get Config

**`GET https://api.moesif.net/v1/config`**

Retrieves  the configuration for governance rules and dynamic sampling rules.

<aside class="warning">
Typically, this API is not directly used unless you are building a new server integration with Moesif.
</aside>

<aside class="info">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id
</aside>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/config</code>
<br><br><i>Example Response</i><br>
</blockquote>

```json
{
    "sample_rate": 100,
    "user_sample_rate": {},
    "company_sample_rate": { },
    "user_rules": { },
    "company_rules": {  },
    "regex_config": [
        {
            "conditions": [
                {
                    "path": "request.route",
                    "value": "/health/.*"
                }
            ],
            "sample_rate": 0
        }
    ]
}
```

### Get Rules

**`GET https://api.moesif.net/v1/rules`**

Retrieves  the set of rules for quotas and behavior rules to block users/companies.

<aside class="warning">
Typically, this API is not directly used unless you are building a new server integration with Moesif.
</aside>

<aside class="info">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id
</aside>

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/rules</code>
<br><br><i>Example Response</i><br>
</blockquote>

```json
[
    {
        "_id": "64ca685a833073c6b41b15f3",
        "created_at": "2024-02-01T00:00:00.000",
        "name": "Block Free Users who Exceeded their Monthly Quota",
        "block": true,
        "type": "user",
        "variables": [
            {
                "name": "0",
                "path": "body.plan_name"
            },
            {
                "name": "1",
                "path": "body.quota_amount"
            }
        ],
        "regex_config": [],
        "response": {
            "status": 429,
            "headers": {
                "X-Rate-Limit-Month": "{{1}}"
            },
            "body": {
                "error_code": "too_many_requests",
                "message": "You exceeded your monthly quota of {{1}} for the {{0}} plan. Please upgrade your plan."
            }
        }
    }
]
```


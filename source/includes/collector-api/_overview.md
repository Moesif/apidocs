# <a id="collector-api"></a> Collector API v1

The Collector API enables you to log data to Moesif at high volumes. This is also what the [Moesif server integrations](https://www.moesif.com/implementation) use. For more info, check out [an overview of our analytics infrastructure](https://www.moesif.com/enterprise/api-analytics-infrastructure).

<aside class="notice">
Moesif has a separate <a href='#management-api'>Management API</a> which can be used to query and manage data stored in your Moesif account.
</aside>

|Base URL (Public)|Base URL (When using Secure Proxy)|
|--|--|
|`api.moesif.net/v1`|`localhost:9500/collector/v1`

If you're using the [Moesif secure proxy](https://www.moesif.com/docs/platform/secure-proxy/) for client-side encryption, the base URL is `http://localhost:9500/collector/v1` assuming it's running on port `9500`. See [accessing Collector API](https://www.moesif.com/docs/platform/secure-proxy/#accessing-the-moesif-collector-api)

<a href="https://www.moesif.com/terms">Terms of service</a>

Moesif's official SDKs and plugins only use HTTPS, but the API does support HTTP for very specific applications like legacy embedded devices (uncommon).
It's strongly recommended to ensure all communication is HTTPS.

## Authentication
Authentication is handled by adding the HTTP header `X-Moesif-Application-Id` to all requests.
Moesif recommends using the same Application Id for all integrations within the same application environment (i.e. product, staging, etc) so your analytics data is unified.

`X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID`


<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif
and selecting API keys from bottom left menu.
</aside>

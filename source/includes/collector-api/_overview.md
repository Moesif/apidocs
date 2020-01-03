# <a id="collector-api"></a> Collector API v1

The Collector API is a high-volume distributed data collection network.
It's like a reverse CDN and has points of presence across the globe to log API data from the [Moesif SDKs](https://www.moesif.com/implementation)
and [API libs](#api-libs). For more info, check out [and overview of Moesif's infrastructure](https://www.moesif.com/enterprise/api-analytics-infrastructure).

Moesif also has a [Management API](#Management-API) to directly query data in Moesif. You can use this API to develop custom dashboards and reports.

Base URL:

* <a href="https://api.moesif.net/v1">https://api.moesif.net/v1</a>


<a href="https://www.moesif.com/terms">Terms of service</a>

Prepend all endpoints below with this base url. While, both HTTPS and HTTP requests are supported on the HTTP API, 
Moesif's API libs and SDKs only use HTTPS.

## Authentication
Authentication is done via the `X-Moesif-Application-Id` request header.
The same Application Id token can be used across multiple SDKs, API libs, and the Collector HTTP API. Add the following header to all API Calls.

`X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID`


<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif 
and selecting API keys from top right menu.
</aside>

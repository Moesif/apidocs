# <a id="collector-api"></a> Collector API v1

The Collector API is a high-volume, write-only distributed data collection network to log data at high volume from [Moesif API monitoring agents](https://www.moesif.com/implementation). For more info, check out [an overview of our analytics infrastructure](https://www.moesif.com/enterprise/api-analytics-infrastructure).

Moesif has a separate [Management API](#Management-API) which can be used to query and manage data stored in the Moesif platform such as to 
generate embedded dashboards and custom reports

Base URL:

* <a href="https://api.moesif.net/v1">https://api.moesif.net/v1</a>

<a href="https://www.moesif.com/terms">Terms of service</a>

Moesif's official SDKs and plugins only use HTTPS, but the API does support both HTTPS and HTTP. 
It's highly recommended to ensure all communication is HTTPS, as HTTP is a last resort option for limited use cases like IoT and embedded devices. 

## Authentication
Authentication is handled by adding the HTTP header `X-Moesif-Application-Id` to all requests. 
Moesif recommends using the same Application Id for all integrations within the same application environment (i.e. product, staging, etc) so your analytics data 
is unified. 

`X-Moesif-Application-Id: YOUR_COLLECTOR_APPLICATION_ID`


<aside class="notice">
Replace <i>YOUR_COLLECTOR_APPLICATION_ID</i> with your real Application Id found by logging into Moesif 
and selecting API keys from top right menu.
</aside>

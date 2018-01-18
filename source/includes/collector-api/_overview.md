# <a id="collector-api"></a> Collector API v1

The Collector API is a high-volume, write-only distributed data collector.
Think of it as a reverse CDN.

The Moesif middleware SDKs and agents such as _moesif-express_ use the Collector API for
sending event data to Moesif.

For API operations that are not API collection such as querying the data that's
accessible in the Moesif portal, look at the [Management API.](#Management-API)

Base URLs:


* <a href="https://api.moesif.net/v1">https://api.moesif.net/v1</a>


<a href="https://www.moesif.com/terms">Terms of service</a>

Prepend all endpoints below with this base url. Both HTTPS and HTTP requests are supported.
Calls to our API are routed to the nearest datacenter.

## Authentication
Authentication is done via HTTP Headers.
The same Application Id token can be used for the cloud proxy server, the client libs, and the REST API. Add the following header to all API Calls.

`X-Moesif-Application-Id: my_application_id`


<aside class="notice">
Replace <i>my_application_id</i> with your real Application Id. You can find your Application Id under <i>Menu -> App Setup Details</i>
</aside>

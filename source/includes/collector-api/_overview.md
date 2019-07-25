# <a id="collector-api"></a> Collector API v1

The Collector API is a high-volume distributed data collection network.
It's like a reverse CDN.

The Moesif Middleware SDKs and agents such as _moesif-express_ sit in your code and send raw API data to 
the Collector API for processing.

Moesif also has a [Management API](#Management-API) to query data out of Moesif and is the same 
API the Moesif web portal uses. 

Base URLs:


* <a href="https://api.moesif.net/v1">https://api.moesif.net/v1</a>


<a href="https://www.moesif.com/terms">Terms of service</a>

Prepend all endpoints below with this base url. Both HTTPS and HTTP requests are supported. 
However, Moesif's API libs enforce HTTPS only. Calls to our API are routed to the nearest datacenter.

## Authentication
Authentication is done via HTTP Headers.
The same Application Id token can be used for the cloud proxy server, the client libs, and the REST API. Add the following header to all API Calls.

`X-Moesif-Application-Id: my_application_id`


<aside class="notice">
Replace <i>my_application_id</i> with your real Application Id. You can find your Application Id under <i>Menu -> App Setup Details</i>
</aside>

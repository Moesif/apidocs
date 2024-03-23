---
title: Moesif API Documentation

language_tabs:
  - json: JSON
  - shell: Shell
  - javascript--browser: Browser
  - javascript--nodejs: Node.js
  - python: Python
  - ruby: Ruby
  - php: PHP
  - go: Go
  - csharp: C#
  - java: Java

toc_footers:
  - <a href='/docs'>Developer Docs</a>
  - <a href='/blog/changelog'>Changelog</a>
  - <a href='https://status.moesif.com'>API Status</a>
  - <a href='/wrap'>My Account</a>

includes:
  - overview
  - errors
  - api-libs
  - collector-api/overview
  - collector-api/events-api
  - collector-api/actions-api
  - collector-api/users-api
  - collector-api/companies-api
  - collector-api/subscriptions-api
  - collector-api/config-api
  - management-api/management-api

search: true

code_clipboard: true

meta:
  - name: description
    content: Documentation for the Kittn API
---

# Moesif API Reference

Moesif is an analytics and monetization platform for API products. This reference is for v1 of the Moesif APIs.
For an overview on the Moesif platform, see the [developer docs](/docs) or [implementation guides](https://www.moesif.com/implementation)

There are two APIs:

|Name|Host|Authentication|
|----|----|--------------|
|[Collector API](#collector-api)|[api.moesif.net](https://api.moesif.net)|Retrieve your Collector Application Id by logging into Moesif and going to _API keys_ from bottom left menu. Place in the request `X-Moesif-Application-Id` header. [More info](#collector-api)|
|[Management API](#management-api)|[api.moesif.com](https://api.moesif.com)|Generate a Management API key by logging into Moesif and going to _API keys_ from bottom left menu. Add it as a [Bearer token](https://swagger.io/docs/specification/authentication/bearer-authentication/) to the request `Authorization` header. [More info](#management-api)|

## API definitions

The _Collector API_ enables you to log raw data to Moesif at high volume such as events and user profiles. It's a write-only, high-volume data collection network and is also used by the Moesif server integrations and plugins.

The _Management API_ enables you to query and manage data in your Moesif account such as to embed charts in customer-facing applications.

## Delete a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.delete(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.delete(2)
```

```shell
curl "http://example.com/api/kittens/2" \
  -X DELETE \
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let max = api.kittens.delete(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "deleted" : ":("
}
```

This endpoint deletes a specific kitten.

### HTTP Request

`DELETE http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to delete


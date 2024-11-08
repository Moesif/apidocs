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
  - <a href='/docs/api/openapi/management-api.json'>Management OpenAPI Spec</a>
  - <a href='https://status.moesif.com'>API Status</a>
  - <a href='/docs'>Developer Docs</a>
  - <a href='/blog/changelog'>Changelog</a>

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
---

# Moesif API Reference

Moesif is an API analytics and monetization service to build and grow better API products. With Moesif, you can quickly get started with API observability, API monetization and usage-based billing.

 With Moesif, you cam This reference is for v1 of the Moesif APIs.
For an overview on the Moesif platform, see the [developer docs](/docs) or [implementation guides](https://www.moesif.com/implementation)

There are two APIs:

|Name|Host|Authentication|
|----|----|--------------|
|[Collector API](#collector-api)|[api.moesif.net](https://api.moesif.net)|Retrieve your Collector Application Id by logging into Moesif and going to _API keys_ from bottom left menu. Place in the request `X-Moesif-Application-Id` header. [More info](#collector-api)|
|[Management API](#management-api)|[api.moesif.com](https://api.moesif.com)|Generate a Management API key by logging into Moesif and going to _API keys_ from bottom left menu. Add it as a [Bearer token](https://swagger.io/docs/specification/authentication/bearer-authentication/) to the request `Authorization` header. [More info](#management-api)|

## API definitions

The _Collector API_ enables you to log your raw event data to Moesif at high volume such as API calls and user profiles. It's a write-only, high-volume data collection network and is also used by the Moesif server integrations and plugins.

The _Management API_ enables you to query and manage data in your Moesif account such as to embed charts in customer-facing applications.
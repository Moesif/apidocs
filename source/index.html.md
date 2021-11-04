---
title: Moesif API Documentation

language_tabs:
  - yaml: JSON
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
  - management-api/management-api

search: true
---

# Moesif API Reference

Moesif is a user behavior API analytics and monitoring service. You can leverage Moesif to answer questions around customer API usage in real-time.

This API reference centers around v1 of the Moesif REST APIs and API Client Libs.
For an overview on the Moesif platform, see the [developer docs](/docs) or [implementation guides](https://www.moesif.com/implementation)

There are two APIs:

|Name|Host|Authentication|
|----|----|--------------|
|[Collector API](#collector-api)|[api.moesif.net](https://api.moesif.net)|Retrieve your Collector Application Id by logging into Moesif and going to _API keys_ from top right menu. Place in the request `X-Moesif-Application-Id` header. [More info](#collector-api)|
|[Management API](#management-api)|[api.moesif.com](https://api.moesif.com)|Generate a Management API key by logging into Moesif and going to _API keys_ from top right menu. Add it as a [Bearer token](https://swagger.io/docs/specification/authentication/bearer-authentication/) to the request `Authorization` header. [More info](#management-api)|

## API definitions

The _Collector API_ is a write-only, high-volume data collection network used by Moesif SDKs and plugins. Use the collector API to log API calls and user actions to Moesif at scale along with updating user/company profiles.

The _Management API_ is enables you to query and manage your data in Moesif such as to build embedded charts and custom reports. Many of the extensions such as Salesforce also use this API.


# Using Server SDKs

Open-source middleware for common frameworks like Express and Django. The middleware monitors your RESTful API and sends the even data to api.moesif.net.

## How to Install

Select your language on the right:

* Javascript
* Python
* Ruby
* PHP

```javascript
// To Install the Node.JS Express Middleware, run in your terminal

> npm install --save moesif-express
```
```python
# To Install the Python Django Middleware, run in your terminal

> pip install moesifdjango
```
```ruby
# To Install the Ruby Rack/RoR Middleware, run in your terminal

> gem install moesif_rack
```
```php
# Install the PHP Laravel Middleware via composer:

composer require moesif/moesif-laravel
```
```go
Coming Soon
```
```csharp
Coming Soon
```
```java
Coming Soon
```

### Authentication
Each SDK takes an Application Id which authenticates your app with Moesif.
You can find your Application Id under *Menu -> App Setup Details*

## How to Use
```javascript
// Import Modules
var express = require('express');
var app = express();

var moesifExpress = require('moesif-express');

// Set the options, the only required field is applicationId.
var moesif = moesifExpress({applicationId: 'my_application_id'});

// Load the Moesif middleware
app.use(moesif);
```
```python
MIDDLEWARE = [
    ...
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'moesifdjango.middleware.moesif_middleware'
    ...
]

MOESIF_MIDDLEWARE = {
    'APPLICATION_ID': 'my_application_id',
    'REQUEST_HEADER_MASKS': ['header1', 'header2'],
    'REQUEST_BODY_MASKS': ['key1', 'key2'],
    'RESPONSE_HEADER_MASKS': ['header1', 'header2'],
    'RESPONSE_BODY_MASKS': ['key1', 'key2'],
}
```
```ruby
moesif_options = {
  'application_id' => 'my_application_id'
}

# within config/application.rb:
class Application < Rails::Application
  # snip

  config.middleware.use "MoesifRack::MoesifMiddleware", moesif_options

  # snip
end

```
```php
// 1. Add Service Provider

// within config/app.php:
'providers' => [
    Moesif\Middleware\MoesifLaravelServiceProvider::class,
];

// 2. Add to Middleware
// 2.a If website root is your API, add to the root level:

// within App/Http/Kernel.php
protected $middleware = [
    \Moesif\Middleware\MoesifLaravel::class,
];

// 2.b Else if API under specific route group, add to your route group:

// within App/Http/Kernel.php
protected $middlewareGroups = [
    'api' => [
        //
        \Moesif\Middleware\MoesifLaravel::class,
    ],
];

// 3. edit config/moesif.php
return [
    //
    'applicationId' => 'my_application_id',
];

```
<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

## How to Configure
<blockquote class="lang-specific javascript">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesif-express">https://github.com/Moesif/moesif-express</a><br><br><br>
Package:<br><br>
<a href="https://www.npmjs.com/package/moesif-express">https://www.npmjs.com/package/moesif-express</a>
</blockquote>

<blockquote class="lang-specific python">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesifdjango">https://github.com/Moesif/moesifdjango</a><br><br><br>
Package:<br><br>
<a href="https://pypi.python.org/pypi/moesifdjango">https://pypi.python.org/pypi/moesifdjango</a>
</blockquote>


<blockquote class="lang-specific ruby">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesif-rack">https://github.com/Moesif/moesif-rack</a><br><br><br>
Package:<br><br>
<a href="https://rubygems.org/gems/moesif_rack">https://rubygems.org/gems/moesif_rack</a>
</blockquote>

<blockquote class="lang-specific php">
Source Code:<br><br>
<a href="https://github.com/Moesif/moesif-laravel">https://github.com/Moesif/moesif-laravel</a><br><br><br>
Package:<br><br>
<a href="https://packagist.org/packages/moesif/moesif-laravel">https://packagist.org/packages/moesif/moesif-laravel</a>
</blockquote>
See respective README on GitHub repo for details

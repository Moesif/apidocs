## Errors

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request has an incorrect parameter
401 | Unauthorized -- Your `X-Moesif-Application-Id` or `Authorization` header is incorrect or missing required scopes
402 | Payment Required -- Your subscription is not active or has been cancelled
404 | Not Found -- The specified endpoint could not be found
405 | Method Not Allowed -- You tried to access a resource with an invalid HTTP method
406 | Not Acceptable -- You requested a format that is not JSON format, Moesif's API supports JSON
410 | Gone -- The resource requested has been removed from our servers
500 | Internal Server Error -- We had a problem with our server. Please [contact us](mailto:support@moesif.com)
502 | Bad Gateway -- A transient error when no server is available to handle your request, retry again or [contact us](mailto:support@moesif.com) if problem persists.
503 | Service Unavailable -- A transient error when no server is available to handle your request, retry again or [contact us](mailto:support@moesif.com) if problem persists.

## Errors

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request has an incorrect parameter
401 | Unauthorized -- Your `X-Moesif-Application-Id` or `Authorization` header is incorrect
403 | Forbidden -- You accessed a resource not allowed with your key
404 | Not Found -- The specified resource could not be found
405 | Method Not Allowed -- You tried to access a resource with an invalid HTTP method
406 | Not Acceptable -- You requested a format that is not JSON format, Moesif's API supports JSON
410 | Gone -- The resource requested has been removed from our servers
500 | Internal Server Error -- We had a problem with our server. Please [contact us](mailto:support@moesif.com)

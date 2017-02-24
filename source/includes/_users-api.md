# Users API

## Update a User

**`POST https://api.moesif.net/v1/users`**

Updates an end user profile in Moesif.

A custom JSON object can be placed in the `metadata` object which
will be stored as part of the user profile.

If present, Moesif will detect special metadata fields like:

  - email
  - name
  - first_name
  - last_name
  - phone
  - photo_url

If user does not exist, a new one will be created.
If a user exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
Example Request Body:
</blockquote>


```yaml
{
  "modified_time": "2017-02-22T04:45:42.914",
  "ip_address": "61.48.220.123",
  "session_token": "df32dkj32opxzfdmji4hf4fs98y18cx98q3yhwmnhcfx43f",
  "user_id": "123456",
  "user_agent_string": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36",
  "metadata": {
    "first_name": "John Doe",
    "last_name": "John Doe",
    "email": "john@gmail.com",
    "phone": "123-456-7890",
    "custom_string_field": "some_value"
    "custom_int_field": 55,
    "custom_obj_field": {
        "sub_a": "value_a",
        "sub_b": "value_b"
    }
  }
}

```


Fields | Required? | Description
--------- | -------- | -----------
modified_time | Optional | Last Modified Timestamp for the user in ISO 8601 format (Set automatically if not provided).
ip_address | Optional | Current IP address of the user, If not set, we use the IP address of the POST request.
session_token | Optional | Current end user session or API token such as a JWT or API key.
user_id | __Required__ | Your application's `user_id` to identify this user.
user_agent_string | Optional | If you want Moesif to parse a user agent string, you can do so via `user_agent_string`.
metadata | Optional | A JSON Object consisting of any custom metadata to be stored with this user.

## Update Users in Batch

**`POST https://api.moesif.net/v1/users/batch`**

Updates a list of end user profile in Moesif.

A custom JSON object can be placed in the `metadata` object of each user
which will be stored as part of the user profile.

If present, Moesif will detect special metadata fields like:

  - email
  - name
  - first_name
  - last_name
  - phone
  - photo_url

If user does not exist, a new one will be created.
If a user exists, it will be merged on top of existing fields.
Any new field set will override the existing fields.
This is done via recursive merge which merges inner objects.

<aside class="info">
Replace <i>my_application_id</i> with your real Application Id
</aside>

<blockquote class="lang-specific yaml">
Example Request Body:
</blockquote>
```yaml
[
  {
    "modified_time": "2017-02-22T04:45:42.914",
    "ip_address": "61.48.220.123",
    "session_token": "df32dkj32opxzfdmji4hf4fs98y18cx98q3yhwmnhcfx43f",
    "user_id": "12345",
    "user_agent_string": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36",
    "metadata": {
      "first_name": "John Doe",
      "last_name": "John Doe",
      "email": "john@gmail.com",
      "phone": "123-456-7890",
      "custom_string_field": "some_value"
      "custom_int_field": 55,
      "custom_obj_field": {
          "sub_a": "value_a",
          "sub_b": "value_b"
      }
    }
  },
  {
    "modified_time": "2017-02-22T04:45:42.914",
    "ip_address": "61.48.220.129",
    "session_token": "d2ewzcazchurvcqdevnhcuiyrgvru",
    "user_id": "7890",
    "user_agent_string": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36",
    "metadata": {
      "first_name": "Mary Doe",
      "last_name": "Mary Doe",
      "email": "mary@gmail.com",
      "phone": "123-456-7890",
      "custom_string_field": "some_value"
      "custom_int_field": 55,
      "custom_obj_field": {
          "sub_a": "value_a",
          "sub_b": "value_b"
      }
    }
  }
]

```

Fields | Required? | Description
--------- | -------- | -----------
modified_time | Optional | Last Modified Timestamp for the user in ISO 8601 format (Set automatically if not provided).
ip_address | Optional | Current IP address of the user, If not set, we use the IP address of the POST request.
session_token | Optional | Current end user session or API token such as a JWT or API key.
user_id | __Required__ | Your application's `user_id` to identify this user.
user_agent_string | Optional | If you want Moesif to parse a user agent string, you can do so via `user_agent_string`.
metadata | Optional | A JSON Object consisting of any custom metadata to be stored with this user.

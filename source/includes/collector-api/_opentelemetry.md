## OpenTelemetry

Moesif supports ingesting OpenTelemetry traces and logs through the 
[OpenTelemetry integration](https://www.moesif.com/docs/server-integration/open-telemetry/). 

### Send Trace Data

**`POST https://api.moesif.net/v1/traces`**

Sends a span payload. 

To authenticate, include your Moesif Application ID the request header `X-Moesif-Application-Id`.

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/traces</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
{
  "resourceSpans":[
    {
      "resource":{
        "attributes":[
          {
            "key":"resource-attr",
            "value":{
              "stringValue":"resource-attr-val-1"
            }
          }
        ]
      },
      "scopeSpans":[
        {
          "scope":{
            
          },
          "spans":[
            {
              "traceId":"",
              "spanId":"",
              "parentSpanId":"",
              "name":"operationA",
              "startTimeUnixNano":"1581452772000000321",
              "endTimeUnixNano":"1581452773000000789",
              "droppedAttributesCount":1,
              "events":[
                {
                  "timeUnixNano":"1581452773000000123",
                  "name":"event-with-attr",
                  "attributes":[
                    {
                      "key":"span-event-attr",
                      "value":{
                        "stringValue":"span-event-attr-val"
                      }
                    }
                  ],
                  "droppedAttributesCount":2
                },
                {
                  "timeUnixNano":"1581452773000000123",
                  "name":"event",
                  "droppedAttributesCount":2
                }
              ],
              "droppedEventsCount":1,
              "status":{
                "message":"status-cancelled",
                "code":2
              }
            },
            {
              "traceId":"",
              "spanId":"",
              "parentSpanId":"",
              "name":"operationB",
              "startTimeUnixNano":"1581452772000000321",
              "endTimeUnixNano":"1581452773000000789",
              "links":[
                {
                  "traceId":"",
                  "spanId":"",
                  "attributes":[
                    {
                      "key":"span-link-attr",
                      "value":{
                        "stringValue":"span-link-attr-val"
                      }
                    }
                  ],
                  "droppedAttributesCount":4
                },
                {
                  "traceId":"",
                  "spanId":"",
                  "droppedAttributesCount":1
                }
              ],
              "droppedLinksCount":3,
              "status":{
                
              }
            }
          ]
        }
      ]
    }
  ]
}
```

### Send Log Data

**`POST https://api.moesif.net/v1/logs`**

Sends a log record. 

To authenticate, include your Moesif Application ID the request header `X-Moesif-Application-Id`.

<blockquote class="lang-specific json">
<code><b>POST</b> https://api.moesif.net/v1/logs</code>
<br><br><i>Example Request</i><br>
</blockquote>
```json
{
  "resourceLogs":[
    {
      "resource":{
        "attributes":[
          {
            "key":"resource-attr",
            "value":{
              "stringValue":"resource-attr-val-1"
            }
          }
        ]
      },
      "scopeLogs":[
        {
          "scope":{
            
          },
          "logRecords":[
            {
              "timeUnixNano":"1581452773000009875",
              "severityNumber":9,
              "severityText":"Info",
              "body":{
                "stringValue":"This is a log message"
              },
              "attributes":[
                {
                  "key":"app",
                  "value":{
                    "stringValue":"server"
                  }
                },
                {
                  "key":"instance_num",
                  "value":{
                    "intValue":"1"
                  }
                }
              ],
              "droppedAttributesCount":1,
              "traceId":"08040201000000000000000000000000",
              "spanId":"0102040800000000"
            },
            {
              "timeUnixNano":"1581452773000000789",
              "severityNumber":9,
              "severityText":"Info",
              "body":{
                "stringValue":"something happened"
              },
              "attributes":[
                {
                  "key":"customer",
                  "value":{
                    "stringValue":"acme"
                  }
                },
                {
                  "key":"env",
                  "value":{
                    "stringValue":"dev"
                  }
                }
              ],
              "droppedAttributesCount":1,
              "traceId":"",
              "spanId":""
            }
          ]
        }
      ]
    }
  ]
}
```


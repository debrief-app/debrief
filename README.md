debrief
=======

* Accessing the API

Go to http://localhost:3000/oauth/applications, create an application. Copy the application ID.

Make a request like this:

```
curl -i https://localhost:3000.com/oauth/token \
     -F grant_type=password \
     -F client_id=<client_id> \
     -F username=user@example.com \
     -F password=password
```

You should get a response like this:

```
{"access_token":"7f6845ab12add8923368ed2e0e2a2bb61fd406cd71362fbea8fc6fe616a947fb","token_type":"bearer","expires_in":7200}
```

Copy the access token and make requests like:

```
http://localhost:3000/api/v1/briefs?access_token=7f6845ab12add8923368ed2e0e2a2bb61fd406cd71362fbea8fc6fe616a947fb
```
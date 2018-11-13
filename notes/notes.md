# Notes

## haproxy redirect
* https://stackoverflow.com/questions/30256571/haproxy-path-to-host-path
* https://cbonte.github.io/haproxy-dconv/1.7/configuration.html

## Routes for shimmer-resource-server (authorize should go to shimmer)

http://tomcat.nuchange.ca/authorize/googlefit?username="username" - http://<shimmer-host>:8083/authorize/{shimKey}?username={userId}
http://tomcat.nuchange.ca/authorize/googlefit/callback?state="whatever" - http://<<shimmer-host>:8083/authorize/{shimKey}/callback

 {[/deauthorize/{shim}],methods=[DELETE]
{[/data/{shim}/{dataType}]

## Routes for console (Port is 8083 not 8084)

/registry (This is most likely be on server)
/authorizations?username=asdsfsdfsf
* It may be better to keep this as the default container as several paths such as /styles, /scripts, /views and favicon are needed.

## Auth server
* The authorization server manages the granting of access tokens to clients according to the OAuth 2.0 specification. 
* Adding a client
```
INSERT INTO oauth_client_details (
  client_id,
  client_secret,
  scope,
  resource_ids,
  authorized_grant_types,
  authorities
)
VALUES (
  'testClient',
  'testClientSecret',
  'read_data_points,write_data_points,delete_data_points',
  'dataPoints',
  'authorization_code,implicit,password,refresh_token',
  'ROLE_CLIENT'
);
```
* Ading end users
```
curl -H "Content-Type:application/json" --data '{"username": "testUser", "password": "testUserPassword"}' http://host:8082/users
```

The user creation endpoint is primitive by design; it is only meant as a way to bootstrap a couple users when first starting out. In general, the creation of users is typically the concern of a user management component, not the authorization server. And it's quite common for integrators to already have a user management system complete with its own user account database before introducing the authorization server.

To integrate a user management system with the authorization server, you would

Disable the org.openmhealth.dsu.controller.EndUserController, usually by commenting out the @Controller annotation.
Provide your own implementation of either the org.openmhealth.dsu.service.EndUserService or the org.openmhealth.dsu.repository.EndUserRepository, populating org.openmhealth.dsu.domain.EndUser instances with data read from your own data stores or APIs.

* API specification here: https://github.com/openmhealth/omh-dsu-ri/blob/master/docs/raml/API.yml
* samp[le data point in https://github.com/openmhealth/omh-dsu-ri

## Resource server
* authorizationServer.host - IP address of your Docker host (on Mac OS X and Windows, docker-machine ip <host> will print this IP to the console)
* authorizationServer.port - 8082
* resourceServer.host - IP address of your Docker host
* resourceServer.port - 8083
* accessToken - issue the get access token using RO password grant/success request and copy the access_token value from the response here, without quotes
* apiVersion - 1.0.M1
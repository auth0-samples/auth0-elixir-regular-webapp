# Auth0 Phoenix Portal Sample

 Auth0 Universal Login with Phoenix & Elixir - as a Regular Web Application using code authorization grant flow.

 Note on versions. This sample was developed and tested against:

 - Elixir v1.6
 - Phoenix v1.3
 - Erlang / OTP v20.2

Please see respective websites for details on installation and setup.
Auth0 does also offer a docker container if preferrred with all dependencies pre-installed. 

## Setup

### Dashboard

Create a regular web application Client.

Under settings ensure you have:

Client-Type: Regular Web Application 

Allowed Callback URLs:
 - http://localhost:3000/auth/auth0/callback
 - http://app1.com:3000/auth/auth0/callback

Under Advanced Settings -> Oauth, switch ON the OIDC Conformant toggle.

Set up a Database connection, and optionally social connections.
For example, test against Auth0 DB Connection and Google Social Auth.

Note: Phoenix apps by default use port 4000.
This sample uses port 3000 - see `config/dev.exs`

### Locally

Would recommend also adding to your local `hosts` file 

```
127.0.0.1	app1.com
```

Then access the application from browser at `http://app1.com:3000`

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`
  * AUTH0_DOMAIN={your_tenant_name}.auth0.com \
    AUTH0_CLIENT_ID={your_client_id}\
    AUTH0_CLIENT_SECRET={your_client_secret}\
    mix phx.server

  Example:

    AUTH0_DOMAIN=demonstration.auth0.com \
    AUTH0_CLIENT_ID=EWuRsjxxxxxxxxxxxr40wuSOQNLtKx \
    AUTH0_CLIENT_SECRET=tvHexxxxxxxxxxxxxxxxxx3lhub1UJnOk \
    mix phx.server

Now you can visit [`app1.com:3000`](http://app1.com:3000) from your browser.

or alternatively:

Now you can visit [`localhost:3000`](http://localhost:3000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more about phoenix

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


## What is Auth0?

Auth0 helps you to:

* Add authentication with [multiple authentication sources](https://docs.auth0.com/identityproviders), either social like **Google, Facebook, Microsoft Account, LinkedIn, GitHub, Twitter, Box, Salesforce, amont others**, or enterprise identity systems like **Windows Azure AD, Google Apps, Active Directory, ADFS or any SAML Identity Provider**.
* Add authentication through more traditional **[username/password databases](https://docs.auth0.com/mysql-connection-tutorial)**.
* Add support for **[linking different user accounts](https://docs.auth0.com/link-accounts)** with the same user.
* Support for generating signed [Json Web Tokens](https://docs.auth0.com/jwt) to call your APIs and **flow the user identity** securely.
* Analytics of how, when and where users are logging in.
* Pull data from other sources and add it to the user profile, through [JavaScript rules](https://docs.auth0.com/rules).

## Create a free account in Auth0

1. Go to [Auth0](https://auth0.com) and click Sign Up.
2. Use Google, GitHub or Microsoft Account to login.

## Issue Reporting

If you have found a bug or if you have a feature request, please report them at this repository issues section. Please do not report security vulnerabilities on the public GitHub issue tracker. The [Responsible Disclosure Program](https://auth0.com/whitehat) details the procedure for disclosing security issues.

## Author

[Auth0](auth0.com)

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for more info.


## Chatty: The Rails 5.2 + Action Cable Example App

This is a really simple chatting app to demonstrate one implementation of Action Cable in a Rails 5 app.

Authentication implemented by [device](https://github.com/plataformatec/devise). Users can sign up/log in with a username/email and create a chatroom or choose from an existing one to start real-time messaging.

The implementation uses **multipe subscriptions** to multiple chatrooms

### Running Locally

You'll need:

* Ruby 2.5.1
* Postgres
* Redis

Then, once you clone down this repo:

* `bundle install`
* `rake db:create; rake db:migrate`

And you're all set.

## Sample jruby-pg app

### Gemfile setup

This is a sample app demonstrating using jruby-pg with a rails app. Add the
following to the `Gemfile`:

```ruby
platform :jruby do
  gem 'pg', '0.18', :platform => :jruby, :git => 'git://github.com/headius/jruby-pg.git', :branch => :master
end
```

### Setup database.yml

```yml
development:
  <<: *default
  adapter: postgresql
  database: foobar
```

### Create database

```
createdb foobar
```

### Migrate

The app has a `foobars` model, run the following to run the migration

```
rake db:migrate
```

if RUBY_VERSION < '2.4.0' && RUBY_PLATFORM != 'java'
  if RUBY_VERSION >= '1.9.1'
    appraise 'rails32-mysql2' do
      gem 'test-unit'
      gem 'rails', '3.2.22.5'
      gem 'mysql2', '0.3.21', platform: :ruby
      gem 'activerecord-mysql-adapter', platform: :ruby
      gem 'activerecord-jdbcmysql-adapter', platform: :jruby
      gem 'rack-cache', '1.7.1'
    end
  end

  if RUBY_VERSION >= '1.9.1'
    appraise 'rails30-postgres' do
      gem 'test-unit'
      gem 'rails', '3.0.20'
      gem 'pg', '0.15.1', platform: :ruby
      gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
      gem 'rack-cache', '1.7.1'
    end

    if RUBY_VERSION < '2.2.2'
      appraise 'rails30-postgres-sidekiq' do
        gem 'test-unit'
        gem 'rails', '3.0.20'
        gem 'pg', '0.15.1', platform: :ruby
        gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
        gem 'sidekiq', '4.0.0'
        gem 'rack-cache', '1.7.1'
      end
    end

    appraise 'rails32-postgres' do
      gem 'test-unit'
      gem 'rails', '3.2.22.5'
      gem 'pg', '0.15.1', platform: :ruby
      gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
      gem 'rack-cache', '1.7.1'
    end

    appraise 'rails32-postgres-redis' do
      gem 'test-unit'
      gem 'rails', '3.2.22.5'
      gem 'pg', '0.15.1', platform: :ruby
      gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
      gem 'redis-rails'
      gem 'redis', '< 4.0'
      gem 'rack-cache', '1.7.1'
    end

    if RUBY_VERSION < '2.2.2'
      appraise 'rails32-postgres-sidekiq' do
        gem 'test-unit'
        gem 'rails', '3.2.22.5'
        gem 'pg', '0.15.1', platform: :ruby
        gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
        gem 'sidekiq', '4.0.0'
        gem 'rack-cache', '1.7.1'
      end
    end
  end

  if RUBY_VERSION >= '2.1.10'
    appraise 'rails4-mysql2' do
      gem 'rails', '4.2.7.1'
      gem 'mysql2', '< 0.5', platform: :ruby
      gem 'activerecord-jdbcmysql-adapter', platform: :jruby
    end

    appraise 'rails4-postgres' do
      gem 'rails', '4.2.7.1'
      gem 'pg', '< 1.0', platform: :ruby
      gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
    end

    appraise 'rails4-postgres-redis' do
      gem 'rails', '4.2.7.1'
      gem 'pg', '< 1.0', platform: :ruby
      gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
      gem 'redis-rails'
      gem 'redis', '< 4.0'
    end
  end

  if RUBY_VERSION >= '2.2.2'
    appraise 'rails5-mysql2' do
      gem 'rails', '5.1.5'
      gem 'mysql2', '< 0.5', platform: :ruby
    end

    appraise 'rails5-postgres' do
      gem 'rails', '5.1.5'
      gem 'pg', '< 1.0', platform: :ruby
    end

    appraise 'rails5-postgres-redis' do
      gem 'rails', '5.1.5'
      gem 'pg', '< 1.0', platform: :ruby
      gem 'redis-rails'
      gem 'redis'
    end

    appraise 'rails5-postgres-sidekiq' do
      gem 'rails', '5.1.5'
      gem 'pg', '< 1.0', platform: :ruby
      gem 'sidekiq'
      gem 'activejob'
    end

    appraise 'rails4-postgres-sidekiq' do
      gem 'rails', '4.2.7.1'
      gem 'pg', '< 1.0', platform: :ruby
      gem 'activerecord-jdbcpostgresql-adapter', platform: :jruby
      gem 'sidekiq'
      gem 'activejob'
    end
  end
end

if RUBY_VERSION >= '2.2.2' && RUBY_PLATFORM != 'java'
  appraise 'contrib' do
    gem 'elasticsearch-transport'
    gem 'mongo', '< 2.5'
    gem 'graphql'
    gem 'grape'
    gem 'rack'
    gem 'rack-test'
    gem 'redis', '< 4.0'
    gem 'hiredis'
    gem 'sinatra'
    gem 'sqlite3'
    gem 'activerecord', '< 5.1.5'
    gem 'sidekiq'
    gem 'aws-sdk'
    gem 'sucker_punch'
    gem 'dalli'
    gem 'resque', '< 2.0'
    gem 'racecar', '>= 0.3.5'
    gem 'mysql2', '< 0.5', platform: :ruby
  end
else
  appraise 'contrib-old' do
    gem 'elasticsearch-transport'
    gem 'mongo', '< 2.5'
    gem 'redis', '< 4.0'
    gem 'hiredis'
    gem 'rack', '1.4.7'
    gem 'rack-test', '0.7.0'
    gem 'rack-cache', '1.7.1'
    gem 'sinatra', '1.4.5'
    gem 'sqlite3'
    gem 'activerecord', '3.2.22.5'
    gem 'sidekiq', '4.0.0'
    gem 'aws-sdk', '~> 2.0'
    gem 'sucker_punch'
    gem 'dalli'
    gem 'resque', '< 2.0'
    gem 'mysql2', '0.3.21', platform: :ruby
    gem 'activerecord-mysql-adapter', platform: :ruby
  end
end

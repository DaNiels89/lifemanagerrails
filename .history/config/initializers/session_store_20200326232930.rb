# frozen_string_literal: true

if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_rails-life-manager', domain: 'https://life-manager-bog-rails.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: '_rails-life-manager'
end

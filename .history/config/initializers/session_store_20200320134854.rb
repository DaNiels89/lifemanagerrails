# frozen_string_literal: true

if Rails.env === 'production'
  Rails.application.config.session_store 
  :cookie_store, key: '_rails-life-manager', domain: 'your-frontend-domain'
else
  Rails.application.config.session_store :cookie_store, key: '_rails-life-manager'
end

# frozen_string_literal: true

# frozen_string_literal: true
Devise.setup do |config|
  config.secret_key = '082c412200b759def8f99b4d240f575f5b4a0b531b59dba3b64da5889b300df019aa1a504538ad6a43677c2162eccca74275864008eaa2efc2dad306320c9458'
  config.mailer_sender = 'rykn0wxx@noreply.com'
  require 'devise/orm/active_record'
  config.authentication_keys = [:login]
  # config.request_keys = []
  config.case_insensitive_keys = [:login]
  config.strip_whitespace_keys = [:login]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.pepper = 'ba55af76d5a69efd02e62eb44d14ab2d147c63d3bb737a3d9fb91cfbed77fa07d9633cb4d60991f733a2345145afc1b3be8331ab2cd076948e08f3ff3e907347'
  config.reconfirmable = false
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 2..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  ActiveSupport.on_load(:devise_failure_app) do
    include Turbolinks::Controller
  end
end

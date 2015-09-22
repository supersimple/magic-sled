OmniAuth.config.logger = Rails.logger

OMNIAUTH_CONFIG = File.exists?("#{Rails.root}/config/omniauth.yml") ? YAML.load(File.read("#{Rails.root}/config/omniauth.yml")).deep_symbolize_keys : {}

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, OMNIAUTH_CONFIG[:google_oauth2][:client_id], OMNIAUTH_CONFIG[:google_oauth2][:client_secret]
  provider :facebook, OMNIAUTH_CONFIG[:facebook][:client_id], OMNIAUTH_CONFIG[:facebook][:client_secret]
end
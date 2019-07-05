Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "repo", provider_ignores_state: true
end

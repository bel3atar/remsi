OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '399240280131217', 'f7f27153fc76584a6350d3ec02147a97'
end
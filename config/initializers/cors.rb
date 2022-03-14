# Initialize CORS at start
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV["UI_ORIGIN"]
    resource ENV["UI"], headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end
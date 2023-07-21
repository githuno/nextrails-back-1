# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# 環境変数を呼び出す
port = ENV['PORT1']
# ポート番号を切り出す
hostp = port.split(':')[1] || port

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "localhost:#{hostp}"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

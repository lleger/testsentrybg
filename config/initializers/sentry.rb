Raven.configure do |config|
  config.dsn = 'https://be1f5b46b6354aa8b1fb1f67f2bfc462:1e21db4a18aa4e2e9404cf6680342fdc@app.getsentry.com/56868'
  config.environments = ['development', 'production']

  config.async = lambda do |event|
    ReportSentryJob.perform_later(event.to_hash)
  end
end

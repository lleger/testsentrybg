class ExceptionJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    raise ArgumentError, 'Test Sentry background'
  end
end

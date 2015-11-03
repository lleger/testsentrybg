class ExceptionController < ApplicationController
  def new
    raise ArgumentError, 'Test Sentry'
  end

  def background
    ExceptionJob.perform_later
  end

  def background_with_model
    ExceptionJob.perform_later(Post.first)
  end
end

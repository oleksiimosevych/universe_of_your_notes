class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :names
  def names
    @credo = "YOUR UNIVERSE. YOUR NOTES. on the cloud"
    @app_name = 'The Universe of Your notes'

  end

end
class ApplicationController < ActionController::Base
   # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
   allow_browser versions: :modern

  private
  
  def default_url_options
    { host: ENV['DOMAIN'] || 'localhost:3000' }
  end
end
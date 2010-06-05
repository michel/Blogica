class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'  
  
     
  def current_user
    @current_user
  end
  
  def authenticate
     authenticate_or_request_with_http_basic do |id, password|
       @current_user = User.first :conditions => {:username => "michel", :password => Digest::MD5.hexdigest(password)}
       !@current_user.nil?       
     end
  end
end

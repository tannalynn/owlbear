class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  layout 'application'
  
  
  def login_page

    render html: "LOGIN PAGE!!"  
  end
  
  
end

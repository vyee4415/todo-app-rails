class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def hello
    render html: "http://cdn2.business2community.com/wp-content/uploads/2011/03/1095867_56160494.jpg"
  end
 
end

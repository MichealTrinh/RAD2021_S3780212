module ApplicationHelper
  def checkPageType
    current_uri = request.env['PATH_INFO']
    current_uri == '/login' || current_uri == '/signup' || current_uri == '/carts' || current_uri == '/static_pages/menu' || current_uri == '/static_pages/search' || current_uri == "/users/#{session[:user_id]}/edit"
  end
end

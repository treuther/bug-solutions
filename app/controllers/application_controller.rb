require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "insects"
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      !!current_user #turns current_user into boolean (true/false)
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def if_not_logged_in_redirect
      if !logged_in?
        redirect '/login'
      end
    end

  end

end

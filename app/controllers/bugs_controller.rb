class BugsController < ApplicationController

  # GET: /bugs
  get '/bugs' do
    if !logged_in?
      redirect '/login'
    end
    erb :'bugs/index'
  end

  # GET: /bugs/new
  get "/bugs/new" do
    if logged_in?
      erb :"/bugs/new"
    else
      redirect '/login'
    end
  end

  # POST: /bugs
  post "/bugs" do
    @bug = Bug.new(bug_name: params[:bug_name])
    if !params[:bug_name].empty?
      current_user.bugs << @bug
      @bug.save
      redirect "/bugs"
    else
      redirect to "/bugs/new"
    end
  end

  # GET: /bugs/5
  get '/bugs/:id' do
    if logged_in?  
      @bug = Bug.find_by(id: params[:id])
      @user = User.find_by(id: @bug.user_id)
      erb :'/bugs/show'
    else
      redirect '/login'
    end
  end

  # GET: /bugs/5/edit
  get "/bugs/:id/edit" do
    erb :"/bugs/edit"
  end

  # PATCH: /bugs/5
  patch "/bugs/:id" do
    redirect "/bugs/:id"
  end

  # DELETE: /bugs/5/delete
  delete "/bugs/:id/delete" do
    redirect "/bugs"
  end
end

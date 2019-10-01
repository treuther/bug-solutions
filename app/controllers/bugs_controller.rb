class BugsController < ApplicationController

  # GET: /bugs
  get "/bugs" do
    erb :"/bugs/index"
  end

  # GET: /bugs/new
  get "/bugs/new" do
    erb :"/bugs/new"
  end

  # POST: /bugs
  post "/bugs" do
    redirect "/bugs"
  end

  # GET: /bugs/5
  get "/bugs/:id" do
    erb :"/bugs/show"
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

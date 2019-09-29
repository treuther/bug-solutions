class BuGsController < ApplicationController

  # GET: /bu_gs
  get "/bu_gs" do
    erb :"/bu_gs/index.html"
  end

  # GET: /bu_gs/new
  get "/bu_gs/new" do
    erb :"/bu_gs/new.html"
  end

  # POST: /bu_gs
  post "/bu_gs" do
    redirect "/bu_gs"
  end

  # GET: /bu_gs/5
  get "/bu_gs/:id" do
    erb :"/bu_gs/show.html"
  end

  # GET: /bu_gs/5/edit
  get "/bu_gs/:id/edit" do
    erb :"/bu_gs/edit.html"
  end

  # PATCH: /bu_gs/5
  patch "/bu_gs/:id" do
    redirect "/bu_gs/:id"
  end

  # DELETE: /bu_gs/5/delete
  delete "/bu_gs/:id/delete" do
    redirect "/bu_gs"
  end
end

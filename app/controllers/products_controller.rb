class ProductsController < ApplicationController

  # GET: /products
  get '/products' do
    if logged_in?
      @product = Product.all
      @user = current_user
      erb :'products/index'
    else
      redirect '/login'
    end
  end

  # GET: /products/new
  get "/products/new" do
    erb :"/products/new.html"
  end

  # POST: /products
  post "/products" do
    redirect "/products"
  end

  # GET: /products/5
  get "/products/:id" do
    erb :"/products/show.html"
  end

  # GET: /products/5/edit
  get "/products/:id/edit" do
    erb :"/products/edit.html"
  end

  # PATCH: /products/5
  patch "/products/:id" do
    redirect "/products/:id"
  end

  # DELETE: /products/5/delete
  delete "/products/:id/delete" do
    redirect "/products"
  end
  
end

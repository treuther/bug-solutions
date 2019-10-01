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
  get '/products/new' do
    @bugs = Bug.all 
    if logged_in?
      erb :'/products/new'
    else
      redirect to "/login"
    end
  end

  # POST: /products
  post "/products" do
    @product = Product.new(product_name: params[:product_name], active_ingredient: params[:active_ingredient], description: params[:description], user_id: session[:user_id])
    if !params[:product_name].empty? && !params[:active_ingredient].empty? && !params[:description].empty?
      current_user.products << @product
      if !params[:bug][:bug_name].empty?
        @product.bugs << Bug.create(params[:bug])
      end
      @product.save
      redirect to "/products"
    else
      redirect to "/products/new"
    end
  end

  # GET: /products/5
  get '/products/:id' do
    if logged_in?
      @product = Product.find_by(id: params[:id])
      @user = User.find_by(id: @product.user_id)
      erb :'/products/show'
    else
      redirect '/login'
    end
  end


  # GET: /products/5/edit
  get "/products/:id/edit" do
    erb :"/products/edit"
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

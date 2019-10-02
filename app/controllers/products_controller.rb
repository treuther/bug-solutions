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
  get '/products/:id' do        #ERROR HAPPENING WITH THIS AND PATCH TO SAVE PRODUCT EDITS
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
    if logged_in?
      @product = Product.find_by(id: params[:id])
      @user = User.find_by(id: @product.user_id)
      if @user == current_user
        erb :'/products/edit'
      else
        redirect to "/products"
      end
    else
      redirect to "/login"
    end
  end

  # PATCH: /products/5
  patch "/products/:id" do
    @product = Product.find_by(id: params[:id])
    if @user == current_user && !params[:product_name].empty? && !params[:active_ingredient].empty? && !params[:description].empty?
      @product.update(product_name: params[:product_name], active_ingredient: params[:active_ingredient], description: params[:description])
      if !params[:bug][:bug_name].empty?
        @product.bugs << Bug.create(params[:bug])
      end
    @product.save
    redirect to "/products"
    elsif
      redirect to "/products/edit"
    else
      redirect to "/login"
    end 
  end

  # DELETE: /products/5/delete
  delete "/products/:id/delete" do
    redirect "/products"
  end
  
end

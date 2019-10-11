class ProductsController < ApplicationController

  # GET: /products
  get '/products' do
    if !logged_in?
      redirect '/login'
    else
      @product = Product.all
      erb :'products/index'
    end
  end

  # GET: /products/new
  get '/products/new' do
    # @bugs = Bug.all 
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
      if params[:product]
        params[:product][:bug_ids].each do |bug_id|
          @product.bugs << Bug.find_by_id(bug_id)
        end
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
    if logged_in?
      @product = Product.find_by(id: params[:id])
      if @product.user == current_user
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
    if @product.user_id == current_user.id && !params[:product_name].empty? && !params[:active_ingredient].empty? && !params[:description].empty?
      @product.update(product_name: params[:product_name], active_ingredient: params[:active_ingredient], description: params[:description])
      @product.bugs = []
      if params[:product]
        if !params[:product][:bug_ids].empty?
          params[:product][:bug_ids].each do |bug_id|
            @product.bugs << Bug.find_by_id(bug_id)
          end
        end
      end
      if !params[:bug][:bug_name].empty?
        @product.bugs << Bug.create(params[:bug])
      end
      @product.save
      redirect to "/products/#{@product.id}"
    elsif
      redirect to "/products/#{@product.id}/edit"
    else
      redirect to "/login"
    end
  end

  # DELETE: /products/5/delete
  delete '/products/:id/delete' do
    if logged_in?
      @product = Product.find_by_id(params[:id])
      if @product && @product.user == current_user
        @product.delete
      end
      redirect to '/products'
    else
      redirect to '/login'
    end
  end
  
end

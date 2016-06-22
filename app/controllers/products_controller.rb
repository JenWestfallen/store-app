class ProductsController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index

    @test_token = ENV['test_api_token']
    @test_secret = ENV['test_api_secret']


    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    sort_name = params[:name_order]
    search_term = params[:search_term]
    discount = params[:sale]
    category_type = params[:category]

    if category_type
      @products = Category.find_by(name: category_type).products
    end

    if sort_name
      @products = @products.order(sort_name)
    end

    if discount 
      @products = @products.where("price < ?", 10)
    end

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    else
      @products = Product.all
    end

    if search_term
      @products = @products.where("name LIKE ? OR description LIKE ?", "%{search_term}%", "%{search_term}%")
    end
      
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      #image: params[:image],
      description: params[:description]
      )
  if @product.save
    Image.create(image: params[:image], product_id: @product.id) if params[:image] != ""

    flash[:success]="Product Created"

    redirect_to "/products/#{@product.id}"
  else
    render :new
  end
  end
  
  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(
            name: params[:name],
            price: params[:price],
            #image: params[:image],
            description: params[:description]
            )
    
      flash[:success]="Product Updated"

      redirect_to "/products/#{@product.id}"
    else
      render :edit 
    end
    end

    def destroy
      @product = Product.find(params[:id])

      @product.destroy
      flash[:warning] = "Product Deleted"

      redirect_to "/"
      
    end


  #def random
   # product = Product.all.sample

   # redirect_to "/products/#{product.id}"
  #end

  def show_images
    images = Image.all
  end

end



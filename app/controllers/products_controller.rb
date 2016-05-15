class ProductsController < ApplicationController
  def all
    @products = Product.all
  end

  def index
    @products = Product.all
  end

  def show
    @product=Product.find(params[:id])
  end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

    flash[:success]="Recipe Created"

    redirect_to "/products/#{@product.id}"
  end
  
  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

     flash[:success]="Product Updated"

      redirect_to "/products/#{@product.id}"
    end

    def destroy
      @product = Product.find(params[:id])

      @product.destroy
      flash[:warning] = "Product Deleted"

      redirect_to "/"
      
    end

end



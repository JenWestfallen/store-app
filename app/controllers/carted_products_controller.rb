class CartedProductsController < ApplicationController
    
    before_action :authenticate_user!

    def index
      if user_signed_in? && current_user.carted_items.count > 0
      @carted_products = CartedProduct.where(user_id: current_user.id, status: 'carted')
      else
        flash[:info] = "Why don't you add some items to your cart?"
        redirect_to '/'
      end
    end

    def create
 
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id],
      order_id: params[:order_id],
      status: "carted"
      )
   
    #@order.calculate_figures(@order.product.price)

    session[:cart_count] = nil
    flash[:success]="Product Added To Cart"

    redirect_to "/carted_products"
  end

  def show
    @carted_product = CartedProduct.find(params[:id])
    #@product = Product.find(@order.product_id)
  end


  def new
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")

    session[:cart_count] = nil
    flash[:success] = "Removed Item"
    redirect_to '/carted_products'
  end

end




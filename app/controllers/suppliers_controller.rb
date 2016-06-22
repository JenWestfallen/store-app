class SuppliersController < ApplicationController


  def index
    @suppliers = Supplier.all
  end

  def new
  end

  def create
    @suppliers = Supplier.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
      )

    flash[:success] = "Supplier Created"
  end

  def show
    @supplier = Supplier.find(params[:id])
  end


  def edit
    @supplier = Supplier.find_by(id: params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    @supplier.update(
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
      )

    flash[:success] = "Supplier Updated"
  end

  def destroy
    @supplier = Supplier.find(params[:id])

    flash[:warning] = "Supplier Destroyed"
  end

end
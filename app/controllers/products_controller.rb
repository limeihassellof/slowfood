class ProductsController < ApplicationController
  def index
    @products = Product.all #all means get array with one object
    @restaurant = Restaurant.find(1)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new# this product is empty
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)# becease of paramis, so this is populated. but it is not saved, so we need .save to save it.
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params[:product][:price] = params[:product][:price].to_i
    params[:product][:category_id] = params[:product][:category_id].to_i
    params.require(:product).permit(:name, :desc, :price, :category_id )
  end
end

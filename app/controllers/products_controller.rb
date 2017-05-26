class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
  #avant de filter sur les catégories  @products = Product.all
  if params[:cateogry]
    @products = Product.where(cateogry: params[:category])
    else
     @products = Product.all
   end
  end
  def show
  #after refacto  @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    if @product.save
        redirect_to products_path
      else
        render :new
      end
  end
  def edit
  #after refacto  @product = Product.find(params[:id])
  end
  def update
  #after refacto  @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to products_path
      else
        render :edit
      end
  end
  def destroy
  #after refacto  @product = Product.find(params[:id])
      @product.destroy
      redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :url, :tagline, :category)
  end
  def find_product
      @product = Product.find(params[:id])
  end
  end

  class ProductsController < ApplicationController

#  PRODUCTS = [
#               {name: "Kudoz", category: "Pro"},
#                {name: "uSlide", category: "Education"},
#                {name: "Hubum", category: "Lifestyle"},
#                {name: "Roadstr", category: "Lifestyle"}
#             ]
def index
  # @products = ["kudoz", "uSlide", "Hubum", "Roadstr"]
  # render plain: products.join(", ")
#   if params[:filter]
#    @products = PRODUCTS.select {|product| product[:category] == params[:filter]}
#   else
#    @products = PRODUCTS
#  end
  @products = Product.all
end

def show
#  @product = PRODUCTS[params[:id].to_i]
  @product = Product.find(params[:id])
end

def new
end

def create
end

def edit
end

def update
end

def destroy
end

end

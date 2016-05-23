class CategoriesController < ApplicationController
    def show
        @categories = Category.all
        @category = Category.find(params[:id])
        if params[:search]
          @products = Product.search(params[:search])
        else
          @products = Product.all
        end
    end
end

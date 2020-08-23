class ProductsController < ApplicationController
    def index 
        @products = Product.all
        if check_language(params) 
            @products = @products.filter_by_arabic_name(params[:name]) if params[:name].present?
        else 
            @products = @products.filter_by_english_name(params[:name]) if params[:name].present?
        end
        render json: @products
    end 

    def check_language(params)
        if params[:name] =~ /\p{Arabic}/ 
            return true
        else 
            return false
        end
    end
end

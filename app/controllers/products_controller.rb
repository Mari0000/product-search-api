class ProductsController < ApplicationController
    def index 
        if params[:name].present? && check_language(params)
            @products = Product.filter_by_arabic_name(params[:name])
        elsif params[:name].present? && !check_language(params)     
            @products = Product.filter_by_english_name(params[:name])
        else 
            @products = Product.all    
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

class ProductsController < ApplicationController
    def index 
        @products = Product.where(nil)
        filtering_params(params).each do |key, value|
            @products = @products.public_send("filter_by_#{key}", value) if value.present?
        end
        render json: @products
    end 

    # A list of the param names that can be used for filtering the Product list
    def filtering_params(params)
        params.slice(:arabic_name, :english_name)
    end
end

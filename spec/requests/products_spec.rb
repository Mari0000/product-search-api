require 'rails_helper'

RSpec.describe 'Products API', type: :request do
    let!(:products) { create_list(:product, 2) }
    let(:product) { products.first }

     # Test suite for GET /products
  describe 'GET /products' do
    # make HTTP get request before each example
    before { get '/products' }

    it 'returns products' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(2)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

     # Test suite for GET /products
  describe 'GET /products?search' do
    # make HTTP get request before each example
    before { get "/products?arabic_name=#{product.arabic_name}" }

    it 'returns products' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
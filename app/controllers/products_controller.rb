# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by!(slug: params[:slug])
  end
end

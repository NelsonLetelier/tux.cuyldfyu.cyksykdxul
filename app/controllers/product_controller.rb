class ProductController < ApplicationController
  def details
	@producto = params[:name]
	@products = Product.where("name LIKE '#{params[:name]}'")
	@products2 = @products.group_by { |prod| prod.name }  
  end
end

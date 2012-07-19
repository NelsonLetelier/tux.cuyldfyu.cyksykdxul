require 'rubygems'
require "bundler/setup"

require 'nokogiri'
require 'open-uri'

class IndexController < ApplicationController
  def inicio
	#@products = Product.find_by_sql("SELECT 10 FROM products GROUP BY name");
	#@products = Product.paginate(:page => params[:page], :per_page => 5)
	#arr=['notebook','']
	#:conditions => ['tipe like ? AND tipe like ?',"%#{arr[0]}%","%#{arr[1]}%"],
	product = Product.paginate	:page => params[:page], :per_page => 9
	#@products=product
	
	nums=[]
	product.each do |prod|
		prod.price.split('##').each do |prices|
			nums.push(prices.gsub(/\./,'').to_i)
		end		
		prod.price = '$ ' + nums.sort.first.to_s + ' - ' + nums.sort.last.to_s
		nums=[]
	end
	
	@products=product
  
  end
end

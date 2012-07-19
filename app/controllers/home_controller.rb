require 'rubygems'
require "bundler/setup"

require 'nokogiri'
require 'open-uri'

class HomeController < ApplicationController
  def index
	if params[:url]
	  @url= params[:url]
	else
	  @url= "http://solotodo.net/search/?search_keywords=notebook&page_number=1"
	end
    
	
	@test=[]
	@image=[]
	@data=[]
	@name=[]
	@description=[]	
	@listProduct=[]
	@urlProduct=""
	
	#doc = Nokogiri::HTML(open("http://107.21.105.109/opencart/index.php?route=product/category&path=20"))
	#30.times { |i| @url = "http://solotodo.net/search/?search_keywords=video_cards&page_number=" + i.to_s 	
	#10.times { |i| @url = "http://solotodo.net/search/?search_keywords=processors&page_number=" + i.to_s 		
	#29.times { |i| @url = "http://solotodo.net/search/?search_keywords=motherboards	&page_number=" + i.to_s 		
	#29.times { |i| @url = "http://solotodo.net/search/?search_keywords=motherboards	&page_number=" + i.to_s 		
	#38[31,32,33,34,35,36,37,38,39,40].each { |i| @url = "http://solotodo.net/search/?product_type=ram&search_keywords=ram&page_number=" + i.to_s 		
	#[1,2,3,4,5,6,7,8,9,10,11,12,13,14].each { |i| @url = "http://solotodo.net/search/?product_type=storage_drives&search_keywords=storage_drives&page_number=
#" + i.to_s
	#[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].each { |i| @url = "http://solotodo.net/search/?product_type=power_supplies&search_keywords=power_supplies&page_number=" + i.to_s		
	[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16].each { |i| @url = "http://solotodo.net/search/?product_type=computer_cases&search_keywords=computer_cases&page_number=" + i.to_s

	doc = Nokogiri::HTML(open(@url))
	i=1
		
	
	#@test.push('holi A')
	#52.times { |i| @test.push("http://solotodo.net/search/?search_keywords=notebook&page_number=" + i.to_s) }
	
	@test.push('holi A')
	#doc.css('body div#content').each do |node|		
	doc.css('body div.producto-li').each do |node|		
		
		@product = Product.new
		
		#[node.css('a>img'),node.css('div.content-producto>a'),node.css('div.content-producto li')].each do |nodoA|		
		[node.css('a>img'),node.css('div.content-producto')].each do |nodoA|		
		#node.css('div.producto-li a>img').each do |nodoA|				
		#node.css('div.content-producto>a').each do |nodoB|			
		#node.css('div.content-producto>div').each do |nodosC|				
		#node.css('div.content-producto li').each do |nodoD|				
		
			if (nodoA.attr('src'))
				@image.push("http://solotodo.net"+nodoA.attr('src'))
				@product.imageUrl="http://solotodo.net"+nodoA.attr('src')
			else
				#if nodoA
					@data.push(node.css('div.content-producto>a').text())					
					@product.name=node.css('div.content-producto>a').text()
					
					#@product.store=node.css('div.content-producto>a').attr('href')
					@urlProduct=node.css('div.content-producto>a').attr('href')
					docProd = Nokogiri::HTML(open("http://solotodo.net"+@urlProduct))
					@product.price=""
					@product.store=""
					contentProd = docProd.css('body table[class^="table_product"]')
					#contentProd.css('div').each do |prices|
					contentProd.css('tr td').each do |prices|
						nulo=prices.css('a>img')
						if !(nulo.empty?())
							#@product.price+="holass#" + prices.css('a>img').attr('src')
							@product.store+="http://solotodo.net" + prices.css('a>img').attr('src') + "++" + prices.css('a').attr('href') + "##"
						else
							@product.price+= prices.css('a').text() + "##"
						end
						#@product.price+="+++++++" + prices.to_s + "++++++++"
						#@product.price+="+++++++" + nulo.to_s + "++++++++"
						
					end
				#end
				@product.description=""
				nodoA.css('ul[class^="info"]>li').each do |nodoC|				
					@description.push(nodoC.text())	
					@product.description += (nodoC.text()+"++")
				end
			end
			#@data.push(nodoB.text())					
			#nodosC.css('div a').each do |nodoC|				
			#	@name.push( nodoC.text())		
			#end
			#@description.push( nodoD.text())		
		
		#end		
		#end
		#end
		end
		@product.tipe="screen " +@product.name.split(" ").first 
		@product.save()
		@listProduct.push(@product)
		
	end	
	
	}
	f = File.new("write.txt", "a+")
	
	@listProduct.each do |product|		
		f.puts("imageUrl:::" + product.imageUrl)
		f.puts("name:::" + product.name)
		f.puts("store:::" + product.store)
		f.puts("price:::" + product.price)
		f.puts("description:::" + product.description)
		f.puts("######")
	end
	f.close
  
  end

  
  def indexB
	if params[:url]
	  @url= params[:url]
	else
	  @url= "http://solotodo.net/search/?search_keywords=notebook&page_number=1"
	end
    
	
	@test=[]
	@image=[]
	@data=[]
	@name=[]
	@description=[]	
	@listProduct=[]
	@urlProduct=""
	#doc = Nokogiri::HTML(open("http://107.21.105.109/opencart/index.php?route=product/category&path=20"))
	#20.times { |i| @url = "http://solotodo.net/search/?search_keywords=notebook&page_number=" + i.to_s 	
	[41,42,43,44,45,46,47,48,49,50,51,52,53,54,55].each { |i| @url = "http://solotodo.net/search/?search_keywords=notebook&page_number=" + i.to_s 	
	doc = Nokogiri::HTML(open(@url))
	i=1
		
	
	#@test.push('holi A')
	#52.times { |i| @test.push("http://solotodo.net/search/?search_keywords=notebook&page_number=" + i.to_s) }
	
	@test.push('holi A')
	#doc.css('body div#content').each do |node|		
	doc.css('body div.producto-li').each do |node|		
		
		@product = Product.new
		
		#[node.css('a>img'),node.css('div.content-producto>a'),node.css('div.content-producto li')].each do |nodoA|		
		[node.css('a>img'),node.css('div.content-producto')].each do |nodoA|		
		#node.css('div.producto-li a>img').each do |nodoA|				
		#node.css('div.content-producto>a').each do |nodoB|			
		#node.css('div.content-producto>div').each do |nodosC|				
		#node.css('div.content-producto li').each do |nodoD|				
		
			if (nodoA.attr('src'))
				@image.push("http://solotodo.net"+nodoA.attr('src'))
				@product.imageUrl="http://solotodo.net"+nodoA.attr('src')
			else
				#if nodoA
					@data.push(node.css('div.content-producto>a').text())					
					@product.name=node.css('div.content-producto>a').text()
					
					#@product.store=node.css('div.content-producto>a').attr('href')
					@urlProduct=node.css('div.content-producto>a').attr('href')
					docProd = Nokogiri::HTML(open("http://solotodo.net"+@urlProduct))
					@product.price=""
					@product.store=""
					contentProd = docProd.css('body table[class^="table_product"]')
					#contentProd.css('div').each do |prices|
					contentProd.css('tr td').each do |prices|
						nulo=prices.css('a>img')
						if !(nulo.empty?())
							#@product.price+="holass#" + prices.css('a>img').attr('src')
							@product.store+="http://solotodo.net" + prices.css('a>img').attr('src') + "++" + prices.css('a').attr('href') + "##"
						else
							@product.price+= prices.css('a').text() + "##"
						end
						#@product.price+="+++++++" + prices.to_s + "++++++++"
						#@product.price+="+++++++" + nulo.to_s + "++++++++"
						
					end
				#end
				@product.description=""
				nodoA.css('ul[class^="info"]>li').each do |nodoC|				
					@description.push(nodoC.text())	
					@product.description += (nodoC.text()+"++")
				end
			end
			#@data.push(nodoB.text())					
			#nodosC.css('div a').each do |nodoC|				
			#	@name.push( nodoC.text())		
			#end
			#@description.push( nodoD.text())		
		
		#end		
		#end
		#end
		end
		@product.tipe="notebook " +@product.name.split(" ").first 
		@product.save()
		@listProduct.push(@product)
		
	end	
	
	}
	f = File.new("write.txt", "a+")
	
	@listProduct.each do |product|		
		f.puts("imageUrl:::" + product.imageUrl)
		f.puts("name:::" + product.name)
		f.puts("store:::" + product.store)
		f.puts("price:::" + product.price)
		f.puts("description:::" + product.description)
		f.puts("######")
	end
	f.close
  
  end
  
  def update
  end

  def del
  end
end

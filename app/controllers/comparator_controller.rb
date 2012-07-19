

class ComparatorController < ApplicationController
  def comparate
	#@products = Product.where("tipe LIKE '%#{params[:name]}%'")
	#@products2 = @products.group_by { |prod| prod.name }
	arr=[]
	if(!params[:name].nil?)
		arr = params[:name].split(" ")
	end
	
	
	if arr.count>=2
		@products = Product.paginate	:page => params[:page], :per_page => 4,
										:conditions => ['tipe like ? AND tipe like ?',"%#{arr[0]}%","%#{arr[1]}%"],
										:order => 'name'
	end
	else if arr.count==1
		@products = Product.paginate	:page => params[:page], :per_page => 4,
										:conditions => ['tipe like ?',"%#{params[:name]}%"],
										:order => 'name'
	else
		@products = Product.paginate	:page => params[:page], :per_page => 4,
										:conditions => ['tipe like ?',"%%"],
										:order => 'name'
	end
	
  
  end
end

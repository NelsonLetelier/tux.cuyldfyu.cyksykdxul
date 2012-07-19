class Product < ActiveRecord::Base
  attr_accessible :description, :imageUrl, :name, :price, :store, :tipe
end

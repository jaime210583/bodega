class Product < ActiveRecord::Base
	validates  :tipo, :descripcion, :precio, :presence => true
end

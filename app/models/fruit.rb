class Fruit < ActiveRecord::Base
	validates  :tipo, :descripcion, :precio, :presence => true
end

class Sale < ActiveRecord::Base
  belongs_to :fruit
  belongs_to :vegetable
  belongs_to :bread
  belongs_to :snack
  belongs_to :dairy
  belongs_to :herb
  belongs_to :product

  validates  :venta_fruta, :venta_vegetal, :venta_pan, :venta_lacteo, :venta_hierba, :presence => true
  validates :venta_fruta, :venta_vegetal, :venta_pan, :venta_lacteo, :venta_hierba, :numericality => {:only_integer => true}
  validates_presence_of :vegetable, :allow_blank => true

end

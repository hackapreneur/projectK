class Product < ActiveRecord::Base
  attr_accessible :description, :title, :VIN, :StockNumber, :Make, :Model, :ModelYear, :Trim, :BodyStyle, :Mileage, :EngineDescription, :Cylinders, :FuelType, :Transmission, :Price, :ExteriorColor, :InteriorColor, :OptionText, :Images, :VehicleLink, :NewUsed, :DateSold, :image

	has_attached_file :image, styles: { :medium => "450x450>", :thumb => "100x100"}

  validates_attachment :image, content_type: { content_type: ['image/jpeg','image/jpg', 'image/png', 'image/gif' ]}, size: { less_than: 5.megabytes } 
 
  validates :description, presence: true
  validates :title, presence: true
  validates :user_id, presence: true
 
  belongs_to :user

end

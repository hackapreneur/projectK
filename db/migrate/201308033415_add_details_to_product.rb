class AddDetailsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :VIN, :string
		add_column :products, :StockNumber, :string
		add_column :products, :Make, :string
		add_column :products, :Model, :string
		add_column :products, :ModelYear, :string
		add_column :products, :Trim, :string
		add_column :products, :BodyStyle, :string
		add_column :products, :Mileage, :string
		add_column :products, :EngineDescription, :string
		add_column :products, :Cylinders, :string
		add_column :products, :FuelType, :string
		add_column :products, :Transmission, :string
		add_column :products, :Price, :string
		add_column :products, :ExteriorColor, :string
		add_column :products, :InteriorColor, :string
		add_column :products, :OptionText, :string
		add_column :products, :Images, :string
		add_column :products, :VehicleLink, :string
		add_column :products, :NewUsed, :string
		add_column :products, :DateSold, :string
  end
end
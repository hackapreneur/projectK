class AddDetailsToUser < ActiveRecord::Migration
  def change
    	add_column :users, :VIN, :string
		add_column :users, :Username, :string
		add_column :users, :FirstName, :string
		add_column :users, :LastName, :string
		add_column :users, :Birthday, :string
		add_column :users, :ProfilePhoto, :string
		add_column :users, :Address, :string
		add_column :users, :Industry, :string
		add_column :users, :Phone, :string
  end
end
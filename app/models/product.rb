class Product < ActiveRecord::Base
  attr_accessible :description, :title

  validates :description, presence: true
  validates :title, presence: true
  validates :user_id, presence: true

  belongs_to :user
end

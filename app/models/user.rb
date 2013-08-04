class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :image, :email, :password, :password_confirmation, :remember_me, :Username, :FirstName, :LastName, :Birthday, :ProfilePhoto, :Address, :Industry, :Phone

  has_attached_file :image, styles: { :medium => "450x450>", :thumb => "100x100"}

  validates_attachment :image, content_type: { content_type: ['image/jpeg','image/jpg', 'image/png', 'image/gif' ]}, size: { less_than: 5.megabytes } 
 


  has_many :products
end

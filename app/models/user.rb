class User < ApplicationRecord
	has_many :products
 	has_many :containers
	  # Include default devise modules. Others available are:
	  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :name, presence: true, length: {maximum: 50}
	validates :address, presence: true, length: {maximum: 50}
	validates :phone, presence: true, length: {maximum: 50}
end

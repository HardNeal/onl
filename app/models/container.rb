class Container < ApplicationRecord
	belongs_to :podrazdel
	belongs_to :user
	has_many :products
	
	# def self.search(search)
	#   if search
	#     self.where("name like ?", "%#{search}%")
	#   else
	#     self.all
	#   end
	# end
end

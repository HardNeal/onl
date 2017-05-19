class Container < ApplicationRecord
	belongs_to :podrazdel
	belongs_to :user
	has_many :products
	

	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	  # where("content LIKE ?", "%#{search}%")
	end
	
end

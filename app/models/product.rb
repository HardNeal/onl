class Product < ApplicationRecord
	belongs_to :user
	belongs_to :container

	
	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	  where("content LIKE ?", "%#{search}%")
	end

	# def self.search(search)
	#   if search
	#     self.where("name like ?", "%#{search}%")
	#   else
	#     self.all
	#   end
	# end

	# def self.search(search)
	#   where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	#   # Product.where(name: product.name)
	# end

 	has_attached_file :image,
        styles: { medium: '300x300>', thumb: '100x100>'},
        default_url: '/img/productav.png'
 	validates_attachment_content_type :image, 
       	content_type: ['image/jpeg', 'image/gif', 'image/png']

end

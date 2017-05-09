class Bazar < ApplicationRecord
	has_many :containers
	
	has_attached_file :image,
        styles: { medium: '300x300>', thumb: '300x230>'},
        default_url: '/img/productav.png'
 	validates_attachment_content_type :image, 
       	content_type: ['image/jpeg', 'image/gif', 'image/png']
end

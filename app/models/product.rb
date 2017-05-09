class Product < ApplicationRecord
	belongs_to :user
	belongs_to :container

 	has_attached_file :image,
        styles: { medium: '300x300>', thumb: '100x100>'},
        default_url: '/img/productav.png'
 	validates_attachment_content_type :image, 
       	content_type: ['image/jpeg', 'image/gif', 'image/png']

end

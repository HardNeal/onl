ActiveAdmin.register Product do
belongs_to 	:container
permit_params :name, :price, :image, :desc, :phone, :color_product, :size, :user_id, :container_id

form do |f|
	  f.inputs do 
	  	f.input :name
	  	f.input :price
	  	f.input :desc
	  	f.input :phone
	  	f.input :color_product
	  	f.input :size
	  	f.input :user do |place|
			link_to place.name, admin_users_path(place)
		end
	  	f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
	  end
	  f.actions
	end
 

	index do
		selectable_column
		column :image do |place|
			image_tag place.image.url(:thumb)
		end
		id_column
		column :name
		column :price
		column :desc do |place|
			link_to 'Описание', admin_container_product_path(container.id, place)
		end
		column :phone
		column :color_product
		column :size
		column :user
		column :container_id
	 	 actions
	end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

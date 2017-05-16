ActiveAdmin.register Container do
belongs_to :podrazdel
permit_params :name, :podrazdel_id, :number

	form do |f|
	  f.inputs do 
	  	f.input :name
	 #  	f.input :bazar do |place|
		# 	link_to place.name, admin_category_path(place)
		# end
	  	f.input :number
	  	# f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
	  end
	  f.actions
	end
 

	index do
		selectable_column
		# column :image do |place|
		# 	image_tag place.image.url(:thumb)
		# end
		id_column
		column :name

		column :products do |product|
			link_to('Товары', admin_container_products_path(product.id))
		end
		column :name
		column :number
		# column :encrypted_password => Токен
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

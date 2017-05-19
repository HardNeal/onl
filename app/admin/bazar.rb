ActiveAdmin.register Bazar do
	permit_params :name, :image

	form do |f|
	  f.inputs do 
	  	f.input :name
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
		column :podrazdels do |bazar|
			link_to('Проход', admin_bazar_podrazdels_path(bazar.id))
		end
		# column :encrypted_password => Токен
	 	 actions
	end

	# show do 
	# 	link_to()
	# end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

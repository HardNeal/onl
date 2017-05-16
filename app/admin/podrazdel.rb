ActiveAdmin.register Podrazdel do
belongs_to :bazar
permit_params :name

	form do |f|
	  f.inputs do 
	  	f.input :name
	  end
	  f.actions
	end
 

	index do
		selectable_column
		id_column
		column :name
		column :containers do |bazar|
			link_to('Контейнеры', admin_podrazdel_containers_path(bazar.id))
		end
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

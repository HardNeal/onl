ActiveAdmin.register Restoran do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :image, :menu

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
	# column :encrypted_password => Токен
 	 actions
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

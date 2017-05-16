ActiveAdmin.register User do
	permit_params :name, :email, :phone, :password, :admin, :address

	controller do
	  def destroy
	    @user = User.find(params[:id])
	    if @user == current_user
    	 flash[:notice] = "Вы не можете удалить самого себя"
	      redirect_to admin_dashboard_path
	 	else
	 	 @user.destroy
	 	 flash[:notice] = "Вы успешно удалили пользователя"
	 	 redirect_to admin_dashboard_path
	 	end
	  end 
	end 

	form do |f|
	  f.inputs do 
	  	f.input :name
	  	f.input :email
	  	f.input :phone
	  	f.input :address
	  	f.input :admin
	  	f.input :password
	  	f.input :password_confirmation
	  end
	  f.actions
	end
 

	index do
		selectable_column
		id_column
		column :name
		column :phone
		column :address
		column :email
		column :admin
		# column :encrypted_password => Токен
	 	 actions
	end
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

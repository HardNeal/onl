class ProfilesController < ApplicationController
  def index
  	if user_signed_in?
  		users = User.all
		else
			redirect_to new_user_registration_path
		end
  end
end

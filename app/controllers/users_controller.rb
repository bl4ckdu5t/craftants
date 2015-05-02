class UsersController < ApplicationController
	def update
		@user = User.find(current_user.id)
		updated = @user.update_attributes(user_params)
		if updated
			redirect_to :back, notice: 'Profile has been updated'
		else
			redirect_to :back, notice: 'Profile update failed'
		end
	end

	def destroy
		@user = User.find(params[:format])
		if @user.destroy
			redirect_to root_path
		end
	end

	private

	def user_params
		params.require(:user).permit!
	end
end

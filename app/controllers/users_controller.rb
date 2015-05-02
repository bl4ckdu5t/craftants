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
		render text: 'Bazinga' and return
	end

	private

	def user_params
		params.require(:user).permit!
	end
end

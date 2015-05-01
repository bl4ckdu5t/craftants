class AccountsController < ApplicationController
	before_action :authenticate_user!
	layout 'accounts'

	def dashboard
		@user = current_user
	end

	def profile
		@user = User.find(params[:id])
	end
end

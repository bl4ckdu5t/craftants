class AccountsController < ApplicationController
	before_action :authenticate_user!
	layout 'accounts'

	def dashboard
		
	end
end

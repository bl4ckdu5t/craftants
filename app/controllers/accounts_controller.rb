class AccountsController < ApplicationController
	before_action :authenticate_user!
	layout 'accounts'

	def dashboard
		@user = current_user
		email_address = current_user.email.downcase
		hash = Digest::MD5.hexdigest(email_address)
		@image_src = "http://www.gravatar.com/avatar/#{hash}"
		@categories = Category.all.map { |category| [category.name.capitalize, category.index] }
  	@locations = Location.all.map { |location| [location.city, location.id] }
	end

	def profile
		@user = User.find(params[:id])
		email_address = @user.email.downcase
		hash = Digest::MD5.hexdigest(email_address)
		@image_src = "http://www.gravatar.com/avatar/#{hash}"
	end
end

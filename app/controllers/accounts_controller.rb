class AccountsController < ApplicationController
	before_action :authenticate_user!, except: [:profile]
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
		@category = Category.find_by_index(1)
		email_address = @user.email.downcase
		hash = Digest::MD5.hexdigest(email_address)
		@image_src = "http://www.gravatar.com/avatar/#{hash}"
		@socials = Social.where(user_id: current_user.id)
	end

	def add_socials
		profile = Social.where(user_id: current_user.id).exists? ? Social.find_by_user_id(current_user.id) : Social.new
		if Social.where(user_id: current_user.id).exists?
			Social.where(user_id: current_user.id).delete_all
		end
		params[:title].each_with_index do |x, i|
			input = {user_id: current_user.id, title: x, url: params[:url][i]}
			complete = Social.new(input).save
		end
		redirect_to :back
	end
end

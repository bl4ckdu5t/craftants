class WelcomeController < ApplicationController
  def index
  	@categories = Category.all.map { |category| [category.name, category.index] }
  	@locations = Location.all.map { |location| [location.city, location.id] }
  	@user = User.new
  end
  def story
  end
end

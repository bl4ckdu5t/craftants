class WelcomeController < ApplicationController
  def index
  	@categories = Category.all.map { |category| [category.name, category.index] }
  	@user = User.new
  end
  def story
  end
end

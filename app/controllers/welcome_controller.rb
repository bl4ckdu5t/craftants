class WelcomeController < ApplicationController
  def index
  	@categories = Category.all.map { |category| [category.name, category.index] }
  end
  def story
  end
end

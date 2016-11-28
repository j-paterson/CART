class HomeController < ApplicationController
	def index
		@user=current_user
		@items = Item.all
		@categories = Category.all
	end
end

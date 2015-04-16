class ItemsController < ApplicationController
	def new
		@item = Item.new
		@user = User.find(session[:id])
		@items = Item.where(user_id: session[:id])
		render 'new'
	end

	def create
		@item = Item.new items_privates
		@item.user_id = session[:id]
		@item.save
		redirect_to new_user_item_path	
	end

	def index
		@items = Item.all
		render 'index'
	end

	def show
		@item = 
	end

	private

	def items_privates
		params.require(:item).permit(:name, :description, :price, :expiration)
	end
end

class ItemsController < ApplicationController
	def new
		@item = Item.new
		@user = User.find(session[:id])
		@item.user_id = session[:id]
		@item.save
		@items = Item.all
		render 'new'
	end

	def create
		@item = Item.create items_privates
		redirect_to new_user_item_path	
	end




	private

	def items_privates
		params.require(:item).permit(:name, :description, :price, :expiration)
	end
end

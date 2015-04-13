class ItemsController < ApplicationController
	def new
		@item = Item.new
		@item.user_id = session[:id]
		@item.save
		render 'new'
	end

	def create
		@item = Item.create items_privates

	end

	private

	def items_privates
		params.require(:item).permit(:name, :description, :price, :expiration)
	end
end

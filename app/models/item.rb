class Item < ActiveRecord::Base
	belongs_to :user

	validates :name, presence: true
	validates :description, presence: true
	validates :presence, presence: true
	validates :price, presence: true
end

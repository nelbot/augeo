class Item < ActiveRecord::Base
	belongs_to :user
	has_many :bids

	validates :name, presence: true
	validates :description, presence: true
	validates :presence, presence: true
	validates :price, presence: true
end

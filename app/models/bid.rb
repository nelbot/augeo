class Bid < ActiveRecord::Base
	belongs_to :item

	validates :bid, presence: true
end

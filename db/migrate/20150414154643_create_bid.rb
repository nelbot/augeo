class CreateBid < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :item, index: true, foreign_key: true
      t.decimal :bid
    end
  end
end

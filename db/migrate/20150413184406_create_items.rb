class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
  	  t.string :description
  	  t.decimal :price
  	  t.timestamp :expiration
      t.timestamps null: false
    end
  end
end

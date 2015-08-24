class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.string :price
      t.string :origin
      t.string :rating

      t.timestamps
    end
  end
end

class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
			t.string :name
			t.text :description
			t.string :image_url
			t.integer :price
      t.timestamps
    end
  end
end

class RenewalProduct < ActiveRecord::Migration
  def change
		drop_table :products
		
		create_table :products do |t|
			t.string :name
			t.integer :product_id
			t.text :description
			t.string :image_url
			t.integer :price
			t.integer :weekly_sales
			t.boolean :active

			t.timestamp
  end
	end
end

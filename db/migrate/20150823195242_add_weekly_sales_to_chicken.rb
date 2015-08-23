class AddWeeklySalesToChicken < ActiveRecord::Migration
  def change
			add_column :chickens, :weekly_sales, :integer
  end
end

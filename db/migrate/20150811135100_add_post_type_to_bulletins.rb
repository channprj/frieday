class AddPostTypeToBulletins < ActiveRecord::Migration
  def change
    add_column :bulletins, :post_type, :string, default: 'bulletin'
  end
end
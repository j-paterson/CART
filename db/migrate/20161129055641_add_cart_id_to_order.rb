class AddCartIdToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :cart_id, :integer, :default => nil
  	remove_column :users, :cart_id, :integer
  end
end

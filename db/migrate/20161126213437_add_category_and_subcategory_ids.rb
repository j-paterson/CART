class AddCategoryAndSubcategoryIds < ActiveRecord::Migration
  def change
  	add_column :subcategories, :category_id, :integer
  	add_column :items, :subcategory_id, :integer
  end
end

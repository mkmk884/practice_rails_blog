class CreatePostToCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :post_to_categories do |t|
      t.integer :post_id, foreign_key: true
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end

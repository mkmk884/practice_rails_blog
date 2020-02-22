class ChangeLikeOfPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :like, :integer, default: 0
  end
end

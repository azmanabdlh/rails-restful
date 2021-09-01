class AddColumnsInPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :deleted_at, :datetime, null: true
    add_column :posts, :is_active, :boolean, default: true
  end
end

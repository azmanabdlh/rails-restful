class AddColumnsInPosts < ActiveRecord::Migration[6.1]
  def up
    add_column :posts, :deleted_at, :datetime, null: true
    add_column :posts, :is_active, :boolean, default: true
  end


  def down
    drop_column :posts, :deleted_at
    drop_column :posts, :is_active
  end
end

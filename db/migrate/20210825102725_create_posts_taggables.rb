class CreatePostsTaggables < ActiveRecord::Migration[6.1]
  def up
    create_table :posts_taggables do |t|
      t.belongs_to :post
      t.belongs_to :tag

      t.timestamps
    end
  end


  def down
    drop_table :posts_taggables
  end
end

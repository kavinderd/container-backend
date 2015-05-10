class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :container_id
      t.integer :user_id
      t.text    :content
      t.string  :title
      t.integer :category
      t.timestamps null: false
    end
  end
end

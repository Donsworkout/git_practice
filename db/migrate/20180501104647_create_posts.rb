class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content1
      t.text :content2
      t.text :content3
      t.timestamps null: false
    end
  end
end

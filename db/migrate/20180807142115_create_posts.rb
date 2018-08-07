class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :picture1
      t.string :picture2

      t.timestamps
    end
  end
end

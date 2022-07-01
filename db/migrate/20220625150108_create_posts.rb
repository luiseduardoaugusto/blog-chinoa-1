class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :excerpt
      t.text :body
      t.string :coverpic

      t.timestamps
    end
  end
end

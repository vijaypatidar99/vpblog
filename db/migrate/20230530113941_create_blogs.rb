class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :sub_title
      t.text :content
      t.integer :user_id
      t.timestamps
    end
  end
end

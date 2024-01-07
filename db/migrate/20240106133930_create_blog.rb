class CreateBlog < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.date :published_at
      t.string :image_url
      t.timestamps
    end
  end
end

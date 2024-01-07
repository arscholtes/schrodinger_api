class CreatePortfolio < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :project_link
      t.text :technology_used
      t.timestamps
    end
  end
end

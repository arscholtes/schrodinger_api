class CreateTestimonial < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.string :client_name
      t.text :content
      t.string :project_name
      t.timestamps
    end
  end
end

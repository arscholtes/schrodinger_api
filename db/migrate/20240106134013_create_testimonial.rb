class CreateTestimonial < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|

      t.timestamps
    end
  end
end

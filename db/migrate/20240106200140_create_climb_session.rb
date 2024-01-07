class CreateClimbSession < ActiveRecord::Migration[7.0]
  def change
    create_table :climb_sessions do |t|
      t.integer :user_id
      t.integer :current_position
      t.boolean :completed
      t.timestamps
    end
  end
end

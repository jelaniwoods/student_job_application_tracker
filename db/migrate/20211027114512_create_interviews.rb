class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.integer :application_id
      t.integer :round
      t.datetime :starts_at
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end

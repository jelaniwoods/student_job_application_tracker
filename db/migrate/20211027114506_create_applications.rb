class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.boolean :submitted, default: false
      t.integer :user_id
      t.integer :company_id
      t.date :due_on
      t.string :title

      t.timestamps
    end
  end
end

class AddApplicationReferenceToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :interviews, :applications
    add_index :interviews, :application_id
    change_column_null :interviews, :application_id, false
  end
end

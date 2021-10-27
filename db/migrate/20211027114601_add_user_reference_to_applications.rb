class AddUserReferenceToApplications < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :applications, :users
    add_index :applications, :user_id
    change_column_null :applications, :user_id, false
  end
end

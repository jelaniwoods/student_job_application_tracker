class AddCompanyReferenceToApplications < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :applications, :companies
    add_index :applications, :company_id
    change_column_null :applications, :company_id, false
  end
end

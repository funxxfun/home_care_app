class RenameUserStaffIdColumnToCares < ActiveRecord::Migration[5.2]
  def change
    rename_column :cares, :user_staff_id, :patient_id
  end
end

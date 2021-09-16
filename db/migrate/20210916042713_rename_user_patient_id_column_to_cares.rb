class RenameUserPatientIdColumnToCares < ActiveRecord::Migration[5.2]
  def change
    rename_column :cares, :user_patient_id, :user_id
  end
end

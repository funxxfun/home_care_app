class CreateCares < ActiveRecord::Migration[5.2]
  def change
    create_table :cares do |t|
      t.integer :user_patient_id
      t.integer :user_staff_id
      t.integer :weight
      t.integer :body_temperature
      t.string :blood_pressure
      t.integer :pulse_rate
      t.text :detail
      t.string :start_time：datetime

      t.timestamps
    end
  end
end

class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.integer :number
      t.string :name
      t.integer :gender
      t.date :birthday
      t.string :address
      t.string :phone_number
      t.string :supporters_phone_number
      t.string :supporters_name
      t.string :relation
      t.text :main_disease
      t.text :medical_history
      t.text :allergy
      t.integer :care_level
      t.text :information

      t.timestamps
    end
  end
end

class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :image_id
      t.text :content
      t.integer :user_id
      t.integer :patient_id

      t.timestamps
    end
  end
end

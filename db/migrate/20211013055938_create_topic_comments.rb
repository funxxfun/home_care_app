class CreateTopicComments < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_comments do |t|
      t.string :image_id
      t.text :comment
      t.integer :user_id
      t.integer :patient_id
      t.integer :topic_id

      t.timestamps
    end
  end
end

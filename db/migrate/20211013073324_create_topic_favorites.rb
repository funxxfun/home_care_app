class CreateTopicFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_favorites do |t|
      t.integer :user_id
      t.integer :patient_id
      t.integer :topic_id

      t.timestamps
    end
  end
end

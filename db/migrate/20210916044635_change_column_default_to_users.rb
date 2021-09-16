class ChangeColumnDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :genre_name, from: nil, to: "0"
  end
end

class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :genre_name, false, 0
  end
end

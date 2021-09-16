class RenameGenreIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :genre_id, :genre_name
  end
end

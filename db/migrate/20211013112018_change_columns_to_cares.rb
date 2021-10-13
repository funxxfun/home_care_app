class ChangeColumnsToCares < ActiveRecord::Migration[5.2]
  def change
    change_column :cares, :weight, :float
    change_column :cares, :body_temperature, :float
  end
end

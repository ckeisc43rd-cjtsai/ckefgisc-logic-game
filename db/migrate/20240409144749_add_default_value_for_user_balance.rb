class AddDefaultValueForUserBalance < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :balance, 100
  end
end

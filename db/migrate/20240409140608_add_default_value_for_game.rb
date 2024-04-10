class AddDefaultValueForGame < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :match, 0
  end
end

class AddValueToSlots < ActiveRecord::Migration[7.1]
  def change
    add_column :slots, :value, :string
  end
end

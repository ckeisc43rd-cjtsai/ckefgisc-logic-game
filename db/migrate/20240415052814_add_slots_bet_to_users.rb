class AddSlotsBetToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users , :slot_bet, :integer
  end
end

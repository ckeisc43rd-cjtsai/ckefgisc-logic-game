class CreateSlots < ActiveRecord::Migration[7.1]
  def change
    create_table :slots do |t|

      t.timestamps
    end
  end
end

class CreateSingles < ActiveRecord::Migration[7.1]
  def change
    create_table :singles do |t|
      t.timestamps
    end
  end
end

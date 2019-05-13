class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :url
      t.float :ops
      t.float :ba
      t.integer :hr
      t.integer :rbi

      t.timestamps
    end
  end
end

class CreateBalances < ActiveRecord::Migration[5.1]
  def change
    create_table :balances do |t|
      t.decimal :gld, :precision => 8, :scale => 2
      t.decimal :cash, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

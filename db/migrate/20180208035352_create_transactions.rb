class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :txref
      t.string :typeof
      t.string :asset
      t.decimal :amount,  :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

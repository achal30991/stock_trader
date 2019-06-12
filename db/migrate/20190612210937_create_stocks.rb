class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :portfolio_id
      t.string :stock_tickr

      t.timestamps
    end
  end
end

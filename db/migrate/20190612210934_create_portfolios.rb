class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :stock_name
      t.integer :user_id

      t.timestamps
    end
  end
end

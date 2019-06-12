class CreateUpvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :upvotes do |t|
      t.integer :stock_id
      t.integer :expert_id

      t.timestamps
    end
  end
end

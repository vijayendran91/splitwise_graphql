class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.float :amount
      t.integer :no_parts
      t.text :desc

      t.timestamps
    end
  end
end

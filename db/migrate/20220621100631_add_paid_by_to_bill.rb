class AddPaidByToBill < ActiveRecord::Migration[6.0]
  def change
    add_reference :bills, :paid_by, null: false, foreign_key: { to_table: :users }
  end
end

class CreatePortions < ActiveRecord::Migration[6.0]
  def change
    create_table :portions do |t|
      t.references :loan, null: false, foreign_key: true
      t.date :due_date
      t.decimal :amount, default: 0.0

      t.timestamps
    end
  end
end

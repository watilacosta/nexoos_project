class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.decimal :amount, default: 0.0
      t.integer :term
      t.decimal :tax, default: 0.0
      t.references :requester, null: false, foreign_key: true

      t.timestamps
    end
  end
end

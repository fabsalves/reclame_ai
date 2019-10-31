class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.string :order_id
      t.string :zipcode
      t.text :description
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end

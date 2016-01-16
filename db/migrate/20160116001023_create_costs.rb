class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|

      t.timestamps null: false
      t.text :title
      t.integer :amount
    end
  end
end

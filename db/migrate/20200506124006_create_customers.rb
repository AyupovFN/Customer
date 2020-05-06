class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone_number
      t.string :description
      t.boolean :present_black_list

      t.timestamps
    end
  end
end

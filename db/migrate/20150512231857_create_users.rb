class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :customer_address1
      t.string :customer_address2
      t.string :customer_state
      t.string :customer_zip

      t.timestamps null: false
    end
  end
end

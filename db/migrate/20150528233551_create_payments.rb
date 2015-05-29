class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.boolean :success
      t.references :user_tab, index: true

      t.timestamps null: false
    end
    add_foreign_key :payments, :user_tabs
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :mat
      t.string :pwd

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end

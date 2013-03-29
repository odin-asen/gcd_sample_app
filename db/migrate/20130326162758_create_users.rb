class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
  def self.up
    add_index :users, :email, :unique => true
  end
  def self.down
    remove_index :users, :email
  end  
end

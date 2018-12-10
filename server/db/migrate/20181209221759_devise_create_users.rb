# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def self.up
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :username,           null: false, defailt: "", limit: 50
      t.boolean :admin,             default: false

      t.timestamps null: false
    end

    add_index :users, :email,               unique: true
    add_index :users, :username,            unique: true
  end
  def self.down
    drop_table :users
  end
end

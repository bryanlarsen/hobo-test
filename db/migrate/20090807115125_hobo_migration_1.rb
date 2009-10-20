class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :memberships do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :group_id
      t.integer  :user_id
    end
    
    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.boolean  :administrator, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "active"
      t.datetime :key_timestamp
    end
  end

  def self.down
    drop_table :groups
    drop_table :memberships
    drop_table :users
  end
end

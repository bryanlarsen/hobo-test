class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
    end
  end

  def self.down
    drop_table :recipes
  end
end

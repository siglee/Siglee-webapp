class CreateExpenditureAccounts < ActiveRecord::Migration
  def self.up
    create_table :expenditure_accounts do |t|
      t.string :name, :null => false
      t.float :allocation, :default => 0.0
      t.float :spent, :default => 0.0
      t.string :account_type , :limit => 1, :default => 'M'
      t.boolean :rollover, :default => true
      t.integer :month, :limit => 1
      t.integer :halfyear, :limit => 1 
      t.integer :year, :limit => 2
      t.integer :quarter, :limit => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :expenditure_accounts
  end
end

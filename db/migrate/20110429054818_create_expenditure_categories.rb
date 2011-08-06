class CreateExpenditureCategories < ActiveRecord::Migration
  def self.up
    create_table :expenditure_categories do |t|
      t.string :name, :null => false
      t.float :allocation,:default => 0.0
      t.float :spent, :default => 0.0
      t.boolean :rollover, :default => 1
      t.references :expenditure_account 
      t.timestamps
    end
    
    execute "ALTER TABLE expenditure_categories ADD CONSTRAINT fk_category_account FOREIGN KEY (expenditure_account_id) REFERENCES expenditure_accounts(id)"
  end

  def self.down
    execute "ALTER TABLE expenditure_categories DROP FOREIGN KEY fk_category_account"
    drop_table :expenditure_categories
  end
end

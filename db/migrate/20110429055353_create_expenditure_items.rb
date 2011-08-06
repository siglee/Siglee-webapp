class CreateExpenditureItems < ActiveRecord::Migration
  def self.up
    create_table :expenditure_items do |t|
      t.string :name, :null => false
      t.string :description
      t.float :spent, :default => 0.0
      t.references :expenditure_account
      t.references :expenditure_sub_category
      t.references :expenditure_category
      t.timestamps
    end
    
    execute "ALTER TABLE expenditure_items ADD CONSTRAINT fk_item_account FOREIGN KEY (expenditure_account_id)  REFERENCES expenditure_accounts(id)"
    
    execute "ALTER TABLE expenditure_items ADD CONSTRAINT fk_item_category FOREIGN KEY (expenditure_category_id) REFERENCES expenditure_categories(id)"
    
    execute "ALTER TABLE expenditure_items ADD CONSTRAINT fk_item_subcategory FOREIGN KEY (expenditure_sub_category_id) REFERENCES expenditure_sub_categories(id)"
  end

  def self.down
    execute "ALTER TABLE expenditure_items DROP FOREIGN KEY fk_item_account"
    execute "ALTER TABLE expenditure_items DROP FOREIGN KEY fk_item_category"
    execute "ALTER TABLE expenditure_items DROP FOREIGN KEY fk_item_subcategory"
    drop_table :expenditure_items
  end
end

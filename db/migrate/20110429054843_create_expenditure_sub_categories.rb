class CreateExpenditureSubCategories < ActiveRecord::Migration
  def self.up
    create_table :expenditure_sub_categories do |t|
      t.string :name, :null => false
      t.float :allocation, :default => 0.0
      t.float :spent, :default => 0.0
      t.boolean :rollover, :default => true
      t.references :expenditure_category 
      t.timestamps
    end
    
    execute "ALTER TABLE expenditure_sub_categories ADD CONSTRAINT fk_subcategory_category  FOREIGN KEY (expenditure_category_id) REFERENCES expenditure_categories(id)"
  end

  def self.down
    execute "ALTER TABLE expenditure_sub_categories DROP FOREIGN KEY fk_subcategory_category"
    drop_table :expenditure_sub_categories
  end
end

class ExpenditureItem < ActiveRecord::Base
  belongs_to :expenditure_account
  belongs_to :expenditure_category
  belongs_to :expenditure_sub_category
  
  after_create :add_spent_in_parents

  
  def add_spent_in_parents
    puts "adding parent....."
    if expenditure_account_id?
      puts "adding parent acc....."     
      self.expenditure_account.spent += self.spent
      self.expenditure_account.save
    elsif expenditure_category_id?
       puts "adding parent cate + acc....."                    
      self.expenditure_category.spent += self.spent
      self.expenditure_category.save
      self.expenditure_category.expenditure_account.spent += self.spent
      self.expenditure_category.expenditure_account.save
    elsif expenditure_sub_category_id?
       puts "adding parent subcat + cat + acc....."
      self.expenditure_sub_category.spent += self.spent
      self.expenditure_sub_category.save
      self.expenditure_sub_category.expenditure_category.spent += self.spent
      self.expenditure_sub_category.expenditure_category.save
      self.expenditure_sub_category.expenditure_category.expenditure_account.spent += self.spent      
      self.expenditure_sub_category.expenditure_category.expenditure_account.save
    end    
  end
  
  
end

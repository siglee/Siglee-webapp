class ExpenditureAccount < ActiveRecord::Base
  has_many :expenditure_items
  has_many :expenditure_categories
 
end

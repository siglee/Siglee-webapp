class ExpenditureSubCategory < ActiveRecord::Base
  belongs_to :expenditure_category
  has_many :expenditure_items
end

class ExpenditureCategory < ActiveRecord::Base
    belongs_to :expenditure_account
    has_many :expenditure_items
    has_many :expenditure_sub_categories
end

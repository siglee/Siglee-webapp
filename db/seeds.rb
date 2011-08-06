# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


home = ExpenditureAccount.create(:name => 'Home',:allocation => 1300, :spent => 0)
baby = ExpenditureAccount.create(:name => 'Baby',:allocation => 500, :spent => 0)
office = ExpenditureAccount.create(:name => 'Office',:allocation => 300, :spent => 0)

grocery_category = ExpenditureCategory.create(:name => 'Grocery',:allocation => 900, :spent => 0, :expenditure_account => home)
entertainment_category = ExpenditureCategory.create(:name => 'Entertainment',:allocation => 400, :spent => 0, :expenditure_account => home)

stationary_category = ExpenditureCategory.create(:name => 'Stationary',:allocation => 100, :spent => 0, :expenditure_account => office)
book_category = ExpenditureCategory.create(:name => 'Books',:allocation => 200, :spent => 0, :expenditure_account => office)

acc_category = ExpenditureCategory.create(:name => 'Accessories',:allocation => 200, :spent => 0, :expenditure_account => baby)
cloth_category = ExpenditureCategory.create(:name => 'Cloths',:allocation => 300, :spent => 0, :expenditure_account => baby)




safeway_subcategory = ExpenditureSubCategory.create(:name => 'Safeway',:allocation => 600, :spent => 0, :expenditure_category =>grocery_category)

indian_subcategory = ExpenditureSubCategory.create(:name => 'Indian',:allocation => 300, :spent => 0, :expenditure_category => grocery_category)

eatout_subcategory = ExpenditureSubCategory.create(:name => 'Restaurent',:allocation => 300, :spent => 0, :expenditure_category => entertainment_category)

movies_category = ExpenditureSubCategory.create(:name => 'Movies Rental',:allocation => 100, :spent => 0, :expenditure_category => entertainment_category)

#-------------------------------------#
item = ExpenditureItem.create(:name => 'Safeway_week1', :spent => 150, :created_at => '01/04/2011', :expenditure_sub_category => safeway_subcategory)
item.update_attribute :created_at, (21).days.ago
item = ExpenditureItem.create(:name => 'Safeway_week2', :spent => 150, :created_at => '08/04/2011', :expenditure_sub_category => safeway_subcategory)
item.update_attribute :created_at, (14).days.ago
item = ExpenditureItem.create(:name => 'Safeway_week3', :spent => 150, :created_at => '15/04/2011', :expenditure_sub_category => safeway_subcategory)
item.update_attribute :created_at, (7).days.ago
item = ExpenditureItem.create(:name => 'Safeway_week4', :spent => 150, :created_at => '22/04/2011', :expenditure_sub_category => safeway_subcategory)
item.update_attribute :created_at, Date.today

#-------------------------------------#
item = ExpenditureItem.create(:name => 'Indian_week1', :spent => 75, :created_at => '01/04/2011', :expenditure_sub_category => indian_subcategory)
item.update_attribute :created_at, (21).days.ago
item = ExpenditureItem.create(:name => 'Indian_week2', :spent => 75, :created_at => '08/04/2011', :expenditure_sub_category => indian_subcategory)
item.update_attribute :created_at, (14).days.ago
item = ExpenditureItem.create(:name => 'Indian_week3', :spent => 75, :created_at => '15/04/2011', :expenditure_sub_category => indian_subcategory)
item.update_attribute :created_at, (7).days.ago
item = ExpenditureItem.create(:name => 'Indian_week4', :spent => 75, :created_at => '22/04/2011', :expenditure_sub_category => indian_subcategory)
item.update_attribute :created_at, Date.today

#-------------------------------------#
item = ExpenditureItem.create(:name => 'Little India', :spent => 75, :created_at => '01/04/2011', :expenditure_sub_category => eatout_subcategory)
item.update_attribute :created_at, (21).days.ago
item = ExpenditureItem.create(:name => 'Priya', :spent => 25, :created_at => '08/04/2011', :expenditure_sub_category => eatout_subcategory)
item.update_attribute :created_at, (14).days.ago
item = ExpenditureItem.create(:name => 'Indian_week3', :spent => 15, :created_at => '15/04/2011', :expenditure_sub_category => movies_category)
item.update_attribute :created_at, (7).days.ago
item = ExpenditureItem.create(:name => 'Indian_week4', :spent => 25, :created_at => '22/04/2011', :expenditure_sub_category => movies_category)
item.update_attribute :created_at, Date.today

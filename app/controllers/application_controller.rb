class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :user_expenditure_accounts 

  def user_expenditure_accounts
    @accounts = ExpenditureAccount.all
  end
end

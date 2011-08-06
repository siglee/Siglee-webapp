class ExpenditureAccountsController < ApplicationController
  # GET /expenditure_accounts
  # GET /expenditure_accounts.xml
  def index
    @expenditure_accounts = ExpenditureAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expenditure_accounts }
    end
  end

  # GET /expenditure_accounts/1
  # GET /expenditure_accounts/1.xml
  def show
    @expenditure_account = ExpenditureAccount.find(params[:id], :include => [:expenditure_categories, :expenditure_items])
    #@expenditure_categories =   @expenditure_account.expenditure_cateogries
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expenditure_account }
    end
  end

  # GET /expenditure_accounts/new
  # GET /expenditure_accounts/new.xml
  def new
    @expenditure_account = ExpenditureAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expenditure_account }
    end
  end

  # GET /expenditure_accounts/1/edit
  def edit
    @expenditure_account = ExpenditureAccount.find(params[:id])
  end

  # POST /expenditure_accounts
  # POST /expenditure_accounts.xml
  def create
    @expenditure_account = ExpenditureAccount.new(params[:expenditure_account])

    respond_to do |format|
      if @expenditure_account.save
        format.html { redirect_to(@expenditure_account, :notice => 'Expenditure account was successfully created.') }
        format.xml  { render :xml => @expenditure_account, :status => :created, :location => @expenditure_account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expenditure_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expenditure_accounts/1
  # PUT /expenditure_accounts/1.xml
  def update
    @expenditure_account = ExpenditureAccount.find(params[:id])

    respond_to do |format|
      if @expenditure_account.update_attributes(params[:expenditure_account])
        format.any  { head :ok }
      else
        format.any  { render :test => @expenditure_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expenditure_accounts/1
  # DELETE /expenditure_accounts/1.xml
  def destroy
    @expenditure_account = ExpenditureAccount.find(params[:id])
    @expenditure_account.destroy

    respond_to do |format|
      format.html { redirect_to(expenditure_accounts_url) }
      format.xml  { head :ok }
    end
  end
  
  def add_category
    category = ExpenditureCategory.create(params[:category])
    render :text =>  category.id
  end

  def add_expenditure_item
    expenditure_item = ExpenditureItem.create(params[:expenditure_item])
    respond_to do |format|
      format.json { render :json => expenditure_item.to_json(:include => :expenditure_account) }
    end    
  end

end

class ExpenditureCategoriesController < ApplicationController
  # GET /expenditure_categories
  # GET /expenditure_categories.xml
  def index
    @expenditure_categories = ExpenditureCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expenditure_categories }
    end
  end

  # GET /expenditure_categories/1
  # GET /expenditure_categories/1.xml
  def show
    @expenditure_category = ExpenditureCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expenditure_category }
    end
  end

  # GET /expenditure_categories/new
  # GET /expenditure_categories/new.xml
  def new
    @expenditure_category = ExpenditureCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expenditure_category }
    end
  end

  # GET /expenditure_categories/1/edit
  def edit
    @expenditure_category = ExpenditureCategory.find(params[:id])
  end

  # POST /expenditure_categories
  # POST /expenditure_categories.xml
  def create
    @expenditure_category = ExpenditureCategory.new(params[:expenditure_category])

    respond_to do |format|
      if @expenditure_category.save
        format.html { redirect_to(@expenditure_category, :notice => 'Expenditure category was successfully created.') }
        format.xml  { render :xml => @expenditure_category, :status => :created, :location => @expenditure_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expenditure_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expenditure_categories/1
  # PUT /expenditure_categories/1.xml
  def update
    @expenditure_category = ExpenditureCategory.find(params[:id])

    respond_to do |format|
      if @expenditure_category.update_attributes(params[:expenditure_category])
        format.any  { head :ok }
      else
        format.any  { render :text => @expenditure_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expenditure_categories/1
  # DELETE /expenditure_categories/1.xml
  def destroy
    @expenditure_category = ExpenditureCategory.find(params[:id])
    @expenditure_category.destroy

    respond_to do |format|
      format.html { redirect_to(expenditure_categories_url) }
      format.xml  { head :ok }
    end
  end
  
  def add_sub_category
    sub_category = ExpenditureSubCategory.create(params[:sub_category])
    render :text =>  sub_category.id
  end
  
  def add_expenditure_item
    expenditure_item = ExpenditureItem.create(params[:expenditure_item])
    respond_to do |format|
          format.json { render :json => expenditure_item.to_json(:include => :expenditure_category) }
    end
  end
end

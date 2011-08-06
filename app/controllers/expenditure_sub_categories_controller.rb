class ExpenditureSubCategoriesController < ApplicationController
  # GET /expenditure_sub_categories
  # GET /expenditure_sub_categories.xml
  def index
    @expenditure_sub_categories = ExpenditureSubCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expenditure_sub_categories }
    end
  end

  # GET /expenditure_sub_categories/1
  # GET /expenditure_sub_categories/1.xml
  def show
    @expenditure_sub_category = ExpenditureSubCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expenditure_sub_category }
    end
  end

  # GET /expenditure_sub_categories/new
  # GET /expenditure_sub_categories/new.xml
  def new
    @expenditure_sub_category = ExpenditureSubCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expenditure_sub_category }
    end
  end

  # GET /expenditure_sub_categories/1/edit
  def edit
    @expenditure_sub_category = ExpenditureSubCategory.find(params[:id])
  end

  # POST /expenditure_sub_categories
  # POST /expenditure_sub_categories.xml
  def create
    @expenditure_sub_category = ExpenditureSubCategory.new(params[:expenditure_sub_category])

    respond_to do |format|
      if @expenditure_sub_category.save
        format.html { redirect_to(@expenditure_sub_category, :notice => 'Expenditure sub category was successfully created.') }
        format.xml  { render :xml => @expenditure_sub_category, :status => :created, :location => @expenditure_sub_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expenditure_sub_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expenditure_sub_categories/1
  # PUT /expenditure_sub_categories/1.xml
  def update
    @expenditure_sub_category = ExpenditureSubCategory.find(params[:id])

    respond_to do |format|
      if @expenditure_sub_category.update_attributes(params[:expenditure_sub_category])
        format.any  { head :ok }
      else
        format.any  { render :text => @expenditure_account.errors, :status => :unprocessable_entity }
      end
    end    
  end

  # DELETE /expenditure_sub_categories/1
  # DELETE /expenditure_sub_categories/1.xml
  def destroy
    @expenditure_sub_category = ExpenditureSubCategory.find(params[:id])
    @expenditure_sub_category.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to(expenditure_sub_categories_url) }
      format.xml  { head :ok }
    end
  end
  
   def add_expenditure_item
     expenditure_item = ExpenditureItem.create(params[:expenditure_item])
     respond_to do |format|
           format.json { render :json => expenditure_item.to_json(:include => :expenditure_sub_category) }
      end
   end
   
end

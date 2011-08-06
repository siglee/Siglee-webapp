class ExpenditureItemsController < ApplicationController
  # GET /expenditure_items
  # GET /expenditure_items.xml
  def index
    @expenditure_items = ExpenditureItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expenditure_items }
    end
  end

  # GET /expenditure_items/1
  # GET /expenditure_items/1.xml
  def show
    @expenditure_item = ExpenditureItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expenditure_item }
    end
  end

  # GET /expenditure_items/new
  # GET /expenditure_items/new.xml
  def new
    @expenditure_item = ExpenditureItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expenditure_item }
    end
  end

  # GET /expenditure_items/1/edit
  def edit
    @expenditure_item = ExpenditureItem.find(params[:id])
  end

  # POST /expenditure_items
  # POST /expenditure_items.xml
  def create
    @expenditure_item = ExpenditureItem.new(params[:expenditure_item])

    respond_to do |format|
      if @expenditure_item.save
        format.html { redirect_to(@expenditure_item, :notice => 'Expenditure item was successfully created.') }
        format.xml  { render :xml => @expenditure_item, :status => :created, :location => @expenditure_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expenditure_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expenditure_items/1
  # PUT /expenditure_items/1.xml
  def update
    @expenditure_item = ExpenditureItem.find(params[:id])

    respond_to do |format|
      if @expenditure_item.update_attributes(params[:expenditure_item])
        format.any  { head :ok }
      else
        format.any  { render :text => @expenditure_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expenditure_items/1
  # DELETE /expenditure_items/1.xml
  def destroy
    @expenditure_item = ExpenditureItem.find(params[:id])
    @expenditure_item.destroy

    respond_to do |format|
      format.html { redirect_to(expenditure_items_url) }
      format.xml  { head :ok }
    end
  end
end

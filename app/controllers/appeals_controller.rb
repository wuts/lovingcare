class AppealsController < ApplicationController

  def index
    list
  end

  def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item }
    end
  end

  def list
    @items=Item.find(:all)
  end

  def new
    @item = Item.new
    @catagories=Catagory.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  def create
    @item = Item.new(params[:appeals])
    @catagory=Catagory.find(:first,:conditions=>"name='appeal'")
    @item.catagory=@catagory
    respond_to do |format|
      if @item.save
        flash[:notice] = 'Appeal was successfully created.'
        format.html { redirect_to :action=>'index'}
        format.xml  { render :xml => @appeal, :status => :created, :location => @item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @appeal.errors, :status => :unprocessable_entity }
      end
    end
  end


end

class BrokersController < ApplicationController
  # GET /brokers
  # GET /brokers.xml

  layout "main"
  before_filter :login_required

  def index
    @brokers = Broker.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @brokers }
    end
  end

  # GET /brokers/1
  # GET /brokers/1.xml
  def show
    @broker = Broker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @broker }
    end
  end

  # GET /brokers/new
  # GET /brokers/new.xml
  def new
    @broker = Broker.new

    item=Item.find(params[:item_id])
    @broker.item=item

    user=User.find(session[:user_id])
    @broker.user=user

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @broker }
    end
  end

  # GET /brokers/1/edit
  def edit
    @broker = Broker.find(params[:id])
  end

  # POST /brokers
  # POST /brokers.xml
  def create
    @broker = Broker.new(params[:broker])

    respond_to do |format|
      if @broker.save
        flash[:notice] = 'Broker was successfully created.'
        format.html { redirect_to(@broker) }
        format.xml  { render :xml => @broker, :status => :created, :location => @broker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @broker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /brokers/1
  # PUT /brokers/1.xml
  def update
    @broker = Broker.find(params[:id])

    respond_to do |format|
      if @broker.update_attributes(params[:broker])
        flash[:notice] = 'Broker was successfully updated.'
        format.html { redirect_to(@broker) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @broker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /brokers/1
  # DELETE /brokers/1.xml
  def destroy
    @broker = Broker.find(params[:id])
    @broker.destroy

    respond_to do |format|
      format.html { redirect_to(brokers_url) }
      format.xml  { head :ok }
    end
  end
end

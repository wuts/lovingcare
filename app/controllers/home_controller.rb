class HomeController < ApplicationController

  def index
    @items=Item.find(:all,:order=>"created_at DESC")
    @top_donators=Activity.find(:all,
                                :select=>"user_id,sum(money) as amount",
                                :group=>"user_id",
                                :limit=>10,
                                :order=>"amount DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items }
    end
  end
end

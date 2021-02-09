class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
  end

  def show
    @gossips = Gossip.find(params[:id])
  end

  def create
    @gossip = Gossip.new
    @gossip.title = params["title"]
    @gossip.content = params["content"]
    @gossip.save
    if @gossip.save 
      redirect_to '/gossip'
    else
      render '/gossip/new' 
    end  
  end

  def edit
  end

  def update
    #gossip = Gossip.find(params[:id])
    gossip.update_columns(title: params, content: params)
    redirect_to '/gossip'
  end

  def destroy
  end
end

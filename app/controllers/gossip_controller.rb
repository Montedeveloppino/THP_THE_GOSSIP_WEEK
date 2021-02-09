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
    if @gossip.save 
      redirect_to '/gossip'
    else
      render '/gossip/new' 
    end  
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
      @gossip = Gossip.find(params[:id])
      gossip_params = params.require(:gossip).permit(:title, :content)
      @gossip.update(gossip_params)
      puts "create"
      redirect_to '/gossip'
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    puts "#" * 60
    puts "#" * 60
    redirect_to '/gossip'
  end
end

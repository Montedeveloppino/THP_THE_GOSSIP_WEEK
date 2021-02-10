class GossipController < ApplicationController
  def index
    @gossip = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comments =  Comment.where(gossip_id: params[:id])
  end

  def create
    @gossip = Gossip.create(gossip_params)
    redirect_to gossip_index_path
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
      @gossip = Gossip.find(params[:id])
      @gossip.update(gossip_params)

      redirect_to gossip_index_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossip_index_path
  end

  private
  def gossip_params
  params.require(:gossip).permit(:title, :content)
  end

end

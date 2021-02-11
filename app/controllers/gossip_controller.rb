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
    @gossip.user = User.find_by(id: session[:user_id])
    if @gossip.save
      flash[:success] = "Potin bien créé !"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
      @gossip = Gossip.find(params[:id])
      if @gossip.update(gossip_params)
        redirect_to gossip_index_path
        else
        redirect_to edit_gossip_path
        end
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

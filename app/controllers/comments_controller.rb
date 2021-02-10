class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]
  
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit

  end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def update

  end

  def destroy
    @gossip= Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@gossip)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter)
  end

end

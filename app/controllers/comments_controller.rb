class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]
  
  def index
    @comments = Comment.all
  end

  def show
  end

  def new

  end

  def edit

  end

  def create
    @comment = Comment.new    
    @comment.gossip_id = params["gossip_id"]
    @comment.comment = params["comment"]
    @comment.save 
  end

  def update

  end

  def destroy
    @comment = Commit.find(params["gossip_id"])
    @comment.destroy
  end

end

class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.where(coordinate_id: params[:coordinate_id]).order("created_at DESC")

    @coordinate = Coordinate.find(params[:coordinate_id])    
    @coordinates = Coordinate.where(user_id: params[:user_id]).order("created_at DESC").limit(3)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to user_coordinate_comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, coordinate_id: params[:coordinate_id])
  end
end

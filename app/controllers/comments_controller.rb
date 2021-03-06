class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to picture_path(@comment.picture)
    else
      @picture = @comment.picture
      @comments = @picture.comments
      render "pictures/show"
    end
  end

  private
  def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, picture_id: params[:picture_id])
    end
end

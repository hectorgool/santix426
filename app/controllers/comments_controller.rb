class CommentsController < ApplicationController
  before_action :set_tour

  def index
    @comments = Comment.last(12).reverse
  end

  def new
    @comment = @tour.comments.build
  end

  def create
    @comment = @tour.comments.build(comment_params)
    @comment.user = current_user
    #authorize @comment, :create?
    if @comment.save
      flash[:notice] = "Comment has been created."
      redirect_to :back
    else
      flash.now[:alert] = "Comment has not been created."
      redirect_to :back
    end
  end

  private

  def set_tour
    @tour = Tour.find(params[:tour_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end

end

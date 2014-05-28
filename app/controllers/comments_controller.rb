class CommentsController < ApplicationController

  def index
    @comments = Comment.all.page(params[:page]).order('created_at DESC').per(5)
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comments = Comment.all
    respond_to do |format|

    @comment.save
    format.html { redirect_to root_path }
    end
  end

  def like
    @comment = Comment.find(params[:id])
    @comment.like += 1
    @comment.save
    @comments = Comment.all.page(params[:page]).order('created_at DESC').per(5)
    redirect_to root_path(page: params[:page])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:data, :location)
    end
end

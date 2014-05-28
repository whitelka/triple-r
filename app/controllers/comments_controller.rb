class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all.page(params[:page]).order('created_at DESC').per(5)
    @comment = Comment.new
  end

  def update
    @comment.like += 1
    @comment.save
    @comments = Comment.all.page(params[:page]).order('created_at DESC').per(5)
    redirect_to root_path(page: params[:page])
  end
  def create
    @comment = Comment.new(comment_params)
    @comments = Comment.all
    respond_to do |format|

    @comment.save
    format.html { redirect_to root_path }
    end
  end

  def destroy
    # @comment.destroy
    # respond_to do |format|
    #   format.html { redirect_to comments_url }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:data, :location)
    end
end

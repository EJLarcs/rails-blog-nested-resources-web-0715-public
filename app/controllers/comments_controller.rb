require 'pry'
class CommentsController < ApplicationController

  # def index
  #   @comments = Comment.all
  # end

  def create
    @comment = Comment.new(comment_params)
    binding.pry
    respond_to do |format|
      if @comment.save
         format.html { redirect_to @post }
      end
    end
    #comment belongs to a post... not asssigning... not saving... not redirecting
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

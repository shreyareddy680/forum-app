class CommentsController < ApplicationController
  before_action :find_commentable

    def new
      @comment = Comment.new
    end

    def create
      @comment = @commentable.comments.new(comment_params)
      if @comment.save
        if(params[:comment][:question_id])
          redirect_to Question.find_by_id(params[:comment][:question_id]) 
        else
          redirect_to @commentable  
        end
      else
        redirect_to @commentable
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:content)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Question.find_by_id(params[:question_id]) if params[:question_id]
    end
  end
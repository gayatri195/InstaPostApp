class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
      if @comment.valid?
        redirect_to root_path
      else
        flash[:alert] = "Invalid params"
        redirect_to root_path
      end
    end
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to root_path
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:description, :post_id)
    
    end
  end
class CommentsController < ApplicationController

def new
   @comment = Comment.new
 end

 def create
   comment = Comment.new(comment_params)
     comment.vote_count = 0
     comment.user_id = session[:user_id]
   if comment.save
     redirect_back(fallback_location: root_path)
   else
     redirect_back(fallback_location: root_path)
   end
 end

 def edit
   @comment = Comment.find(params[:id])
 end
 def update
   comment = Comment.find(params[:id])
   if comment.update_attributes(user_params)
     redirect_back(fallback_location: root_path)
   else
     redirect_back(fallback_location: root_path)
   end
 end

 def upvote
   @comment = Comment.find(params[:id])
   @comment.increment!(:vote_count)

   if request.xhr?
     @comment.vote_count.to_s
   else
     redirect_to comments_path
   end
 end

 def destroy
   comment = Comment.find(params[:id])
   comment.destroy
   redirect_back(fallback_location: root_path)
 end

 private
 def comment_params
   params.require(:comment).permit(:title, :body)
 end


end

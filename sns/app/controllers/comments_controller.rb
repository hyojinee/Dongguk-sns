class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        #new_comment = Ment.new(content: params[:content], post_id: params[:post_id], user_id: current_user.id)
        #new_comment.save
        #redirect_to root_path
        render text: params[:content]
    end
end

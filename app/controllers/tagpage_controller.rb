class TagpageController < ApplicationController
    before_action :authenticate_user!
    before_action :check_ownership, only: [:edit, :update, :destroy]
  
  def index
    @posts_count = current_user.posts.length
    @tags = Htg.where(name: params[:search])
    @post_ids = []
    @tags.each do |tag|
        id = tag.post_id
        @post_ids.push(id)
    end
    @posts = Post.where(id: @post_ids).order('created_at desc')
  end
end

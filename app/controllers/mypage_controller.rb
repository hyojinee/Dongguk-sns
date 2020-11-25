class MypageController < ApplicationController
    before_action :authenticate_user!
    before_action :check_ownership, only: [:edit, :update, :destroy]
  
  def index
    @posts = current_user.posts.all.order('created_at desc')
    @posts_count = current_user.posts.length
  end
end

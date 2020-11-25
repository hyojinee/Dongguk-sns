class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :dislikes, source: :user
    has_many :dislikes
    has_many :disliked_users, through: :dislikes, source: :user
    has_many :ments
    has_many :htgs
    mount_uploader :image, PostImageUploader
    
    after_create do
        post = Post.find_by(id: self.id)
        hashtags = self.content.scan(/[#＃][a-z|A-Z|가-힣|ㄱ-ㅎ|ㅏ-ㅣ|0-9|\w]+/)
        hashtags.uniq.map do |hashtag|
            Htg.find_or_create_by(name: hashtag.downcase.delete('#'), post_id: self.id)
        end
    end
end

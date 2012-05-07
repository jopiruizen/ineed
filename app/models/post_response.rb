class PostResponse < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :post
  has_many :post_response_messages
end

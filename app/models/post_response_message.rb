class PostResponseMessage < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :post_response
  
end

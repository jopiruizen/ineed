class UserRating < ActiveRecord::Base
  # attr_accessible :title, :body
   belongs_to :target , :class_name => "User" , :foreign_key => "target_id"
   belongs_to :source , :class_name => "User" , :foreign_key => "source_id"
end

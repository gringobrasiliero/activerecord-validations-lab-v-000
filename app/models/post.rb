class Post < ActiveRecord::Base
  validates :content, length:{minimum: 250}
  validates :summary, length:{maximum: 250}
  validates :title, presence:true
end

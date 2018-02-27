class Post < ActiveRecord::Base
  validates :content, length:{minimum: 250}
  validates :summary, length:{maximum: 250}
  validates :title, presence:true
  validates :category, inclusion: {in: (Fiction Non-Fiction)}
end

validates :size, inclusion: { in: %w(small medium large)
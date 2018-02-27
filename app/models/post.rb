class Post < ActiveRecord::Base
  validates :content, length:{minimum: 250}
  validates :summary, length:{maximum: 250}
  validates :title, presence:true
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

end

class TitleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.match? /(Secret|Guess|Won\'t Believe|Top)/
      record.errors[attribute] << (options[:message] || "is not clickbaity title")
    end
  end
end

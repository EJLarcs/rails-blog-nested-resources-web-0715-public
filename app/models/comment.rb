class Comment < ActiveRecord::Base
  #associations
  belongs_to :post
  belongs_to :user

  #validations
  validates :content, presence: true

end

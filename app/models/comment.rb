class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :description, :post_id, :user_id, presence: true

end

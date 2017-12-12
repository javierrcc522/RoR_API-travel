class Review < ApplicationRecord
  belongs_to :destination
  belongs_to :user

  validates_presence_of :content, :title, :rating
end

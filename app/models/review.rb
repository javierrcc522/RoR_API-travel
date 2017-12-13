class Review < ApplicationRecord
  belongs_to :destination

  validates_presence_of :content, :title, :rating
end

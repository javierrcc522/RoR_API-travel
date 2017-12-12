class Destination < ApplicationRecord
  has_many :reviews

  validates_presence_of :country, :city, :description
end

require 'rails_helper'

describe Destination, 'validation' do
  it { should validate_presence_of :country }
  it { should validate_presence_of :description }
  it { should validate_presence_of :city }
end

describe Destination, 'association' do
  it { should have_many :reviews }
end

describe Destination, 'column_specification' do
  it { should have_db_column(:country) }
  it { should have_db_column(:description) }
  it { should have_db_column(:city) }
end

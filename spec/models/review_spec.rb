require 'rails_helper'

describe Review, 'validation' do
  it { should validate_presence_of :content }
  it { should validate_presence_of :title }
  it { should validate_presence_of :rating }
end

describe Review, 'association' do
  it { should belong_to :destination }
end

describe Review, 'column_specification' do
  it { should have_db_column(:content) }
  it { should have_db_column(:title) }
  it { should have_db_column(:rating) }
end

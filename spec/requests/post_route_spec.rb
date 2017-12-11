require 'rails_helper'

describe "post a review route", :type => :request do

  before do
    post '/reviews', params: { :author => 'test_author', :content => 'test_content', :city => 'test_city', :rating => 3 }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the review content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns the city' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns the rating' do
    expect(JSON.parse(response.body)['rating']).to eq(3)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

require 'rails_helper'

describe "post a review route", :type => :request do

  before do
    post '/reviews', params: { :title => 'test_title', :content => 'test_content', :city => 'test_city', :rating => 3 }
  end

  it 'returns the title name' do
    expect(JSON.parse(response.body)['title']).to eq('test_title')
  end

  it 'returns the review content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns the destination' do
    expect(JSON.parse(response.body)['destination']).to eq('test_destination')
  end

  it 'returns the rating' do
    expect(JSON.parse(response.body)['rating']).to eq(3)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

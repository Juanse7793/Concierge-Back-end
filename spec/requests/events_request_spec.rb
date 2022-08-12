require 'rails_helper'

RSpec.describe 'Test index action', type: :request do
  before(:example) { get api_v1_events_path }
  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
end

RSpec.describe 'Test show action', type: :request do
  before(:example) do
    @event = Event.create(name: "Wrestlemania", location: "Canada", price: 3000,
      start_date: "09/12/2022", end_date: "12/12/2022", id: 32)
    get api_v1_event_path(@event)
  end
  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
end
require 'rails_helper'

RSpec.describe 'Test index action', type: :request do
  before(:example) do
    @user = User.create(name: 'Zamar', id: 3)

    @event = Event.create(name: 'tomorrowland', location: 'USA', price: 1000,
                          start_date: '09/12/2022', end_date: '12/12/2022', id: 1)

    @reservation = Reservation.create(date: '10/12/2022', city: 'Barcelona', user_id: @user.id, event_id: @event.id)
    get api_v1_user_reservations_path(@user)
  end
  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
end

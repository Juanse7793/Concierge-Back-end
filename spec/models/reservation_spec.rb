require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:each) do
    @event = Event.create(name: 'tomorrowland', location: 'USA', price: 1000,
                          start_date: '09/12/2022', end_date: '12/12/2022', id: 1)

    @user = User.create(name: 'Juan', id: 28)

    @reservation = Reservation.create(date: '10/12/2022', city: 'Barcelona', user_id: @user.id, event_id: @event.id)
  end

  it 'validates the presence of the city' do
    @reservation.city = nil
    expect(@reservation).to_not be_valid
  end

  it 'validates the presence of the date' do
    @reservation.date = nil
    expect(@reservation).to_not be_valid
  end
end

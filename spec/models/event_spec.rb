require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:each) do
    @event = Event.create(name: "tomorrowland", location: "USA", price: 1000,
      start_date: "09/12/2022", end_date: "12/12/2022")
  end

    it 'validates the presence of the name' do
      @event.name = nil
      expect(@event).to_not be_valid
  end

    it 'validates the presence of the location' do
      @event.location = nil
      expect(@event).to_not be_valid
    end

    it 'price should be greater than or equal to 0' do
      @event.price = -1
      expect(@event).to_not be_valid
    end

    it 'price should be an integer' do
      @event.price = 'string'
      expect(@event).to_not be_valid
    end

    it 'validates the presence of the start date' do
      @event.start_date = nil
      expect(@event).to_not be_valid
  end

  it 'validates the presence of the end date' do
    @event.end_date = nil
    expect(@event).to_not be_valid
end

end

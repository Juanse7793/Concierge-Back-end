require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Tafara')
  end

  describe 'user validation tests' do
    it 'validates the presence of the name' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
  end
end
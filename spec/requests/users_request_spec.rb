require 'rails_helper'

RSpec.describe 'Test index action', type: :request do
  before(:example) { get api_v1_users_path }
  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
end

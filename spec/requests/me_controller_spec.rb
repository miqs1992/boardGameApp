# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/api/me', type: :request do
  subject(:request) { send :get, '/api/me' }

  let(:user) { create(:user) }

  context 'when user is not logged in' do
    it 'return unauthorized' do
      request
      expect(response).to have_http_status(:unauthorized)
    end
  end

  context 'when user is logged in' do
    before do
      login_as(user)
      request
    end

    it 'return success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns email' do
      expect(json_response['data']['attributes']['email']).to eq(user.email)
    end
  end
end

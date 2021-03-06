# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:games_lists) }
  it { is_expected.to have_many(:games).through(:games_lists) }

  it 'has valid factory' do
    expect(create(:user)).to be_valid
  end
end

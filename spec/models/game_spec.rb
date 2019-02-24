# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Game, type: :model do
  it { is_expected.to have_many(:games_lists) }
  it { is_expected.to have_many(:users).through(:games_lists) }

  it 'has valid factory' do
    expect(create(:game)).to be_valid
  end
end

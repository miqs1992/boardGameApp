# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GamesList, type: :model do
  it { is_expected.to belong_to(:game) }
  it { is_expected.to belong_to(:user) }

  it 'has valid factory' do
    expect(create(:games_list)).to be_valid
  end
end

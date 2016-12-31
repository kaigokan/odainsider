require 'rails_helper'

RSpec.describe Theme, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_uniqueness_of(:title) }
  it { is_expected.to validate_length_of(:title).is_at_most(255) }
end

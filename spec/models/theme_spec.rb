require 'rails_helper'

RSpec.describe Theme, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_uniqueness_of(:title) }
  it { is_expected.to validate_length_of(:title).is_at_most(255) }

  describe "#self.sample" do
    before { 2.times { |i| Theme.create(:title => "theme#{i}") } }
    subject { Theme.sample }
    it { expect(subject).to be_an_instance_of(Theme) }

    context "record does not exist" do
      before { Theme.destroy_all }
      it { expect{subject}.to raise_error(ActiveRecord::RecordNotFound) }
    end
  end
end

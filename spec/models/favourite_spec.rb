# frozen_string_literal: true

describe Favourite do
  describe "validations" do
    context "when plant is present" do
      subject(:favourite) { described_class.new(plant:) }

      let(:plant) { create(:plant) }

      it { is_expected.to be_valid }
    end

    context "when plant is blank" do
      subject(:favourite) { described_class.new }

      it { is_expected.not_to be_valid }

      it "includes an appropriate error message" do
        favourite.validate

        expect(favourite.errors[:plant]).to include("must exist")
      end
    end
  end
end

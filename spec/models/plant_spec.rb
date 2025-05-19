# frozen_string_literal: true

describe Plant do
  describe "factory" do
    subject { build_stubbed(:plant) }

    it { is_expected.to be_valid }
  end

  describe "validations" do
    context "when title is blank" do
      subject(:plant) { build(:plant, title: nil) }

      it { is_expected.not_to be_valid }

      it "includes an appropriate error message" do
        plant.validate

        expect(plant.errors[:title]).to include("can't be blank")
      end
    end

    context "when title is not unique" do
      subject(:plant) { build(:plant, title: existing_plant.title) }

      let(:existing_plant) { create(:plant) }

      it { is_expected.not_to be_valid }

      it "includes an appropriate error message" do
        plant.validate

        expect(plant.errors[:title]).to include("has already been taken")
      end
    end
  end
end

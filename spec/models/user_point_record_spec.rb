require 'rails_helper'

RSpec.describe UserPointRecord, type: :model do
  
  context "when user point record is builded" do
    context "without user" do
      subject(:user_point_record) { build(:user_point_record, user: nil) }

      it { is_expected.not_to be_valid }
    end
    context "without origin user" do
      subject(:user_point_record) { build(:user_point_record, origin_user: nil) }

      it { is_expected.not_to be_valid }
    end

    context "without reference" do
      subject(:user_point_record) { build(:user_point_record, reference: nil, user: nil) }
  
      it { is_expected.not_to be_valid }
    end

    context "without record_date" do
      subject(:user_point_record) { build(:user_point_record, record_date: nil, user: nil) }
  
      it { is_expected.not_to be_valid }
    end

    context "without base_value" do
      subject(:user_point_record) { build(:user_point_record, base_value: nil, user: nil) }
  
      it { is_expected.not_to be_valid }
    end

    context "without amount" do
      subject(:user_point_record) { build(:user_point_record, amount: nil, user: nil) }
  
      it { is_expected.not_to be_valid }
    end
  end
end

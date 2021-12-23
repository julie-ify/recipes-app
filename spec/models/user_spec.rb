require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { FactoryBot.build :user }

    it 'name?' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'email?' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
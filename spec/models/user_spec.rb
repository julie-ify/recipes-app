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

  describe 'associations' do
    it 'has many to foods' do
      expect(User.reflect_on_association(:foods).macro).to eq(:has_many)
    end

    it 'has many to recipes' do
      expect(User.reflect_on_association(:recipes).macro).to eq(:has_many)
    end
  end
end

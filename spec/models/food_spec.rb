require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'validates' do
    subject { FactoryBot.build :food }

    it 'name?' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'measurement unit?' do
      subject.measurement_unit = nil
      expect(subject).to_not be_valid
    end

    it 'price?' do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it 'should have price?' do
      subject.price = 0
      expect(subject).to_not be_valid
    end
  end

  describe 'associations' do
    it 'has many to recipe_foods' do
      expect(Food.reflect_on_association(:recipe_foods).macro).to eq(:has_many)
    end

    it 'belongs to user' do
      expect(Food.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end
end

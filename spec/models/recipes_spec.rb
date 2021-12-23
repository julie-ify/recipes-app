require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'validations' do
    subject { FactoryBot.build :recipe }

    it 'name?' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'cooking time?' do
      expect(subject.cooking_time.to_i).to be_a(Integer)
    end

    it 'preparation time?' do
      expect(subject.cooking_time.to_i).to be_a(Integer)
    end

    it 'description?' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'associations' do
    it 'has many to recipe_foods' do
      expect(Recipe.reflect_on_association(:recipe_foods).macro).to eq(:has_many)
    end

    it 'belongs to user' do
      expect(Recipe.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end
end

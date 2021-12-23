require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'validations' do
    subject { FactoryBot.build :recipe_food }

    it 'quantity?' do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it 'should have a quantity?' do
      subject.quantity = 0
      expect(subject).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to recipe' do
      expect(RecipeFood.reflect_on_association(:recipe).macro).to eq(:belongs_to)
    end

    it 'belongs to food' do
      expect(RecipeFood.reflect_on_association(:food).macro).to eq(:belongs_to)
    end
  end
end

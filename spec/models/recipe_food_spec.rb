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
end
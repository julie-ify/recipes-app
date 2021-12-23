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
end

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
end

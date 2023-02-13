# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Inventory, type: :model do
  subject do
    described_class.new(item_name: 'Anything')
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a password' do
      subject.item_name = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it { should have_many(:items) }
  end
end

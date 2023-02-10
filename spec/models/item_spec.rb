require 'rails_helper'

RSpec.describe Item, :type => :model do
  subject {
      described_class.new(name: "Anything",
                          price: 100,
                          rating: "5",
                          inventory_id: 1)
  }
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a rating" do
      subject.rating = nil
      expect(subject).to_not be_valid
    end
  end
  
  describe "Associations" do
    it { should belong_to(:inventory).without_validating_presence }
  end
end

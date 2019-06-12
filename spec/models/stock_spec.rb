require 'rails_helper'

RSpec.describe Stock, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:upvotes) }

    it { should belong_to(:portfolio) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end

require 'rails_helper'

RSpec.describe Upvote, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:expert) }

    it { should belong_to(:stock) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end

require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", email: "user@hirner.at",
                     password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }
  
  it { should respond_to(:admin) }
  it { should respond_to(:you2helis) }
  
    describe "you2helis associations" do

    before { @user.save }
    let!(:older_you2helis) do
      FactoryGirl.create(:you2heli, user: @user, created_at: 1.day.ago)
    end
    let!(:newer_you2helis) do
      FactoryGirl.create(:you2heli, user: @user, created_at: 1.hour.ago)
    end

    it "should have the right you2helis in the right order" do
      expect(@user.you2helis.to_a).to eq [newer_you2heli, older_you2heli]
    end
   
    it "should destroy associated you2helis" do
      you2helis = @user.you2helis.to_a
      @user.destroy
      expect(you2helis).not_to be_empty
      you2helis.each do |you2helis|
        expect(You2heli.where(id: you2heli.id)).to be_empty
      end
    end
  end
  
end
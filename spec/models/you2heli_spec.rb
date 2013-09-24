require 'spec_helper'

describe You2heli do
  let(:user) { FactoryGirl.create(:user) }
  before { @you2heli = user.you2helis.build(content: "Lorem ipsum", user_id: user.id)}
 

  subject { @you2heli }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @you2heli.user_id = nil }
    it { should_not be_valid }
  end
  
    describe "with blank content" do
    before { @you2heli.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @you2heli.content = "a" * 141 }
    it { should_not be_valid }
  end
  
end

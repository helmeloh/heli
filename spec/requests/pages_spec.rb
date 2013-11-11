require 'spec_helper'

describe "Pages" do

  describe "About page" do

    it "should have the content 'About Heli'" do
      visit '/about'
      expect(page).to have_content('About Heli')
    end
  end
    describe "Help page" do

    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end
  end
    describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    let!(:m1) { FactoryGirl.create(:you2heli, user: user, content: "Foo") }
    let!(:m2) { FactoryGirl.create(:you2heli, user: user, content: "Bar") }

    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }

    describe "you2helis" do
      it { should have_content(m1.content) }
      it { should have_content(m2.content) }
      it { should have_content(user.you2helis.count) }
    end
  end
end
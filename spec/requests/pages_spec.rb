require 'spec_helper'

describe "Pages" do

  describe "About page" do

    it "should have the content 'About Heli'" do
      visit '/pages/about'
      expect(page).to have_content('About Heli')
    end
  end
    describe "Help page" do

    it "should have the content 'Help'" do
      visit '/pages/help'
      expect(page).to have_content('Help')
    end
  end
end
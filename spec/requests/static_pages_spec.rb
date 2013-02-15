require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'Schedule IT'" do
      visit '/static_pages/home'
      page.should have_content('Schedule IT')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                                :text => "Schedule IT | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "Schedule IT | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "Schedule IT | About")
    end
  end
end

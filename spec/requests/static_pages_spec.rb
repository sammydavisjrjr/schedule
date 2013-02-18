require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'Shift Express'" do
      visit '/'
      page.should have_content('Shift Express')
    end
    it "should have the right title" do
      visit '/'
      page.should_not have_selector('title',
                                :text => "Shift Express | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit '/help'
      page.should have_selector('title',
                                :text => "Shift Express | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
      visit '/about'
      page.should have_selector('title',
                                :text => "Shift Express | About")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/contact'
      page.should have_selector('title',
                                text: "Shift Express | Contact")
    end
  end
end

require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Shift Express'" do
      page.should have_content('Shift Express')
    end
    it "should have the right title" do
      page.should_not have_selector('title',
                                :text => "Shift Express | Home")
    end

  end

  describe "Help page" do
    before { visit '/help' }
    it "should have the content 'Help'" do
      page.should have_content('Help')
    end
    it "should have the right title" do
      page.should have_selector('title',
                                :text => "Shift Express | Help")
    end
  end

  describe "About page" do
    before { visit '/about' }
    it "should have the content 'About Us'" do
      page.should have_content('About Us')
    end
    it "should have the right title" do
      page.should have_selector('title',
                                :text => "Shift Express | About")
    end
  end

  describe "Contact page" do
    before { visit '/contact' }
    it "should have the h1 'Contact'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                                text: "Shift Express | Contact")
    end
  end
end

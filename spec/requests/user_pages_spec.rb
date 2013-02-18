require 'spec_helper'

describe "User pages" do
  describe "signup page" do
    before { visit signup_path }
    it "should have the content 'Shift Express'" do
      page.should have_content('Shift Express')
    end
    it "should have the right title" do
      page.should_not have_selector('title',
                                    :text => "Shift Express | Sign up")
    end
  end
end

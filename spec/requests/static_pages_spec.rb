require 'spec_helper'

describe "StaticPages" do
  let (:base_title) {"Ruby on Rails Tutorial Sample App"}
  describe "Home Page" do
    it "should have the content h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end
  describe "Help Page" do
    it "should have the content h1 'Help'" do
      visit help_path 
      page.should have_selector('h1', :text=>'Help')
    end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end
  describe "About Page" do
    it "should have the content h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end 
  describe "Contact Page" do
    it "should have the content h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end 

end

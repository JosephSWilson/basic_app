require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Basic App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Basic App')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Basic App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

 describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the base title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Basic App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About')
    end
  end

  describe "About page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the base title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Basic App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About Us')
    end
  end

  describe "Contacts page" do

  		it "should have the content 'Contacts'" do
  		visit '/static_pages/contacts'
  		expect(page).to have_content('Contacts')
  	end

  	it "should have the base title" do
      visit '/static_pages/contacts'
      expect(page).to have_title("Ruby on Rails Tutorial Basic App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/contacts'
      expect(page).not_to have_title('| Contacts')
    end
  end
end


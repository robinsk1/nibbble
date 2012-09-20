require File.dirname(__FILE__) + '/acceptance_helper'

feature "Home page" do
  #background do
  #  create_site_and_user('trickon', 'es')
  #  Factory(:article, :site => @site, :user => @user)
  #  Factory(:new_item, :site => @site, :user => @user)
  #  Factory(:place, :site => @site, :user => @user)
  #end

  scenario "Visiting the homepage i should see sections for projects, incentives and create a project" do
    visit home_page
    current_url.should == "http://localhost:3000/"
  end

  scenario "like a photo" do
    visit home_page
    current_url.should == "http://localhost:3000/"
    click_link 'like this photo!'
  end


end
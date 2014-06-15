require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end
    #it "should have the right title" do
    #  get 'home'
    #  expect(response).to have_selector('title', 
    #                                    :content =>"Ruby on Rails tutorial sample app | home")
    #end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      expect(response).to be_success
    end
    #it "should have the right title" do
    #  get 'contact'
    #  expect(response).to have_selector("title", 
    #                                    :content =>"Ruby on Rails tutorial sample app | contact")
    #end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
    #it "should have the right title" do
    #  get 'about'
    #  expect(response).to have_selector("title", 
    #                                    :content =>"Ruby on Rails tutorial sample app | about")
    #end
  end

end

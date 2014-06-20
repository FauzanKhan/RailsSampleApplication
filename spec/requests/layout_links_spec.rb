require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do
  describe "GET /layout_links" do
    
	it "should have a homepage at '/'" do
    	get '/'
    	response.should have_selector('title', :content => 'Home')
	end

    it "should have a contact page at '/contact'" do
    	get '/contact'
    	response.should have_selector('title', :content => 'Contact')
	end

	it "should have an about page '/about'" do
		get '/about'
		response.should have_selector('title', :content => 'About')
	end

end

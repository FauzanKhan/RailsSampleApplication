# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

require 'rails_helper'

RSpec.describe User, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "should create a new instance given a valid attribute" do
  	User.create!(:name => 'User Name', :email => 'user@example.com')
  end

  it "should require a name" do
  	no_name_user = User.new(:email => 'no_name@nosite.com')
  	no_name_user.should_not be_valid
  end

  it "should require an email address"
  	no_email_user = User.new(:name => 'noemail')
  	no_email_user.should_not be_valid
  end
end

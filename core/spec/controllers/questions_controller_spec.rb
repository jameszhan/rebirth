require 'spec_helper'

describe QuestionsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
  
  describe "GET 'new'" do
    before(:each) do
      @user = FactoryGirl.create(:user) # We should use create not build.
      stub_authentication @user
    end
    
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
  
end

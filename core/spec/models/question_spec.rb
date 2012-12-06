require 'spec_helper'

describe Question do
  before :all do
    @user = FactoryGirl.build(:user)
  end
  
  before :each do
    @question = FactoryGirl.build(:question) #Question.new
  end
  
  describe "validations" do
    it "should have a title" do
      @question.title = ""
      @question.valid?.should == false
    end
    
    it "should have a body" do
      @question.body = ""
      @question.valid?.should == false
    end
    
    it "should have a creator(user)" do
      @question.user = nil
      @question.valid?.should be_false
    end    
    
    it "should be pass" do
      @question.title.should_not be_empty 
      @question.body.should_not be_empty
      @question.user.should_not be_nil
      
      @question.valid?.should be_true
    end
    
  end
  

end

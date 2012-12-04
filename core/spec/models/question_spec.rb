require 'spec_helper'

describe Question do
  before :all do
    @user = User.new
  end
  before :each do
    @question = Question.new
  end
  
  it "check question initialize properties" do
    @question.title.should be_nil
    @question.body.should be_nil
    
    @question.user.should be_nil
    @question.updated_by.should be_nil
    @question.last_target.should be_nil
    
    @question.answers_count.should be_zero
    @question.views_count.should be_zero
    @question.hotness.should be_zero
    @question.flags_count.should be_zero

    @question.accepted.should be_false
    @question.closed.should be_false
  end
  
  it "check require fields" do
    @question.save.should be_false
    @question.title = "Hello, Test Question."
    @question.save.should be_false
    @question.body = "Question Content."
    @question.save.should be_false
    @question.user = @user
    @question.save.should be_true
  end
  
end

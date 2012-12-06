class Answer
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :body
  belongs_to :question
  belongs_to :user
  
end

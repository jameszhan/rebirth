class Question
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :title, type: String
  field :body, type: String

  field :answers_count, :type => Integer, :default => 0
  field :views_count, :type => Integer, :default => 0
  field :hotness, :type => Integer, :default => 0
  field :flags_count, :type => Integer, :default => 0

  field :accepted, :type => Boolean, :default => false
  field :closed, :type => Boolean, :default => false
  field :closed_at, :type => DateTime

  belongs_to :user
  belongs_to :updated_by, :class_name => "User"
  belongs_to :last_target, :polymorphic => true
  
  has_many :answers

  index :user_id => 1   
  
  validates_presence_of :title, :body, :user_id

end

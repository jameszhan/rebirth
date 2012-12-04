class Question
  include Mongoid::Document
  field :title, type: String
  field :body, type: String

  field :answers_count, :type => Integer, :default => 0
  field :views_count, :type => Integer, :default => 0
  field :hotness, :type => Integer, :default => 0
  field :flags_count, :type => Integer, :default => 0

  field :accepted, :type => Boolean, :default => false
  field :closed, :type => Boolean, :default => false
  field :closed_at, :type => Time

  belongs_to :user
  index :user_id => 1
  
  belongs_to :updated_by, :class_name => "User"

  belongs_to :last_target, :polymorphic => true
  
  
  validates_presence_of :title, :body, :user
  
end

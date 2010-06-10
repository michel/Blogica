class Comment                          
  include Mongoid::Document
  include Mongoid::Timestamps

  # Keys
  field :name
  field :body   
  
  # Assosiations
  embedded_in :post, :inverse_of => :comment
  
  # Validations
  validates_presence_of :name
  validates_presence_of :body
  
  # Used for anti spamm
  attr_accessor :email   
  
  
end
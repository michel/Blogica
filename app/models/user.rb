class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #keys
  field :username
  field :password
  
  #validation
  validates_presence_of :password
  validates_presence_of :username
                 
end

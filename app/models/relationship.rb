class Relationship < ActiveRecord::Base
  attr_accessible :name

  belongs_to :name, :class_name => "User"
  
end

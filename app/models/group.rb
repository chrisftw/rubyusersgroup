class Group < ActiveRecord::Base
  attr_accessible :established_on, :name, :profile

  has_many :memberships
  has_and_belongs_to_many :members, :through => :memberships, 
                          :class_name => 'User'
end

class Group < ActiveRecord::Base
  attr_accessible :established_on, :name, :profile

  has_many :memberships
  has_many :members, :through => :memberships, :source => :user
end

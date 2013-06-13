class Membership < ActiveRecord::Base
  attr_accessible :group_id, :permission_mask, :user_id

  belongs_to :user
  belongs_to :group
end

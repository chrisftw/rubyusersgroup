class Membership < ActiveRecord::Base
  attr_accessible :group_id, :permission_mask, :user_id
end

class UserRole < ActiveRecord::Base

  belongs_to :user
  belongs_to :role

  validates_presence_of :user, :role
  validates_uniqueness_of :user_id, scope: :role_id

end

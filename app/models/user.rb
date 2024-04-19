class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  has_secure_password
  rolify
  after_create :assign_default_role

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end

  def role 
    self.roles.first.name
  end

end

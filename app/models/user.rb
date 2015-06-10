class User < ActiveRecord::Base
  default_scope { order("created_at desc") }
  validates :first_name, :last_name, :email, presence: true
  validates :email, email: true
end

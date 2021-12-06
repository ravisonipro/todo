class User < ApplicationRecord
  has_many :tasks
  mount_uploader :avatar, AvatarUploader
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :username
  validates_uniqueness_of :username  
  validates_length_of :username, :minimum => 5, :maximum => 20 

  rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end

  after_create :assign_default_role
  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

end

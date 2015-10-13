class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable
  validates_presence_of :password_confirmation, :if => :password

  validates :username,
    :presence => true,
    :uniqueness => {
      :case_sensitive => false
    }

  belongs_to :state
  has_many :comments
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def name
    firstname + ' ' + lastname
  end
  
  has_many :posts
   validates :email, presence: true, length: {minimum: 1}
 validates :firstname, presence: true, length: {minimum: 1}
 validates :lastname, presence: true, length: {minimum: 1}
 validates :username, presence: true, length: {minimum: 3}
  validates :password, presence: true, length: {minimum: 1}
  validates_uniqueness_of :username
  validates_uniqueness_of :email
end

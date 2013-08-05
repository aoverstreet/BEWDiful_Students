class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
         
   has_many :stories
   has_many :comments
=======

  has_many :stories
  has_many :comments
>>>>>>> d8788ac1a603fa4ed18d5b3fd46899d09fd4c515
end

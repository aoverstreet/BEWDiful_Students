class User < ActiveRecord::Base
	
	has_many :entries
	
	validates_presence_of :name, :street1, :city, :state, :zipcode, :phone, on: :update


  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable and other login method by third parties
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable
end

class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :todo
  validates :name, presence: true, length: { maximum: 50 }
  validates :todo, presence: true, length: { maximum: 50 },
  				   uniqueness: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }

end
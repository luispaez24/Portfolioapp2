class Student < ApplicationRecord

 has_one_attached :avatar


  validates :school_email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }



  
end

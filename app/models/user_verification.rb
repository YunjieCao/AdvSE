class UserVerification < ActiveRecord::Base
    belongs_to :User_profile, foreign_key: 'user_id'
    # before_save {self.email = email.downcase}
    # validates :name, presence: true, length: {maximum: 50}
    # validates :email, presence: true, length: {maximum: 255},
    #                                   format: {with: URI::MailTo::EMAIL_REGEXP},
    #                                   uniqueness: {case_sensitive: false}
    # has_secure_password
    # validates :password, length: {minimum:6}, allow_blank: true
    
end
  
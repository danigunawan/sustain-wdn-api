class Facilitator < ApplicationRecord

  has_secure_password

  has_many :users

  has_one_attached :image



  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX },
  uniqueness: {case_sensitive: false}

  validates :name, presence: true, uniqueness: true

  validates_presence_of :password_digest

  def self.handle_login(email, password)
    user = Facilitator.find_by(email: email.downcase)
    if user && user.authenticate(password)
      user_info = Hash.new
      user_info[:token] = CoreModules::JsonWebToken.encode({user_id: user.id}, 4.hours.from_now)
      user_info[:user_id] = user.id
      user_info[:name] = user.name.capitalize
      return user_info
    else
      return false
    end
  end

end

class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:twitter]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |account|
      account.password = Devise.friendly_token[0,20]
      account.username = auth.info.nickname
      account.image_url = auth.info.image
    end
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end
end

module DeviseDemo
  class User < ApplicationRecord
    extend Devise::Models
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable, :zxcvbnable,
           :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

    def send_devise_notification(notification, *args)
       devise_mailer.send(notification, self, *args).deliver_later
    end
  end
end

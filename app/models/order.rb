class Order < ActiveRecord::Base
    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true
    validates :pickup_time, presence: true
end

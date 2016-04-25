class Menu < ActiveRecord::Base
    validates :name, presence: true
    validates :photo, presence: true
    validates :description, presence: true
    validates :price, presence: true
end

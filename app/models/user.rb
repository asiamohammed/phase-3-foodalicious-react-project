class Users < ActiveRecord::Base
    has_many :recipes
end
class User < ApplicationRecord
    with_options presence: true do
        validates :id
        validates :mail
        validates :name
        validates :password
    end
end

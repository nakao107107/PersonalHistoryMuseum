class Profile < ApplicationRecord
    has_many :q_and_a
    accepts_nested_attributes_for :q_and_a
end

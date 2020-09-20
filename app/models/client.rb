class Client < ApplicationRecord
    has_many :pets

    delegate :count, to: :pets, prefix: true
end

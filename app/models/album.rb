class Album < ApplicationRecord
    belongs_to :users, optional: true
    has_many_attached :images
end

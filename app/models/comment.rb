class Comment < ApplicationRecord
    belongs_to :quiet
    belongs_to :user
end

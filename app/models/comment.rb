class Comment < ApplicationRecord
    belongs_to :quiet
    belongs_to :user

    validates :content, presence: true, length: { maximum:200}
end
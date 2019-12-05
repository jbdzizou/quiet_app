class Quiet < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :delete_all
    has_many :infos, dependent: :delete_all

    validates :name, presence: true, uniqueness: true, length: { maximum:80}
    validates :description, presence: true, length: { maximum:400}

    mount_uploader :store, StoreUploader

end

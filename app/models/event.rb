class Event < ApplicationRecord
	validates :title, :description, presence: true,
	                                     length: { minimum: 5 }
	validates :avatar, presence: true
	mount_uploader :avatar, AvatarUploader
	has_many :locations, inverse_of: :event
	accepts_nested_attributes_for :locations, allow_destroy: true, reject_if: :all_blank
end

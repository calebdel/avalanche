class Observation < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :users
  acts_as_taggable
end

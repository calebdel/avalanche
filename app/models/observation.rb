class Observation < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :users
end

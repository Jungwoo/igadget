class Company < ActiveRecord::Base
  # Alias for <tt>acts_as_taggable_on :tags </tt>
  acts_as_taggable
  acts_as_taggable_on :techs
  
  # Thumbnail image unloader
  mount_uploader :image, ImageUploader
end

class Campaign < ActiveRecord::Base
  # Data Validation
  validates :title, :presence => true
  validates :description, :presence => true,
                    :length => { :minimum => 5 }
                    
  has_many :comments, :dependent => :destroy
      
  # Alias for <tt>acts_as_taggable_on :tags <tt>
  acts_as_taggable
  acts_as_taggable_on :techs
  
  # Thumbnail image unloader
  mount_uploader :image, ImageUploader
end

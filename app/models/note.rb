class Note < ApplicationRecord
  acts_as_taggable_on :tags
  has_many :comments, dependent: :destroy

end

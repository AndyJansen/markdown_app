class Note < ApplicationRecord
  acts_as_taggable_on :tags

end

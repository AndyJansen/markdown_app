class Note < ApplicationRecord
  acts_as_taggable_on :tags

  Note.tagged_with(["awesome", "cool"], :match_all => :true)
end

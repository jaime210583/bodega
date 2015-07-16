class Activity < ActiveRecord::Base
  belongs_to :energy
  belongs_to :kitchen
  belongs_to :craft
end

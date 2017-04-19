class Status < ActiveRecord::Base
  validates_presence_of :name, :style#, :link_style
  has_one :job
end

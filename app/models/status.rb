class Status < ActiveRecord::Base
  validates_presence_of :name
  has_one :job
end

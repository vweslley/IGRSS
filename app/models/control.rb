class Control < ActiveRecord::Base
  validates_presence_of :about, :mission, :vision
end

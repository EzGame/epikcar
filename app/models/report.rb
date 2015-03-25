class Report < ActiveRecord::Base
  #### BELONGS ####
  belongs_to :ad

  #### HAS ####
  has_many :report_attributes

end

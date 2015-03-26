class ReportAttribute < ActiveRecord::Base
  #### CONSTANTS ####
  enum :severity => {
      :low => 1,
      :medium => 2,
      :high => 3,
      :severe => 4
  }

  #### BELONGS ####
  belongs_to :report


end

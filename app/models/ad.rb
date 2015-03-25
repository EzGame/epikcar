class Ad < ActiveRecord::Base
  #### HAS ####
  has_one :report
  has_one :vehicle
  has_many :images

  def self.find_by_hash( hashid )
    hashid = Hashid.new('epikcarEZDZ')
    id = hashid.decode(hashid)
    Ad.find(id)
  end
end

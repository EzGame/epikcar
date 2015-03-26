class Ad < ActiveRecord::Base
  #### HAS ####
  has_one :report, :dependent => :destroy
  has_one :vehicle, :dependent => :destroy
  has_many :images, :dependent => :destroy

  def self.find_by_hash( hashid )
    hashid = Hashid.new('epikcarEZDZ')
    id = hashid.decode(hashid)
    Ad.find(id)
  end
end

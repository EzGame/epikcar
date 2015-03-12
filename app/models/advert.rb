class Advert < ActiveRecord::Base
  has_one :vehicle
  has_many :images

  def self.find_by_hash( hashid )
    hashid = Hashid.new('epikcarEZDZ')
    id = hashid.decode(hashid)
    Advert.find(id)
  end
end

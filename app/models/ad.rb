class Ad < ActiveRecord::Base
  #### HAS ####
  has_one :report, :dependent => :destroy
  has_one :vehicle, :dependent => :destroy
  has_many :images, :dependent => :destroy

  class << self
    def find_by_hash( hashid )
      hashid = Hashid.new('epikcarEZDZ')
      id = hashid.decode(hashid)
      Ad.find(id)
    end

    def find_ad_and_other_models( id )
      @ad = Ad.find id
      @report = @ad.report
      @vehicle = @ad.vehicle
      @images = @ad.images
    end
  end


end

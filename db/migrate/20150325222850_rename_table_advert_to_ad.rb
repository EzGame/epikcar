class RenameTableAdvertToAd < ActiveRecord::Migration
  def self.up
    rename_table :adverts, :ads
    rename_column :vehicles, :advert_id, :ad_id
    rename_column :images, :advert_id, :ad_id
  end

  def self.down
    rename_table :ads, :adverts
    rename_column :vehicles, :ad_id, :advert_id
    rename_column :images, :ad_id, :advert_id
  end
end

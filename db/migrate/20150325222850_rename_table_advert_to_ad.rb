class RenameTableAdvertToAd < ActiveRecord::Migration
  def self.up
    rename_table :adverts, :ads
  end

  def self.down
    rename_table :ads, :advertsg
  end
end

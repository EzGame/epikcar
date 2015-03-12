class CreateImages < ActiveRecord::Migration
  def up
    create_table :images do |t|
      t.belongs_to :advert

      t.string :image_url
      t.timestamps null: false
    end
  end

  def down
    drop_table :images
  end
end

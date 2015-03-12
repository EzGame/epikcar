class CreateVehicles < ActiveRecord::Migration
  def up
    create_table :vehicles do |t|
      t.belongs_to :advert, :index => true

      t.string :make, :null => false
      t.string :year, :null => false
      t.string :model, :null => false
      t.string :mileage, :null => false
      t.timestamps null: false
    end
  end

  def down
    drop_table :vehicles
  end
end

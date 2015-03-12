class CreateAdverts < ActiveRecord::Migration
  def up
    create_table :adverts do |t|
      t.string :name, :null => false
      t.integer :price, :null => false
      t.string :lister, :null => false
      t.string :contact_phone
      t.string :contact_email
      t.string :description
      t.timestamps null: false
    end
  end

  def down
    drop_table :adverts
  end
end

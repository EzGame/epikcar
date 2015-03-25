class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.belongs_to :ad, :index => true
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :reports
  end
end

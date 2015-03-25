class CreateReportAttributes < ActiveRecord::Migration
  def self.up
    create_table :report_attributes do |t|
      t.belongs_to :report, :index => true
      t.string :description, :null => false
      t.boolean :result, :null => false
      t.string :comment
      t.timestamps null: false
    end
  end
end

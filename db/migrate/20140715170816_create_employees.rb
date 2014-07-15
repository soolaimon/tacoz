class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.belongs_to :location
      t.string :name
      t.float :salary
      t.timestamps
    end
  end
end

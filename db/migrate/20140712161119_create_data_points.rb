class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.bigint :views
      t.integer :subscribers
      t.date :date

      t.timestamps
    end
  end
end
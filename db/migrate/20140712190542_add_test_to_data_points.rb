class AddTestToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :test, :bigint
  end
end

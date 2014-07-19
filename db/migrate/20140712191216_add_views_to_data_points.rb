class AddViewsToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :views, :bigint
  end
end

class ChangeViewsFormatInDataPoints < ActiveRecord::Migration
  def change
  	change_column :data_points, :views, :int, limit: 11
  end
end

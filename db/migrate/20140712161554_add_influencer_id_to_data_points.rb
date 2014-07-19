class AddInfluencerIdToDataPoints < ActiveRecord::Migration
  def change
    add_reference :data_points, :influencer, index: true
  end
end

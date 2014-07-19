class AddThumbnailToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :thumbnail, :text
  end
end

class AddUrlToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :url, :text
  end
end

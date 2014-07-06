class AddApiToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :api, :text
  end
end

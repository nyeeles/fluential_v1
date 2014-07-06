class AddUserToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :user, :string
  end
end

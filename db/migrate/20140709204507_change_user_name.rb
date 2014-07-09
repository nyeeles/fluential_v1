class ChangeUserName < ActiveRecord::Migration
  def change
  	rename_column :influencers, :user, :username
  end
end

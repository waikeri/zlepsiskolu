class AddStateToVote < ActiveRecord::Migration
  def change
    add_column :votes, :state, :boolean
  end
end

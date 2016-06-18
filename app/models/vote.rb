# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  idea_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state      :boolean
#

class Vote < ActiveRecord::Base
  belongs_to :idea

end

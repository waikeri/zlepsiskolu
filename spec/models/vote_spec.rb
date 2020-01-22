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

require 'rails_helper'

RSpec.describe Vote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

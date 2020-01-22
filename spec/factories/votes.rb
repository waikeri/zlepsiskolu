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

FactoryGirl.define do
  factory :vote do
    idea_id 1
  end
end

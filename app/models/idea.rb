# == Schema Information
#
# Table name: ideas
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  title      :string
#  first_name :string
#  last_name  :string
#  timeout_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Idea < ActiveRecord::Base
  validates :content, :title, :first_name, :last_name, presence: true

  has_many :votes

  after_create :timeout

  def timeout
    self.timeout_at = now + 1.week
    self.save
  end

  def up_votes
    self.votes.where(state: true)
  end

  def down_votes
    self.votes.where(state: false)
  end
end

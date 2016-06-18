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

end

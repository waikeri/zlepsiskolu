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

require 'rails_helper'

RSpec.describe Idea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

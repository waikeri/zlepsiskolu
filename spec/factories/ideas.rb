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

FactoryGirl.define do
  factory :idea do
    user_id 1
    content "MyText"
    title "MyString"
    first_name "MyString"
    last_name "MyString"
    timeout_at "2016-06-18 21:18:41"
  end
end

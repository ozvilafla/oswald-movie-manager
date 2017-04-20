# == Schema Information
#
# Table name: movies
#
#  id             :integer          not null, primary key
#  title          :string
#  m_format       :string
#  length_hours   :string
#  length_minutes :string
#  release_year   :datetime
#  rating         :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

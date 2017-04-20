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

class Movie < ApplicationRecord
  default_scope { order('updated_at DESC') }

  belongs_to :user

  # validations
  validates :title, length: { minimum: 1, maximum: 50 }, allow_blank: false
  validates_numericality_of :length_minutes, greater_than: 0, less_than: 500, message: 'should be in 0 to 500 range.'
  validates_numericality_of :release_year, greater_than: 1800, less_than: 2100, message: 'should be in 1800 to 2100 range.'

end

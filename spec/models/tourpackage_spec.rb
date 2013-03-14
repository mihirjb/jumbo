# == Schema Information
#
# Table name: tourpackages
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  desc          :text
#  iternary      :text
#  price         :integer
#  countries     :text
#  numdays       :integer
#  landmarks     :text
#  maxseats      :integer
#  minseats      :integer
#  startdate     :datetime
#  enddate       :datetime
#  incairfare    :boolean
#  incbreakfast  :boolean
#  inclunch      :boolean
#  incsnacks     :boolean
#  incdinner     :boolean
#  sourcecity    :string(255)
#  sourceaddress :text
#  deptime       :datetime
#  arrtime       :datetime
#  active        :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Tourpackage do
  pending "add some examples to (or delete) #{__FILE__}"
end

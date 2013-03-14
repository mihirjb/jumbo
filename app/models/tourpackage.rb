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
#  incairfare    :boolean
#  incbreakfast  :boolean
#  inclunch      :boolean
#  incsnacks     :boolean
#  incdinner     :boolean
#  sourcecity    :string(255)
#  sourceaddress :text
#  active        :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Tourpackage < ActiveRecord::Base
  attr_accessible :active, :arrtime, :countries, :deptime, :desc, :enddate, :incairfare, :incbreakfast, :incdinner, :inclunch, :incsnacks, :iternary, :landmarks, :maxseats, :minseats, :numdays, :price, :sourceaddress, :sourcecity, :startdate, :title
  
belongs_to :travelagent

  
end

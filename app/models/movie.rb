class Movie < ActiveRecord::Base
  validates :name, :presence => true
  validates :year, :presence => true
  validates :synopsis, :presence => true

  validates_numericality_of   :year,
  :only_integer => true


end
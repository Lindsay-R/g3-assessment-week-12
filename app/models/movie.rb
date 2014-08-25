class Movie < ActiveRecord::Base

  validates :name, presence: true
  validates :year, presence: true, numericality: true
  validates :synopsis, presence: true

end
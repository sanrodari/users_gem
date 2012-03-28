class Role < ActiveRecord::Base

  attr_accessor :name, :description

  validates :name, presence: true, length: { maximum: 50 }

  has_and_belongs_to_many :users

end

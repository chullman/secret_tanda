class User < ApplicationRecord
  belongs_to :location
  has_many :activities_done
end

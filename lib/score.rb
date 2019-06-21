require_relative '../config/environment'

class Score < ActiveRecord::Base

    belongs_to :user

end

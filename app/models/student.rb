require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here

  def name
    "#{first_name} #{last_name}"
  end

  def age
    ((Time.now.utc.to_date - birthday)/365.25).to_i
  end


end

require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, format: { with: /\S{1,}\@\S{1,}\.\S{2,}/, 
    message: "not a valid email" }
  validates :email, uniqueness: true
  validates :age, numericality: { greater_than: 5 }
  validates :phone, length: {minimum: 10}

  def name
    "#{first_name} #{last_name}"
  end

  def age
    ((Time.now.utc.to_date - birthday)/365.25).to_i
  end
end

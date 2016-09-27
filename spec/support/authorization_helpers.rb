#santo
module AuthorizationHelpers
  def assign_role!(user, role, tour)
    Role.where(user: user, tour: tour).delete_all
    Role.create!(user: user, role: role, tour: tour)
  end
end

RSpec.configure do |c|
  c.include AuthorizationHelpers
end

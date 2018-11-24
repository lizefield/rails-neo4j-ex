class ForceCreateCustomerUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Customer, :uuid, force: true
  end

  def down
    drop_constraint :Customer, :uuid
  end
end

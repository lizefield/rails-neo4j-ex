class ForceCreateAutherUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Auther, :uuid, force: true
  end

  def down
    drop_constraint :Auther, :uuid
  end
end

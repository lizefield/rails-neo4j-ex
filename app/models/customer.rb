class Customer
  include Neo4j::ActiveNode
  property :name, type: String, default: ''
  property :age, type: Integer, default: 20

  has_many :out, :books, type: :buy, model_class: :Book
end
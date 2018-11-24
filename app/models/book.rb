class Book
  include Neo4j::ActiveNode
  property :title, type: String, default: ''
  property :year, type: Integer, default: 2018

  has_one :in, :auther, type: :write, model_class: :Auther
  has_many :in, :customers, type: :buy, model_class: :Customer
end
class Comment
  include Neo4j::ActiveNode
  property :title, type: String, default: ''
  property :detail, type: String, default: ''
end
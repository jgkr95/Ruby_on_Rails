class Post
  include Mongoid::Document
  field :Title, type: String
  field :Genre, type: String
  field :Description, type: String
  field :Number_of_pages, type: Integer
end

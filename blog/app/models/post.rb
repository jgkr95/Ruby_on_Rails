class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :Name, type: String
  field :Title, type: String
  field :Genre, type: String
  field :Description, type: String
  field :Number_of_pages, type: Integer

  # validates :Name, presence: true,format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :Title, uniqueness: true,format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :Genre, format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :Number_of_pages, numericality: { only_integer: true ,message: "aplhabets are not allowed"}
  validates :Description, presence: true

  belongs_to :author
end

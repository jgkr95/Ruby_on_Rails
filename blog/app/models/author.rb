class Author
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :age, type: Integer
  field :details, type: String

  validates :name, presence: true,format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :age, numericality: { only_integer: true ,message: "aplhabets are not allowed"}
  validates :details, presence: true

  has_many :post
end

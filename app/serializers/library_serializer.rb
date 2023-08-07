class LibrarySerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :location

  attribute :books do |object|
    BookSerializer.new(object.books).serializable_hash[:data].map{|x| x[:attributes]}
  end
end
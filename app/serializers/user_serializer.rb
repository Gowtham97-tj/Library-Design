class UserSerializer
  include FastJsonapi::ObjectSerializer

  attribute :name, :email
end
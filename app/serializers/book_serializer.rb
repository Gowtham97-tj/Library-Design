class BookSerializer
  include FastJsonapi::ObjectSerializer

  attributes :title, :description

  attribute :users do  |object|
    if object.user.present?
      UserSerializer.new(object.user).as_json["data"]["attributes"]
    else
      {}
    end
  end 

  attribute :author_name do  |object|
    object.author.name
  end

  attribute :is_avalible do  |object|
    object.user_id.nil?
  end
end
class Api::V1::UserResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email
end

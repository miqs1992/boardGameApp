# frozen_string_literal: true

class MeSerializer
  include FastJsonapi::ObjectSerializer
  set_type :user
  attributes :email
end

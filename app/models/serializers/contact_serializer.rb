class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :kind, :value, :user_id

  belongs_to :user
end

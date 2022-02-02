class ChannelSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  has_many :messages
end

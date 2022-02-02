class MessageSerializer
  include JSONAPI::Serializer
  attributes :id, :message, :username

  def username
    self.object.user.username
  end
end

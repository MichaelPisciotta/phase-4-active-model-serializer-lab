class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  def short_content
    object.content.slice(0,39)
  end

end

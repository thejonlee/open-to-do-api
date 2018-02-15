class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at, :name, :private

  def name
    object.name
  end

  def created_at
    objected.created_at.strftime('%B %d, %Y')
  end
end

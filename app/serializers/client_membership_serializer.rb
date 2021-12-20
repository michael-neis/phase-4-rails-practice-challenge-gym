class ClientMembershipSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :membership_total

  def membership_total
    object.memberships.sum(:charge)
  end
end

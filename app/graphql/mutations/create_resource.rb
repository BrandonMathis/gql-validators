module Mutations
  class CreateResource < BaseMutation
    argument :duration, String, required: false, validates: { iso_8601_duration: {} }

    field :duration, String

    def resolve(duration:)
      { duration: duration }
    end
  end
end


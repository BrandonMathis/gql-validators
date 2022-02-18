class Validators::ISO8601DurationValidator < GraphQL::Schema::Validator
  def validate(_object, _context, value)
    ActiveSupport::Duration.parse(value)
  rescue ActiveSupport::Duration::ISO8601Parser::ParsingError => e
    e.message
  end
end

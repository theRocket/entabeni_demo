module Types
    class Email < Types::BaseScalar
      description "A valid email address"
  
      def self.coerce_input(input_value, context)
          if EmailAddress.valid? input_value
              # It's valid, pass the object along
              input_value
          else
              raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid email address"
          end
      end
  
      # this must be implemented
      def self.coerce_result(ruby_value, context)
          # no need to coerce outgoing emails, presumed to be valid
          ruby_value
      end
    end
  end
  
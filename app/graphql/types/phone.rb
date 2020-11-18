module Types
    class Phone < Types::BaseScalar
      description "A valid US phone number"
  
      def self.coerce_input(input_value, context)
          # Parse the incoming object into a TelephoneNumber
          phone_object = TelephoneNumber.parse(input_value, :US)
          # validates , telephone_number: {country: 'US', types: [:mobile]}
          if phone_object.valid?
              # It's valid, return the phone object
              phone_object
          else
              raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid US Phone number"
          end
      end
  
      def self.coerce_result(ruby_value, context)
          # Parse the outgoing object into a TelephoneNumber
          phone_object = TelephoneNumber.parse(ruby_value, :US)
          phone_object.national_number #==> "(111) 111-1111"
      end
    end
  end
  
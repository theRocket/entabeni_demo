class User < ApplicationRecord

   validates :phone, telephone_number: {country: 'US', types: [:mobile]}

   validates_with EmailAddress::ActiveRecordValidator, on: :create

   validates :name_first, {
        presence: {message: "First name cannot be empty when providing a Last name"},
        unless: Proc.new { |a| a.name_last.blank? }
   }

   # alternate method
   # validate :name_last_needs_a_first, on: :create
          # message: 'First name cannot be empty when providing a Last name'

    # def name_last_needs_a_first
    #     if name_last.present? && name_first.blank?
    #         errors.add(:name_last, "First name cannot be empty when providing a Last name")
    #     end
    # end

end

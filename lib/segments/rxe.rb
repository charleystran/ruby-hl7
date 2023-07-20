# encoding: UTF-8
class HL7::Message::Segment::RXE < HL7::Message::Segment
  add_field :quantity_timing
  add_field :give_code
  add_field :give_amount_minimum
  add_field :give_amount_maximum
  add_field :give_units
  add_field :give_dosage_form
  add_field :providers_administration_instructions
  add_field :deliver_to_location
  add_field :substitution_status
  add_field :dispense_amount
  add_field :dispense_units
  add_field :number_of_refills
  add_field :ordering_providers_dea_number
  add_field :pharmacist_treatment_suppliers_verifier_id
  add_field :prescription_number
  add_field :number_of_refills_remaining
  add_field :number_of_refills_doses_dispensed
  add_field :datetime_of_most_recent_refill_or_dose_dispensed
  add_field :total_daily_dose
  add_field :needs_human_review_id
  add_field :pharmacy_treatment_suppliers_special_dispensing_instructions
  add_field :give_per_time_unit
  add_field :give_rate_amount
  add_field :give_rate_units
  add_field :give_strength
  add_field :give_strength_units
  add_field :give_indication
  add_field :dispense_package_size
  add_field :dispense_package_size_unit
  add_field :dispense_package_method
  add_field :supplementary_code
  add_field :original_order_date_time do |value|
    convert_to_ts(value)
  end
  add_field :give_drug_strength_volume
  add_field :give_drug_strength_volume_units
  add_field :controlled_substance_schedule
  add_field :formulary_status
  add_field :pharmaceutical_substance_alternative
  add_field :pharmacy_of_most_recent_fill
  add_field :initial_dispense_amount
  add_field :dispensing_pharmacy
  add_field :dispensing_pharmacy_address
  add_field :deliver_to_patient_location
  add_field :deliver_to_address
  add_field :pharmacy_order_type
  add_field :pharmacy_phone_number

  private
  def self.convert_to_ts(value) #:nodoc:
    if value.is_a?(Time) or value.is_a?(Date)
      return value.to_hl7
    else
      return value
    end
  end
end


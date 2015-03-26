class Report < ActiveRecord::Base
  #### CONSTANTS ####
  POWERTRAIN_ATTRIBUTES = {
    "Engine’s Operation" => {
      "Black deposits on oil-filter cap?" => :severe,
      "Engine oil look milky or smell like gasoline?" => :severe,
      "Oily films near exhaust pipe?" => :high,
      "Bolt-on performance modifications?" => :high,
      "Non OEM part performance modifications?" => :medium,
      "The engine has been under load for more than 150,000 km" => :medium,
      "Timing belt needs to be replaced" => :high
    },
    "Engine Quality" => {
      "Engine oil appears gooey or black?" => :severe,
      "Shiny metallic particles in the oil?" => :severe,
      "Is the engine oil dark or has lots of black particles?" => :severe,
      "Blue-gray smoke from the exhaust" => :severe,
      "Rubber hoses to radiator are not firm and supple" => :high,
      "Engine Oil needs to be changed" => :low
    },
    "Transmission" => {
      "Transmission Fluid smell burnt?" => :severe,
      "Does the car clunk into gear?" => :high,
      "Transmission noisy in Neutral" => :medium,
      "Transmission fluid need to be replaced" => :medium
    },
    "Other Powertrain Components" => {
      "Seepage at the bottom of the brake reservoir?" => :high,
      "Sludge in the bottom of the coolant reservoir?" => :high,
      "Sign of fluid leaks?" => :high,
      "Warning lights on dashboard" => :high,
      "Drive shaft flex discs, couplings and center support bearings" => :high
    }
  }

  CHASSIS_ATTRIBUTES = {
    "Underbody Condition" => {
      "Rust on underbody surfaces" => :high,
      "Any bent or dented metal parts?" => :high,
      "Underbody plastic parts are broken" => :low
    },
    "Structure" => {
      "Rims are bent" => :medium,
      "Uneven wear on the tires" => :medium,
      "Wheels move when tug and push on wheels" => :medium,
      "Shiny marks on the pinch welds?" => :high
    },
    "Suspension & Brakes" => {
      "Movement from tie rods and suspension mounts when pulled" => :medium,
      "Suspension check" => :medium,
      "Brake pads and rotors ready to be replaced" => :medium,
      "Corroded ball joints" => :medium
    },
    "Various fluid leaks" => {
      "Transmission or Differential leaks?" => :high,
      "Fluid seepage around brake caliper or front of brake drums?" => :high,
      "Bottom of the radiator wet from coolant?" => :high
    }
  }

  EXTERIOR_ATTRIBUTES = {
    "Exterior" => {
      "Rust is everywhere on the vehicle" => :severe,
      "Rust spots can be found on the vehicle" => :high,
      "Rust bubbles can be found on the vehicle" => :high,
      "Faded or cracked paint" => :medium,
      "Exterior fails magnet test" => :medium,
      "Minor scratches" => :low
    },
    "Signs of accident & repair" => {
      "Evidence of damage" => :medium,
      "Evidence of structural Damage" => :high,
      "Improper repair of damage" => :high
    },
    "Other" => {
      "Missing Lug Nuts" => :medium,
      "Tires need replacement" => :medium,
      "Tire side walls have the following" => :medium,
      "Battery ampage lower than recommended" => :medium,
      "Sunroof" => :high,
      "A/C" => :high
    }
  }

  #### BELONGS ####
  belongs_to :ad

  #### HAS ####
  has_many :report_attributes, :dependent => :destroy

  class << self

    def attributes
      return {
        "Powertrain" => POWERTRAIN_ATTRIBUTES,
        "Chassis" => CHASSIS_ATTRIBUTES,
        "Exterior" => EXTERIOR_ATTRIBUTES
      }
    end

    def create_from_form( form )
      report = Report.new

      attributes = []
      form.each do |field, value|
        attr = ReportAttribute.new(
          :description => field,
          :result => value == 'pass' ?
              true : false,
        )
        attributes << attr
      end
      report.report_attributes = attributes

      report
    end

    private

    def find_severity( attribute )
      # TODO: some sort of reverse hash search. Think about how to do this
    end
  end
end

class Car
    attr_accessor :make, :model_year, :speed, :lights, :pbrake
    def initialize(make, model_year, speed=0, lights=false, pbrake=false)
        @make = make
        @model_year = model_year
        @speed = speed
        @lights = lights
        @pbrake = pbrake
    end
    def accelerate
        @speed = @speed + 10
    end
    def brake
        if @speed <= 7
            @speed = 0
        else
            @speed = @speed - 7
        end
    end
    def make= new_make
        @make = new_make
    end
    def model_year= new_model_year
        @model_year = new_model_year
    end
    def lights
        @lights = !(@lights)
    end
    def lights_status
      if @lights == false
          @lights_status = "off"
      else
          @lights_status = "on"
      end
    end
    def lights= new_lights
        @lights = new_lights
    end
    def pbrake= new_pbrake
        @pbrake = new_pbrake
    end
    # def pbrake
    #     @pbrake = !(@pbrake)
    # end
    def pbrake_status(true)
        if @pbrake == false
            @pbrake_status = false
        else
            @pbrake_status = true
        end
    end
end

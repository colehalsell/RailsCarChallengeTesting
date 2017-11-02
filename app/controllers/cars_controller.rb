class CarsController < ApplicationController
  def index
  end
  def create
      @car = Car.new(params[:make], params[:model_year])
      session[:car] = @car.to_yaml
      render 'create.html.erb'
  end
  def accelerate
     @car = YAML.load(session[:car])
     if params.has_key?(:speed)
        @car.accelerate
        session[:car] = @car.to_yaml
     end
     if params.has_key?(:brake)
        @car.brake
        session[:car] = @car.to_yaml
     end
     if params.has_key?(:lights)
        @car.lights
        @car.lights_status
        session[:car] = @car.to_yaml
     end
     if params.has_key?(:pbrake) && params[:pbrake] == "true"
         @car.pbrake(true)
         session[:car] = @car.to_yaml
        #  do the stuff for pbrake on
        # save the state of pbrake to yaml
      elsif params.has_key?(:pbrake) && params[:pbrake] == "false"
          @car.pbrake(false)
          session[:car] = @car.to_yaml
        # do the stuff for brake off
        # save the state of pbrake to yaml
      else
        #   set default, if you want

        #  @car.pbrake(true)
        #  @car.pbrake_status
        #  session[:car] = @car.to_yaml
     end
     render 'create.html.erb'
  end
end


# params[:pbrake] == 'off' ? true : false

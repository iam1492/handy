class SignupsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token, :only => :create
  def create
  	respond_to do |format|  
	    format.html { 
	    	super 
	    }
	    format.json {
			build_resource
			if resource.save
				render :status => 200, :json => resource
			else
				render :json => resource.errors, :status => :unprocessable_entity
			end
	    }
  	end
  end

  def new
  	super
  end

  def destroy
  	super
  end

  def show
  	@user = User.find_by_email(params[:email])
  	respond_to do |format|
  		format.json {
  			render :status=>200, :json=>{:message=> "ok nice"}
  		}
  	end
  end
  
end

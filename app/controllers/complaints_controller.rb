class ComplaintsController < ApplicationController
  def index
    @pagy, @complaints = pagy(Complaint.all)
  end

  def show
    @complaint = Complaint.find params[:id]
  end

  def new
    @complaint = Complaint.new
    @customer = @complaint.build_customer
  end

  def create
    @complaint = Complaint.new(complaint_params)
    ip = request.remote_ip
    zipcode = complaint_params[:zipcode]

    return invalid_address if !MatchLocations.(ip, zipcode) && !test?

    if @complaint.save
      redirect_to root_path, flash: { notice: 'Successfully created.' }
    else
      render :new, flash: { error: 'Failure, check all fields.' }
    end
  end

  private

  def complaint_params
    params.require(:complaint).permit(
      :order_id, :zipcode, :description,
      customer_attributes: [ :name, :email, :phone ]
    )
  end

  def invalid_address
    error = 'Your current location is too far from the shipping address.'
    
    respond_to do |format|
      format.html {
        flash.now[:error] = error
        render :new
      }
    end
  end

  def test?
    Rails.env.test?
  end
end

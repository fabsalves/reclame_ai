class ComplaintsController < ApplicationController
  def new
    @complaint = Complaint.new
    @customer = @complaint.build_customer
  end

  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      redirect_to new_complaint_path, flash: { notice: 'Successfully created.' }
    else
      redirect_to new_complaint_path, flash: {
        error: 'Failure, check all fields please.'
      }
    end
  end

  private

  def complaint_params
    params.require(:complaint).permit(
      :order_id, :zipcode, :description,
      customer_attributes: [
        :name, :email, :phone
      ]
    )
  end
end

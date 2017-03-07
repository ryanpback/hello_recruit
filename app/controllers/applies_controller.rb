class AppliesController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @apply = @job.applies.new
  end

  def create
    @job = Job.find(params[:job_id])
    @apply = @job.applies.new(apply_params)
    if @job.save
      flash[:notice] = 'Application Submitted!'
      redirect_to job_path(@job)
    else
      flash[:alert] = 'Your application was not submitted.'
      render :new
    end
  end

private
  def apply_params
    params.require(:application).permit(:first_name, :last_name, :email, :phone_number, :skills, :street_address, :city, :state, :zip_code, :resume, :cover_letter, :job_id, :user_id)
  end
end

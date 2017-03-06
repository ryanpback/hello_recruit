class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
    authorize! :new, @job
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = 'Job Saved!'
      redirect_to jobs_path
    else
      flash[:alert] = "Job not saved."
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
    authorize! :edit, @job
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:notice] = 'Job Updated!'
      redirect_to job_path(@job)
    else
      flash[:alert] = "Job not saved."
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

private
  def job_params
    params.require(:job).permit(:title, :location, :job_type, :description, :compensation, :duration, :skills)
  end
end

class EnrollmentsController < ApplicationController
  def create
    @enrollment = Enrollment.new(enrollment_params)

    @job = @enrollment.job

    @enrollment.user = current_user unless @job.user == current_user

    if @enrollment.save
      redirect_to jobs_path, notice: "You applied for this job!"
    else
      redirect_to job_path(@job), alert: "You can't apply to a job you created"
    end
  end

  def destroy
  end

  private

  def enrollment_params
    params.permit(:job_id)
  end
end

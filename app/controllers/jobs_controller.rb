class JobsController < ApplicationController
  before_action :set_job, only: %i[edit show update]
  before_action :set_enrollment, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index]

  # Listagem de todos os Jobs
  def index
    if current_user
      @jobs = Set.new(current_user.jobs.order(:created_at))
      Job.all.order(:created_at).each { |job| @jobs << job }
    else
      @jobs = Job.all.order(:created_at)
    end
    @jobs
  end

  # Lista um Job
  def show
  end

  # Lista um form de cadastro
  def new
    @user = current_user.id
    @job = Job.new
  end

  # Cria um Job
  def create
    @job = Job.new(job_params)
    @user = current_user.id
    @job.user_id = @user
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  # Lista um form de edicao
  def edit
  end

  # Acao de Update
  def update
    if @job.update(job_params) && current_user.id == @job.user_id
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def mine
    @jobs = Set.new(current_user.jobs.order(:created_at))
  end

  private

  def job_params
    params.require(:job).permit(:name, :content, :cnpj, :amount)
  end

  def set_job
    @job = Job.find(params[:id])
  end

  def set_enrollment
    @enrollment = Enrollment.find_by(user_id: current_user, job_id: params[:id])
  end
end

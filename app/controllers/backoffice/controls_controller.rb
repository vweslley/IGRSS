class Backoffice::ControlsController < BackofficeController
  before_action :set_control, only: [:edit, :update]

  def index
    @controls = Control.all
  end

  def new
    @control = Control.new
  end

  def edit
     authorize @control
  end

  def update
    if @control.update(params_control)
      redirect_to backoffice_controls_path, notice: "Parâmetros Atualizado com Sucesso."
    else
      render :edit
    end

  end

  private

  def set_control
    @control = Control.find(params[:id])
  end

  def params_control
    params.require(:control).permit(:about, :mission, :vision)
  end
end

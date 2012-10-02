class Admin::MusesController < CmsAdmin::BaseController
  respond_to :html, :json

  def index
    respond_with(@muses = Muse.all)
  end

  def show
    @muse = Muse.find(params[:id])
    respond_with(@muse)
  end

  def edit
    @muse = Muse.find(params[:id])
  end

  def update
    @muse = Muse.find(params[:id])

    respond_to do |format|
      if @muse.update_attributes(params[:muse])
        format.html { redirect_to [:admin, @muse], notice: 'Muse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @muse.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @muse = Muse.find(params[:id])
    @muse.destroy

    respond_to do |format|
      format.html { redirect_to admin_muses_url }
      format.json { head :no_content }
    end
  end
end

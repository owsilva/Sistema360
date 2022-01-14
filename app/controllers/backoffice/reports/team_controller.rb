class Backoffice::Reports::TeamController < Backoffice::BackofficeController

  def index
    @point = current_user.point("ACTIVATION")
    @records = current_user.point_records.order(created_at: :desc)
  end
end

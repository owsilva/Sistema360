class Backoffice::Financial::WithdrawController < Backoffice::BackofficeController
  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    withdraw = Withdraw.new(wallet: wallet, balance: params[:value])
    withdraw.save!
    render json: { success: true }
  end

  private

  def wallet
    current_user.wallet
  end
end
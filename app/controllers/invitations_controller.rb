class InvitationsController < ApplicationController
  def request
    invitation = Invitation.create(email: params[:email])
    if invitation.valid?
      code = 'created'
      status = 201
    else
      code = 'already_requested'
      status = 500
    end
    render json: {code: code}, status: status
  end
end

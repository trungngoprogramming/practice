class MembersController < ApplicationController
  def new
    @member = Member.new
    @member.posts.new
  end

  def create
    Member.transaction do
      return raise ActiveRecord::Rollback unless Member.create member_params
      redirect_to new_member_url
    end
  end

  private

  def member_params
    params.require(:member).permit :name, :email, :accept_age, posts_attributes: %i(title content)
  end
end

class MembersController < ApplicationController
  def new
    @member = Member.new
    @member.posts.new
  end

  def create
    Member.transaction do
      Member.create member_params
      redirect_to root_url
    end
  end

  private

  def member_params
    params.require(:member).permit :name, :email, posts_attributes: [:title, :content]
  end
end

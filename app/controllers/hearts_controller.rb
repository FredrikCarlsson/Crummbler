class HeartsController < ApplicationController
	def create
    @heart = Heart.new(heart_params)

    respond_to do |format|
      if @heart.save
        format.html { redirect_to @heart.post, notice: 'Hearted that post!' }

      else
   		redirect_to root_url, notice: "Had and issue creating an heart.."
      end
    end
	end

	   def heart_params
      params.require(:heart).permit(:post_id)
    end
end
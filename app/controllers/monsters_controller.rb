class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html
      format.text { render text: @monsters.pluck(:name).join(" ") }
      format.json { render json: @monsters }
      format.csv do
        render text: @monsters.to_csv
      end
    end
  end
end

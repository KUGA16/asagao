class LessonController < ApplicationController
  def step1
    render plain: "こんにちは、#{params[:name]}さん"
  end

  def step2
    render plain: request.env["HTTP_USER_AGENT"] #ブラウザの種類
    # render plain: request.remote_ip #IPアドレス
  end

  def step3
    redirect_to action: 'step4'
  end

  def step4
    render plain: 'step4に移動しました。'
  end

  def step5
    flash[:notice] = 'step6に移動します。'
    redirect_to action: 'step6'
  end

  def step6
    render plain: flash[:notice]
  end
end
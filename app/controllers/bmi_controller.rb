class BmiController < ApplicationController
  def index
  end

  def result
    # 把單位換算成公尺
    height = params[:body_height].to_f / 100
    weight = params[:body_weight].to_f 

    #bmi公式: BMI = 體重(單位:公斤) / 身高平方(單位: 公尺)
    @bmi = (weight / (height * height)).round(2)
  end

end

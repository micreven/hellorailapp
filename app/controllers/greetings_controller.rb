class GreetingsController < ApplicationController
  def hello

	@time_now
	@greeting

	tody=Time.new
	@time_hours=tody.hour

	if @time_hours < 4  then @greeting ="夜深了，早点休息吧！"	
	else if @time_hours < 11 then @greeting ="早上好，充实的一天开始了：）"
	else if @time_hours < 19 then @gteeting ="下午好，更加努力的工作吧！"	
	else @greeting = "晚上好，下班回家多陪陪家人吧～"
	end 
	@time_now = "当前时间："+tody.strftime("%Y-%m-%d %H:%M:%S")
	end
end
end
end


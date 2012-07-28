object @user
attributes :remember_token
if (@user && @user.authenticate(params[:session][:password]))
	node (:result) { "success" }	
else
	node (:result) { "failed" }
end
object @user

if @user.save
	attributes :name, :email
	node (:result) { "success" }
else
	node (:result) { "failed" }
end
   
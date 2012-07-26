object @user
attributes :id, :name, :email, :description, :created_at

child :posts do
	attribute :title, :description
end
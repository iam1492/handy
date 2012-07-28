object @post
attributes :id, :title, :description, :created_at

child :images do
	attribute :image_path
end

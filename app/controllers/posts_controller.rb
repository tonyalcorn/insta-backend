class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: Post.all, include: [:user] 
    end

    def create
        user = User.find_by(username: params[:username])
        post = user.posts.create(post_params)
        render json:post, include: [:user]
    end

    def update
        post = Post.find_by(params[:post_id])
        post.update(post_params)
        render json:post, include: [:user]
    end
    

    def destroy
        # byebug
        post = Post.find_by(params[:id])
        post.destroy
        render json: {
            status: "ok", code: 200
        }
    end


    private

    def post_params
        params.require(:post).permit(:image_url, :location, :description)
    end
end

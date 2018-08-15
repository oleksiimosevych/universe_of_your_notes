class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    #let me find inside content something and insert something there or?
    #@my_post_content= @post.content
    def words

      #strings = @post.content.split('\n')
      
      # strings.map(&:strip)
       # @post.content.delete_if { |string| string.length == 0 }

      #str.scan(/\S+/).flat_map{ |w| w.gsub(/^[^a-z]+|[^a-z]+$/i,'').split(//) }
    end
    # words
    # h(@post.content).gsub(/\n/, '<br/>')
    # @post.content = @post.content.gsub(/\n/, '<br>')
    # @my_post_content = @post.content.split('<br>')#.html_safe
    @my_post_content=@post.content.html_safe.to_s
    @my_post_content=@my_post_content#.split('\n', 'ролр') 
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    #edit 15 53 250718
    @post = current_user.posts.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end

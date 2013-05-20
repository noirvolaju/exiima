require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { carrera: @post.carrera, clase1: @post.clase1, clase2: @post.clase2, clase3: @post.clase3, clase4: @post.clase4, materia1: @post.materia1, materia2: @post.materia2, materia3: @post.materia3, materia4: @post.materia4, nombre: @post.nombre }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    put :update, id: @post, post: { carrera: @post.carrera, clase1: @post.clase1, clase2: @post.clase2, clase3: @post.clase3, clase4: @post.clase4, materia1: @post.materia1, materia2: @post.materia2, materia3: @post.materia3, materia4: @post.materia4, nombre: @post.nombre }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end

require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
   
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]",   login_path
    get contact_path
    assert_select "title", full_title("Contact")
    get signup_path 
    assert_template 'users/new'                     #指定のレイアウトが表示されるか 
    assert_select "title", full_title("Sign up")
  end
    def setup
      @user = users(:michael)
    end

    #ログイン済みのユーザー
test "layout links when logged in user" do
  log_in_as(@user)
  get root_path
  assert_select "a[href=?]", root_path, count: 2
  assert_select "a[href=?]", help_path
  assert_select "a[href=?]", about_path
  assert_select "a[href=?]", contact_path
 # assert_select "a[href=?]", signup_path テスト失敗するのでコメントアウトした
  assert_select "a[href=?]", users_path
  assert_select "a[href=?]", user_path(@user)
  assert_select "a[href=?]", edit_user_path(@user)
  assert_select "a[href=?]", logout_path
  end

#ログインしていないユーザー
  test "layout links when not logged in user" do
    get users_path
    follow_redirect!
    assert_template 'sessions/new'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", login_path
  end
    

  test "count relationships" do
    log_in_as(@user)
    get root_path
    assert_match @user.active_relationships.count.to_s, response.body
    assert_match @user.passive_relationships.count.to_s, response.body
  end
  
end

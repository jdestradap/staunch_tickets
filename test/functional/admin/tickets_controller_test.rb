require 'test_helper'

class TicketsControllerTest < ActionController::TestCase
  setup do
    @admin_ticket = admin_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ticket" do
    assert_difference('Ticket.count') do
      post :create, admin_ticket: {  }
    end

    assert_redirected_to admin_ticket_path(assigns(:admin_ticket))
  end

  test "should show admin_ticket" do
    get :show, id: @admin_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ticket
    assert_response :success
  end

  test "should update admin_ticket" do
    put :update, id: @admin_ticket, admin_ticket: {  }
    assert_redirected_to admin_ticket_path(assigns(:admin_ticket))
  end

  test "should destroy admin_ticket" do
    assert_difference('Ticket.count', -1) do
      delete :destroy, id: @admin_ticket
    end

    assert_redirected_to admin_tickets_path
  end
end

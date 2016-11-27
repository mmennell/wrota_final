class StaffsController < ApplicationController
  def index
    @staffs = Staff.page(params[:page]).per(10)

    render("staffs/index.html.erb")
  end

  def show
    @job = Job.new
    @staff = Staff.find(params[:id])

    render("staffs/show.html.erb")
  end

  def new
    @staff = Staff.new

    render("staffs/new.html.erb")
  end

  def create
    @staff = Staff.new

    @staff.firstname = params[:firstname]
    @staff.lastname = params[:lastname]
    @staff.contact_telephone = params[:contact_telephone]
    @staff.photo = params[:photo]
    @staff.home_restaurant_id = params[:home_restaurant_id]
    @staff.user_id = params[:user_id]
    @staff.verified = params[:verified]
    @staff.role_id = params[:role_id]

    save_status = @staff.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/staffs/new", "/create_staff"
        redirect_to("/staffs")
      else
        redirect_back(:fallback_location => "/", :notice => "Staff created successfully.")
      end
    else
      render("staffs/new.html.erb")
    end
  end

  def edit
    @staff = Staff.find(params[:id])

    render("staffs/edit.html.erb")
  end

  def update
    @staff = Staff.find(params[:id])

    @staff.firstname = params[:firstname]
    @staff.lastname = params[:lastname]
    @staff.contact_telephone = params[:contact_telephone]
    @staff.photo = params[:photo]
    @staff.home_restaurant_id = params[:home_restaurant_id]
    @staff.user_id = params[:user_id]
    @staff.verified = params[:verified]
    @staff.role_id = params[:role_id]

    save_status = @staff.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/staffs/#{@staff.id}/edit", "/update_staff"
        redirect_to("/staffs/#{@staff.id}", :notice => "Staff updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Staff updated successfully.")
      end
    else
      render("staffs/edit.html.erb")
    end
  end

  def destroy
    @staff = Staff.find(params[:id])

    @staff.destroy

    if URI(request.referer).path == "/staffs/#{@staff.id}"
      redirect_to("/", :notice => "Staff deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Staff deleted.")
    end
  end
end

class AdminController < ApplicationController
    http_basic_authenticate_with name: "admin05", password: "01234"

end
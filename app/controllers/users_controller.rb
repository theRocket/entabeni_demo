class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    # GET /users
    def index
        @users = User.all
        json_response(@users)
    end

  # POST /user
    def create
        @user = User.create!(user_params)
        json_response(@user, :created)
    end

   # POST /users/fileupload
    def fileupload
        users = []
        csv = File.read(params[:file])
        CSV.parse(csv, headers: true).each do |row|
            users << row.to_h
        end
        logger.info("Transforming imported user data: "+users.to_s)

        # re-map keys to our data columns
        key_map = {First: 'name_first', Last: 'name_last', Phone: 'phone', Email: 'email'}
        # convert header strings to symbols
        users.map{|hash| hash.transform_keys!(&:to_sym) }
        # now use the key_map
        new_users = users.each { |r| r.transform_keys! {|k| key_map[k]}}

        ## import
        logger.info("Importing file with user data: "+new_users.to_s)
        @result = User.import(new_users, all_or_none: false) #allow valid creates
        if (@result.failed_instances)
            logger.info("User import failed on data: "+@result.failed_instances.to_s)
        end
        # json_response(@result.results, :created)
        render 'welcome/index'
    end

    # GET /users/:id
    def show
        json_response(@user)
    end

    # PUT /users/:id
    def update
        @user.update(user_params)
        head :no_content
    end

    # DELETE /user/:id
    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_params
    # whitelist params
        params.permit(:name_last, :name_first, :phone, :email)
    end

    def set_user
        @user = User.find(params[:id])
    end
end

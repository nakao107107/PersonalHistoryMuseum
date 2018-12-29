class UserController < ApplicationController

    #email,name,passwordをゲット
    #フロント側でvalidationをかけるからここではかけなくていい
    #user modelでemailとpasswordを検索.同じものがあったときはidをparamsに渡してindexページに映る
    #なかった時はerrror返してもう一度ログインページへ

    def sign_in_page
    end

    def sign_in
        credential = params['credential']
        @mail = credential['email']
        @password = credential['password']

        user = User.find_by(mail: @mail, password: @password)

        if user 
            set_user_id(user.id)
            redirect_to('/profiles')
        else
            @error = 'メールアドレスかパスワードが正しくありません'
            render "user/sign_in_page"
        end
    end

    def sign_up_page

    end

    #実質sign_up
    #email,name,passwordをゲット
    #フロント側でvalidationをかけるからここではかけなくていい
    #user modelでemailを検索.同じものがあったときはエラーで返す
    #
    def create
        credential = params['credential']
        @mail = credential['email']
        @password = credential['password']
        @name = credential['name']

        @id = get_user_id
        user = User.new(mail: @mail, name:@name, password: @password, id:@id)

        if user.save
            set_user_id(@id)
            redirect_to('/profiles')
        else
            @error = '記入に不備があるようです'
            render "user/sign_up_page"
        end
    end

    def sign_out
        session[:id] = nil
        @notice = 'ログアウトしました'
        render('user/sign_in_page')
    end

    def destroy
    end

    private

    def get_user_id
        return User.count
    end
end

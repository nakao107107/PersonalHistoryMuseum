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
            @credential.email = @mail
            @credential.password = @password
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

    end

    def destroy
    end
end

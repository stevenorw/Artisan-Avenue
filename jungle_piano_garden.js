//Artisan Avenue
//File: Main.js

//Imports
import { CreateUserPage, LoginPage, HomePage, MyAccountPage } from "./pages";

//Event Listeners
document.body.addEventListener("click", (e) => {
    if (e.target.classList.contains('create_user_btn')) {
        CreateUserPage.init();
    }else if (e.target.classList.contains('login_btn')) {
        LoginPage.init();
    }else if (e.target.classList.contains('home_btn')) {
        HomePage.init();
    }else if (e.target.classList.contains('my_account_btn')) {
        MyAccountPage.init();
    }
});

//Init
CreateUserPage.init();

//Page Objects
const CreateUserPage = {
    init() {
        //Code to initialise
        this.createUserForm();
    },
    createUserForm() {
        //Code to create user form.
    }
};

const LoginPage = {
    init() {
        //Code to initialise
        this.loginForm();
    },
    loginForm() {
        //Code to render login form.
    }
};

const HomePage = {
    init() {
        //Code to initialise
        this.renderPage();
    },
    renderPage() {
        //Code to render page.
    }
};

const MyAccountPage = {
    init() {
        //Code to initialise
        this.renderPage();
    },
    renderPage() {
        //Code to render page.
    }
};
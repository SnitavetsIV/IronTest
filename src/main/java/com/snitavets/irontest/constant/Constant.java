package com.snitavets.irontest.constant;

/**
 * @author Ilya_Snitavets
 */
public final class Constant {

    public static final String PAGE_LOGIN = "loginPage";
    public static final String PAGE_REGISTRATION = "registrationPage";
    public static final String PAGE_GUEST_MAIN = "guestMainPage";
    public static final String PAGE_USER_MAIN = "userMainPage";
    public static final String PAGE_ADMIN_MAIN = "adminMainPage";
    public static final String PAGE_TUTOR_MAIN = "tutorMainPage";
    public static final String PAGE_403 = "error403page";
    public static final String PAGE_CONTACT = "contact";
    public static final String PAGE_ABOUT = "about";
    public static final String PAGE_USER_PERSONAL = "userPersonal";


    public static final String ATR_USER = "user";
    public static final String ATR_ERROR = "error";
    public static final String ATR_MSG = "msg";
    public static final String ATR_LOGIN = "login";

    public static final String MSG_LOGIN_ERR_USPASS = "auth.login.msg.err.uspass";
    public static final String MSG_LOGIN_ERR_LOCKED = "auth.login.msg.err.locked";

    public static final String MSG_LOGOUT_SUCCESS = "auth.logout.msg.success";

    public static final String MSG_REG_SUCCESS = "auth.reg.msg.success";
    public static final String MSG_REG_ERR_LOGIN_EXIST = "auth.reg.msg.err.login.exist";
    public static final String MSG_REG_ERR_PASS_SAME = "auth.reg.msg.err.pass.same";

    public static final String MSG_CONT_SUCCESS = "contact.msg.success";

    public static final String MSG_ERR_UNKNOWN = "default.msg.err.unknown";
    private Constant() {
    }
}

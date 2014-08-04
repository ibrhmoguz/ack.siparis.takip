using System;
using System.Web;
using System.Web.Security;

public class FormsAuthenticationProvider
{
    private string _userName;
    private string _userData;
    
    public FormsAuthenticationProvider(string userName, string userData) 
    {
        this._userName = userName;
        this._userData = userData;
    }

    private FormsAuthenticationTicket ticket(string userName, string userData)
    {
        return new FormsAuthenticationTicket
        (  
            1,
            userName,
            DateTime.Now,
            DateTime.Now.AddMinutes(30),
            false,
            userData,
            FormsAuthentication.FormsCookiePath
        );
    }

    private HttpCookie authorizationCookie(FormsAuthenticationTicket ticket)
    {
        HttpCookie authCookie = new HttpCookie
        (
            FormsAuthentication.FormsCookieName,
            FormsAuthentication.Encrypt(ticket)
        );

        authCookie.Secure = true;

        return authCookie;
    }

    public void Authenticate()
    {
        HttpContext.Current.Response.Cookies.Add(authorizationCookie(ticket(this._userName, this._userData)));
        FormsAuthentication.RedirectFromLoginPage(this._userName, false);
    }

    public static void LogOut()
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
}

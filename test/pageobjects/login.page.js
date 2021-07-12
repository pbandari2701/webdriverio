import { assertTextPresentOnElement, selectByTxt, sendKeys, switchToNewWindow, switchWindowOnTitle, waitAndClick } from "../helpers/customcommands";
import BasePage from "./base.page";

class LoginPage extends BasePage{

    get hdsUserNametxt() { return $('//input[@id="txtLogin"]')}
    get hdsPasswordtxt() { return $('//input[@id="txtPassword"]')}
    get ssoBtnSubmit()   { return $('#_ctl0_full__ctl0_cmdSignin')}
    get subsciberDD() { return $('#ddlSubscriber')}

    loginHDS(username){
        sendKeys(this.hdsUserNametxt, username);
        sendKeys(this.hdsPasswordtxt, 'Password1');
        waitAndClick(this.ssoBtnSubmit);
    }

    selectSubscriber(subsciber){
        selectByTxt(this.subsciberDD,subsciber);
    }

    open () {
        return super.open();
    }
}

export default new LoginPage();
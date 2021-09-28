import { assertTextPresentOnElement, selectByTxt, sendKeys, switchToNewWindow, switchWindowOnTitle, waitAndClick } from "../helpers/customcommands";
import BasePage from "./base.page";
let CREDENTIALS_FILE_NAME = 'credentials';

class LoginPage extends BasePage{


    get hdsUserNametxt() { return $('//input[@id="txtLogin"]')}
    get hdsPasswordtxt() { return $('//input[@id="txtPassword"]')}
    get ssoBtnSubmit()   { return $('#_ctl0_full__ctl0_cmdSignin')}
    get subsciberDD()    { return $('#ddlSubscriber')}
    get signoutLink()    { return $('//a[text()="Sign Out"]')}

    loginHDS(userType){
        if(!(this.signoutLink.isDisplayed())){
        sendKeys(this.hdsUserNametxt, this.getTestData()[userType]['username'], 'UserName txt') ;
        sendKeys(this.hdsPasswordtxt, this.getTestData()[userType]['password'], 'Password TXT');
        waitAndClick(this.ssoBtnSubmit);
        selectByTxt(this.subsciberDD,this.getTestData()[userType]['subscriber'],"subscriber Dropdown");
        }
    }

    selectSubscriber(){
        selectByTxt(this.subsciberDD,this.getTestData()["Admin"]['subscriber']);
    }

    open () {
        return super.open();
    }

    getTestData(){
        return this.testDataJson(CREDENTIALS_FILE_NAME);
    }
}

export default new LoginPage();
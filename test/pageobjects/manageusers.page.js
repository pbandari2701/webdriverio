const { waitAndClick, expectToHaveTitle, expectToBeDisplayed, waitForDisplay } = require("../helpers/customcommands");
const { default: BasePage } = require("./base.page");
const USER_EDITOR_PAGE_TITLE = 'User Editor - HDS';

class ManagerUserPage extends BasePage{
    get newUserBtn()        { return $('//a[text()=" New"]')}
    get newERPLinkbtn()     { return $('//button[text()=" New ERP Linked"]')}
    get erpDesignerSearchText()        { return $("//h4[@class='modal-title']")}
    get closeERPsrch()      { return $('//a[text()="Close"]')}
    get firstRecordinManageUsersPage() { return $('//table[@id="_ctl0_body_grdData"]//tr[3]//td[1]/a')}

    clickNewUser(){
        console.log('IN NEWUSER')
        waitAndClick(this.newUserBtn,'New User');
    }

    async validateUserEditorPageIsloaded(){
        console.log('IN PAGETITLE')
        expectToHaveTitle('User Editor - HDS');
    }

    clickNewERPLink(){
        waitAndClick(this.newERPLinkbtn, 'New ERP Linked')
    }

    validateERPsrcpopup(){
        //waitForDisplay(this.erpDesignerSearchText,"ERP Search popup")
        expectToBeDisplayed(this.erpDesignerSearchText,'ERP Search popup');
        waitAndClick(this.closeERPsrch, 'Close ERP popup');
    }

    clickFirstRecordFromManageUsers(){
        waitAndClick(this.firstRecordinManageUsersPage,'First Record')
    }


}

export default new ManagerUserPage();
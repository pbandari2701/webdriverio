const { waitAndClick, expectToHaveTitle, expectToBeDisplayed } = require("../helpers/customcommands");
const { default: BasePage } = require("./base.page");
const USER_EDITOR_PAGE_TITLE = 'User Editor - HDS';

class ManagerUserPage extends BasePage{
    get newUserBtn()        { return $('//a[text()=" New"]')}
    get newERPLinkbtn()     { return $('//button[text()=" New ERP Linked"]')}
    get closeERPsrch()      { return $('//a[text()="Close"]')}
    get firstRecordinManageUsersPage() { return $('//table[@id="_ctl0_body_grdData"]//tr[3]//td[1]/a')}

    clickNewUser(){
        console.log('IN NEWUSER')
        waitAndClick(this.newUserBtn,'New User');
    }

    async validateUserEditorPageIsloaded(){
        console.log('IN PAGETITLE')
        expectToHaveTitle(USER_EDITOR_PAGE_TITLE);
    }

    clickNewERPLink(){
        waitAndClick(this.newERPLinkbtn, 'New ERP Linked')
    }

    validateERPsrcpopup(){
        expectToBeDisplayed(this.closeERPsrch,'ERP Search popup')
    }

    clickFirstRecordFromManageUsers(){
        waitAndClick(this.firstRecordinManageUsersPage,'First Record')
    }


}

export default new ManagerUserPage();
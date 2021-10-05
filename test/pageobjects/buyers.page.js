const { waitAndClick, sendKeys } = require("../helpers/customcommands");
const { default: BasePage } = require("./base.page");


class BuyersPage extends BasePage{

    get searchKeyWordTxt()          { return $('#txtSearchPhrase')}
    get cmdSearchbtn()              { return $('#cmdSearch')}
    get openBuyer()                 { return $('//a[text()="Open"]')}
    get openSearchedRecord()        { return $('//a[text()="Open"]')}
    get buyersReportsPage()         { return $('//a[text()="Reports"]')}

    searchBuyer(buyerName){
        sendKeys(this.searchKeyWordTxt,buyerName);
        waitAndClick(this.cmdSearchbtn,'search buyer');
        
    }

    openActiveBuyer(){
        waitAndClick(this.openBuyer,'open searched buyer')
    }

    navigateToServiceOffering(svcOfferingName){
        waitAndClick(this.getServiceOffering(svcOfferingName), svcOfferingName);
    }

    openSVCRecord(){
        waitAndClick(this.openSearchedRecord,"Open Searched Record")
        
    }

    navigateToBuyersReportsPage(){
        waitAndClick(this.buyersReportsPage, "Buyers Reports")
    }

    getServiceOffering(svcName) { return $('//strong[text()="Design Center"]/../following-sibling::div//a[text()="'+svcName+'"]')}
}

export default new BuyersPage();
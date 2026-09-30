const { waitAndClick, pauseBrowser } = require("../helpers/customcommands");
const { default: BasePage } = require("./base.page");


class DesignerPage extends BasePage{


    get buyersLink()      { return $('=Buyers') }
   
    navigateToBuyersPage(){
        pauseBrowser(10000);
        waitAndClick(this.buyersLink);
    }
}

export default new DesignerPage();
import { Then } from "@cucumber/cucumber";
import DesignerPage from '../pageobjects/designer.page'

Then(/^I should be displayed with a correct quote report$/, function () {
  
    DesignerPage.navigateToBuyersPage()
});
    
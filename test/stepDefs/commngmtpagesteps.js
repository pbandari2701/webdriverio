import { Given, When, Then } from "@cucumber/cucumber";
import { pauseBrowser,switchToPreviousWindow, expectToHaveTitle,expectToHaveTitleContaining } from "../helpers/customcommands";
import HomePage from '../pageobjects/home.page'
import commngmentpage from '../pageobjects/commngment.page.js'

Given(/^A new community is created with the following attributes$/, function()  {
    HomePage.clickingOnCommmunitiesCMLink();
    HomePage.clickingOnnewBtnInCM();
    commngmentpage.setValueToBuilderHDS();
    commngmentpage.setValueTocommunityNameTxtBox();
    commngmentpage.setValueToContact();
})
Given(/^Wall Tile is set as a required service offering and use of HDS Custom calculator is applied$/, function() {
    commngmentpage.setValueToWallTileDD();
})
Given(/^LifeStyle Options is set as a required Service Offering for the community$/, function()  {
    commngmentpage.setValueToLSODD();
})
Given(/^Lifestyle Options cuttoff date Appliances with display order 1 is added to the community$/, function()  {

}) 
Given(/^Flooring products with the following attributes are added as standards$/, function()  {
    commngmentpage.addingFlooringProductsAsStandard();
})
Given(/^A pad product with the following attribute is added as a standard$/, function()  {
    commngmentpage.addingPadProductsAsStandard();
})
Given(/^Community Flooring Group setup Page is opened and saved$/, function()  {

})
Given(/^A new floor plan for a community is created with the following attributes$/, function()  {

})

const ASSERT = require('assert')
const allureReporter = require('@wdio/allure-reporter').default
const WAIT_FOR_TIMEOUT   = 30000;
const WAIT_UNTIL_TIMEOUT = 120000;

class ElementNotFoundError extends Error{
    constructor(message){
        super(message);
        this.name = "ElementNotFoundError";
    }
}

class WDIOAssertionError extends ASSERT.AssertionError{
    constructor(message){
        super(message);
        this.name = "ElementNotFoundError";
    }
}

function getScreenshot() {
    browser.saveScreenshot('./Reports/screenshots/'+Date.now()+'.png');
}

module.exports = {
    
    waitAndClick: function(element, elementLabel) {
        let eleStatus = false;
        try {
            element.waitForClickable({timeout:WAIT_FOR_TIMEOUT});
            eleStatus = expect(element).toBeEnabled();
            element.click();
            allureReporter.addStep("Clicked on Webelement "+elementLabel, 'passed'); 
        } catch (Error) {
            allureReporter.addStep(elementLabel+' Webelement is not Clickable after waiting for '+WAIT_FOR_TIMEOUT/1000+' seconds', getScreenshot(), 'failed');
            ASSERT(eleStatus,'WebElement '+elementLabel+' is not clickable');
            throw new ElementNotFoundError(elementLabel+ ' Element is not clickable')
        }
    },

    sendKeys: function(element, value, elementLabel) {
        let eleStatus = false;
        try {
            element.waitForExist({timeout : WAIT_FOR_TIMEOUT});
            eleStatus = expect(element).toBeEnabled();
            element.setValue(value);
            allureReporter.addStep("Set value for "+elementLabel+" as "+value, 'passed'); 
        } catch (Error) {
            allureReporter.addStep('unable to set value to'+elementLabel, getScreenshot() ,'failed');
            ASSERT(eleStatus, 'Unable to set value to webelement '+elementLabel+' as the element is not enabled');
            throw new ElementNotFoundError(elementLabel+' Element not found ')
        }
       
    },

    clearTextBox : function (element) {
        element.waitForExist();
        element.doubleClick();
        browser.keys("Delete")
    },

    sendTab: function (element) {
        element.waitForExist()
        browser.keys('Tab')
    },

    switchToNewWindow: function(windowName){
        browser.switchWindow(windowName);
        console.log("switched to window"+windowName)
    },

    assertTextPresentOnElement: function(element , expectedText){
        try {
            const assertionElement = element;
            console.log(assertionElement.getText()+"GET TEXT");
            this.waitAndClick(assertionElement)
            expect(assertionElement).toExist();
        } catch (Error) {
            console.log("unable to find lbluser name");
        }
    },

    selectByTxt: function(element ,visibleTxt){
        const ddElement = element;
        ddElement.waitForExist();
        ddElement.selectByVisibleText(visibleTxt);
    },

    expectToBeEnabled: function(element ,elementLabel){
       try {
        const ele = element;
        expect(ele).toBeEnabled();
        allureReporter.addStep(elementLabel+' is Enabled', 'passed');
       } catch (Error) {
        allureReporter.addStep(elementLabel+' is not Enabled',getScreenshot(), 'failed');
        throw new ElementNotFoundError(elementLabel+' Element is not enabled');
       }
    },

    expectToBePresent: function(element, elementLabel){
        try {
            const ele = element;
            expect(ele).toBePresent();
            allureReporter.addStep(elementLabel+' is Present', 'passed');
        } catch (Error) {   
            allureReporter.addStep(elementLabel+' is not Present',getScreenshot(), 'failed');   
            throw new ElementNotFoundError(elementLabel+' Element Is Not Present ');
        }
    },

    expectToBeDisabled: function(element, elementLabel){
        try {
            expect(ele).toBeDisabled();
            allureReporter.addStep(elementLabel+' is Disabled', 'passed');
        } catch (Error) {
            allureReporter.addStep(elementLabel+' is not Disabled', getScreenshot(), 'failed');
        }
    },

    getAttributeValue: function(element, attribute){
        try {
           const ele = element;
           ele.waitForExist();
           const value = ele.getAttribute(attribute); 
           return value;
        } catch (Error) {
            
        }
    },

    getTextOfElement: function(element){
        try {
            const ele = element;
           return ele.getText();
        } catch (Error) {
            
        }
    },

    pauseBrowser: function(time){
        browser.pause(time)
    },

    reloadPage: function () {
        browser.reload();
    },

    waitForDisplay: function (element) {
        try {
            element.waitForDisplayed({timeout : WAIT_FOR_TIMEOUT})
            allureReporter.addStep(' is Disabled', 'passed');
        } catch (Error) {

            allureReporter.addStep(' is Disabled',getScreenshot(), 'failed');
        }
       
    },

    waitUntilElementIsDisplayed : function (element, elementLabel) {
        try {
            browser.waitUntil(
                () => element.waitForExist(), 
                WAIT_UNTIL_TIMEOUT,
                '**=ELEMENT IS NOT DISPLAYED AFTER WAITING FOR=** '+WAIT_UNTIL_TIMEOUT);
                allureReporter.addStep(elementLabel+' element is not displayed', 'passed');
        } catch (Error) {
            allureReporter.addStep('Element is not Displayed',getScreenshot(), 'failed');
        }
        
    },

    waitUntilElementIsClickable : function(element, elementLabel) {
        try {
            browser.waitUntil(
                () => element.waitForClickable(), 
                WAIT_UNTIL_TIMEOUT, 
                '**=ELEMENT IS NOT CLICKABLE AFTER WAITING FOR=** '+WAIT_UNTIL_TIMEOUT);
                allureReporter.addStep('clicked on element '+elementLabel, 'passed');
        } catch (Error) {
            allureReporter.addStep('Element is not clickable', getScreenshot(), 'failed');
        }
    },

    waitUntilElementIsEnabled : function (element, elementLabel) {
        let eleStatus = false;
        try {
            browser.waitUntil(
                () => eleStatus = element.isEnabled(),
                WAIT_UNTIL_TIMEOUT,
                '**=ELEMENT IS NOT ENABLED AFTER WAITING FOR=** '+WAIT_UNTIL_TIMEOUT);
            allureReporter.addStep(elementLabel+' Element is enabled', 'passed');
        } catch (Error) {      
            allureReporter.addStep(elementLabel+' Element is not enabled', getScreenshot(), 'failed'); 
            ASSERT(eleStatus);
        }
    }
}
const ASSERT = require('assert')
const allureReporter = require('@wdio/allure-reporter').default
const WAIT_FOR_TIMEOUT   = 30000;
const WAIT_UNTIL_TIMEOUT = 120000;
const WAIT_UNTIL_FILE_DOWNLOAD = 300000;
const WAIT_FOR_TIMEOUT_UNTIL_ELEMENT_GONE = 3000000;
const moment = require('moment');
const fs = require('fs');

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
    browser.saveScreenshot('./Reports/screenshots/'+moment().format('DD-MMM-YYYY-HH-mm-ss')+'.png');
}

module.exports = {
    
    waitAndClick: function(element, elementLabel) {
        let eleStatus = false;
        try {
            element.waitForClickable({timeout:WAIT_FOR_TIMEOUT});
            eleStatus = expect(element).toBeClickable();
            element.click();
            allureReporter.addStep("Clicked on Webelement "+elementLabel, 'passed'); 
        } catch (Error) {
            allureReporter.addStep(elementLabel+' Webelement is not Clickable after waiting for '+WAIT_FOR_TIMEOUT/1000+' seconds', getScreenshot(), 'failed');
            ASSERT(eleStatus,'WebElement '+elementLabel+' is not clickable');
            throw new ElementNotFoundError(elementLabel+ ' Element is not clickable')
        }
    },

    doubleClickOnElement(element,elementLabel){
        let eleStatus = false;
        try {
            element.waitForClickable({timeout:WAIT_FOR_TIMEOUT});
            eleStatus = expect(element).toBeClickable();
            element.doubleClick();
            allureReporter.addStep("Clicked on Webelement "+elementLabel, 'passed'); 
        } catch (Error) {
            allureReporter.addStep(elementLabel+' Webelement is not Clickable after waiting for '+WAIT_FOR_TIMEOUT/1000+' seconds', getScreenshot(), 'failed');
            ASSERT(eleStatus,'WebElement '+elementLabel+' is not clickable');
            throw new ElementNotFoundError(elementLabel+ ' Element is not clickable')
        } 
    },

    javaScriptClick(element,elementLabel){
        var selector = "document.querySelector("+element+").click()";
        console.log(selector);
        try {
            browser.executeScript(selector);
            allureReporter.addStep("Clicked on Webelement "+elementLabel, 'passed'); 
        } catch (Error) {
            allureReporter.addStep(elementLabel+' Webelement is not Clickable after waiting for '+WAIT_FOR_TIMEOUT/1000+' seconds', getScreenshot(), 'failed');
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

    sendKeyStroke: function(value){
        browser.keys(value);
    },

    switchToNewWindow: function(windowName){
        browser.switchWindow(windowName);
        console.log("switched to window"+windowName)
    },

    acceptAlert: function(){
        browser.acceptAlert();
    },

    assertTextPresentOnElement: function(element , expectedText){
        try {
            const assertionElement = element;
            assertionElement.waitForDisplayed({timeout : WAIT_FOR_TIMEOUT})
            expect(assertionElement).toHaveTextContaining(expectedText)
            allureReporter.addStep('Verified that '+expectedText+' successfully ', getScreenshot() ,'passed');
        } catch (Error) {
            allureReporter.addStep(expectedText+' not present ', getScreenshot() ,'failed');
        }
    },

    selectByTxt: function(element ,visibleTxt, elementLabel){
        try {
            const ddElement = element;
            ddElement.waitForEnabled({timeout: WAIT_FOR_TIMEOUT});
            var  eleStatus = expect(element).toBeEnabled();
            ddElement.selectByVisibleText(visibleTxt);  
            allureReporter.addStep('Selected value '+visibleTxt+' from dropdown '+elementLabel, getScreenshot() ,'passed');
        } catch (error) {
            allureReporter.addStep('unable to set value to dropdown '+elementLabel, getScreenshot() ,'failed');
            ASSERT(eleStatus, 'Unable to set value to webelement '+elementLabel+' as the element is not enabled');
        }
       
    },

    expectToBeEnabled: function(element ,elementLabel){
        var status = false;
       try {
        const ele = element;
        status = expect(ele).toBeEnabled();
        allureReporter.addStep(elementLabel+' is Enabled', 'passed');
       } catch (Error) {
        allureReporter.addStep(elementLabel+' is not Enabled',getScreenshot(), 'failed');
        throw new ElementNotFoundError(elementLabel+' Element is not enabled');
       }
       return status;
    },

    expectToBeClickable: function(element ,elementLabel){
        var status = false;
        try {
         const ele = element;
         status = expect(ele).toBeClickable();
         allureReporter.addStep(elementLabel+' is clickable', 'passed');
        } catch (Error) {
         allureReporter.addStep(elementLabel+' is not clickable',getScreenshot(), 'failed');
         throw new ElementNotFoundError(elementLabel+' Element is not clickable');
        }
        return status;
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

    expectToBeDisplayed: function(element, elementLabel){
        try {
            expect(ele).toBeDisplayed();
            allureReporter.addStep(elementLabel+' is displayed', 'passed');
        } catch (Error) {
            allureReporter.addStep(elementLabel+' is not displayed', getScreenshot(), 'failed');
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
                allureReporter.addStep(elementLabel+' element is displayed', 'passed');
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
        // try {
        //     browser.waitUntil(
        //         () => element.isEnabled(),
        //         WAIT_UNTIL_TIMEOUT,
        //         '**=ELEMENT IS NOT ENABLED AFTER WAITING FOR=** '+WAIT_UNTIL_TIMEOUT);
        //     allureReporter.addStep(elementLabel+' Element is enabled', 'passed');
        // } catch (Error) {      
        //     allureReporter.addStep(elementLabel+' Element is not enabled', getScreenshot(), 'failed'); 
          
        // }
        // return element;
        try {
            browser.waitUntil(
                () => element.isEnabled(),
                {
                    timeout : WAIT_UNTIL_TIMEOUT,
                    timeoutMsg : "Element"+elementLabel+" is not enabled even after "+WAIT_UNTIL_TIMEOUT
                }
            )
        } catch (Error) {
            
        }
        return element;
    },

    waitUntilElementIsDisplayed : function (element, elementLabel) {
        // let eleStatus = false;
        // try {
        //     browser.waitUntil(
        //         () => element.isEnabled(),
        //         WAIT_UNTIL_TIMEOUT,
        //         '**=ELEMENT IS NOT ENABLED AFTER WAITING FOR=** '+WAIT_UNTIL_TIMEOUT);
        //     allureReporter.addStep(elementLabel+' Element is enabled', 'passed');
        // } catch (Error) {      
        //     allureReporter.addStep(elementLabel+' Element is not enabled after '+WAIT_UNTIL_TIMEOUT, getScreenshot(), 'failed'); 
          
        // }
        try {
            browser.waitUntil(
                () => element.isDisplayed(),
                {
                    timeout : WAIT_UNTIL_TIMEOUT,
                    timeoutMsg : "Element"+elementLabel+" is not enabled even after "+WAIT_UNTIL_TIMEOUT
                }
               
            )
            allureReporter.addStep(elementLabel+' Element is Displayed',getScreenshot(), 'passed');
        } catch (Error) {
            allureReporter.addStep(elementLabel+' Element is not enabled after '+WAIT_UNTIL_TIMEOUT, getScreenshot(), 'failed'); 
        }
        return element;
    },

    waitUntilElementIsDisabled : function (element) {
    try {
        console.log("IN WAIT UNTIL");
        browser.waitUntil(
            () => element.isDisplayed() === false,
            WAIT_FOR_TIMEOUT_UNTIL_ELEMENT_GONE,
            'ELEMENT IS STILL ENABLED AFTER '+WAIT_FOR_TIMEOUT_UNTIL_ELEMENT_GONE);
    } catch (Error) {
        console.log('Element is still displayed after '+WAIT_FOR_TIMEOUT_UNTIL_ELEMENT_GONE);
    }
        
    },

    waitForFileToDownload : function(fileName){
        try {
            browser.waitUntil(
                () => fs.existsSync('./Reports/downloads/'+fileName) == true,{
                timeout : WAIT_UNTIL_FILE_DOWNLOAD,
                timeoutMsg : "FIle "+fileName+" not downloaded within "+WAIT_UNTIL_FILE_DOWNLOAD/1000+" seconds"
                }
            )
            allureReporter.addStep("successfully downloaded the fileName "+fileName,getScreenshot(), 'passed')
        } catch (Error) {
            allureReporter.addStep(fileName+" not downloaded within "+WAIT_UNTIL_FILE_DOWNLOAD/1000+" seconds" ,getScreenshot(), 'failed')
        }
    }
}
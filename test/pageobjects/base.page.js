/**
* main page object containing all methods, selectors and functionality
* that is shared across all page objects
*/
import fs from 'fs'
import path from 'path';
import URL from 'url'



export default class BasePage {
    /**
    * Opens a sub page of the page
    * @param path path of the sub page (e.g. /path/to/page.html)
    */
    open () {
        return browser.url('/')
    }

    testDataJson(fileName){
        let data = fs.readFileSync('test/data/'+fileName+'.json');
        let dataStream = JSON.parse(data);
        return dataStream;
    }

}

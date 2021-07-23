import BasePage from './base.page';

const pactum = require('pactum')

let spec = pactum.spec();

var token= null;

class APIPage {

    getURL(endPoint) {    
       spec.get(endPoint)
    }

    postWithJson(endPoint, jsonPath){
       console.log(endPoint)
       console.log(jsonPath)
       spec.post(endPoint)
       .withJson(jsonPath)
       .expectStatus(201)
       .expect((ctx)=>{
          token = ctx.res();
          console.log('TOKEN IS '+token);
       })
       console.log('TOKEN IS '+token);
    }

    getAuthToken(endPoint, jsonPath){
      const token =  this.postWithJson(endPoint, jsonPath);
      console.log('token is '+token)
    }

}

export default new APIPage();
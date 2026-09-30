import { Given } from "@cucumber/cucumber";
import apiPage from "../pageobjects/api.page";
const pactum = require('pactum');
let spec = pactum.spec();
let jsonData = require('../data/api/getToken.json')

Given('I make a POST request to {string}',async function (url) {
  
   spec.post(url).withJson(jsonData).expectStatus(200);
   // await spec.toss();
   // spec.expectBodyContains("fooTedt")
  })
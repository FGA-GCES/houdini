/**
 * API title
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 0.0.1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import * as models from './models';

/**
 * Register a nonprofit
 */
export interface PostNonprofit extends models.PostNonprofitNonprofit {    

}
export class PostNonprofitException implements Error{

    constructor(obj:PostNonprofit, message?:string){
            this.item = obj;
            this.item = obj;

    }

    message!: string;
    stack!: string;
    name!: string;

    item: PostNonprofit;
}



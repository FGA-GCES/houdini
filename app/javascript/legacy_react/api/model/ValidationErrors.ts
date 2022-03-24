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
export interface ValidationErrors {
    /**
     * errors
     */
    errors?: Array<models.ValidationError>;

}
export class ValidationErrorsException implements Error{

    constructor(obj:ValidationErrors, message?:string){
            this.item = obj;

    }

    message: string = "";
    stack: string = "";
    name: string = "";

    item: ValidationErrors;
}



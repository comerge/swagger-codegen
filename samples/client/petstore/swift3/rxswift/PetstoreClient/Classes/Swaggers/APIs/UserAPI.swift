//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import RxSwift



open class UserAPI: APIBase {
    /**
     Create user
     
     - parameter body: (body) Created user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUser(body: User, completion: @escaping ((_ error: Error?) -> Void)) {
        createUserWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Create user
     
     - parameter body: (body) Created user object 
     - returns: Observable<Void>
     */
    open class func createUser(body: User) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            createUser(body: body) { error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next())
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     
     - parameter body: (body) Created user object 

     - returns: RequestBuilder<Void> 
     */
    open class func createUserWithRequestBuilder(body: User) -> RequestBuilder<Void> {
        let path = "/user"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUsersWithArrayInput(body: [User], completion: @escaping ((_ error: Error?) -> Void)) {
        createUsersWithArrayInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - returns: Observable<Void>
     */
    open class func createUsersWithArrayInput(body: [User]) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            createUsersWithArrayInput(body: body) { error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next())
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - 
     
     - parameter body: (body) List of user object 

     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithArrayInputWithRequestBuilder(body: [User]) -> RequestBuilder<Void> {
        let path = "/user/createWithArray"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUsersWithListInput(body: [User], completion: @escaping ((_ error: Error?) -> Void)) {
        createUsersWithListInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - returns: Observable<Void>
     */
    open class func createUsersWithListInput(body: [User]) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            createUsersWithListInput(body: body) { error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next())
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - 
     
     - parameter body: (body) List of user object 

     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithListInputWithRequestBuilder(body: [User]) -> RequestBuilder<Void> {
        let path = "/user/createWithList"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUser(username: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteUserWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - returns: Observable<Void>
     */
    open class func deleteUser(username: String) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            deleteUser(username: username) { error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next())
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) The name that needs to be deleted 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(username: String) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserByName(username: String, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        getUserByNameWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - returns: Observable<User>
     */
    open class func getUserByName(username: String) -> Observable<User> {
        return Observable.create { observer -> Disposable in
            getUserByName(username: username) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Get user by user name
     - GET /user/{username}
     - 
     - examples: [{contentType=application/xml, example=<User>
  <id>123456</id>
  <username>string</username>
  <firstName>string</firstName>
  <lastName>string</lastName>
  <email>string</email>
  <password>string</password>
  <phone>string</phone>
  <userStatus>0</userStatus>
</User>}, {contentType=application/json, example={
  "firstName" : "aeiou",
  "lastName" : "aeiou",
  "password" : "aeiou",
  "userStatus" : 123,
  "phone" : "aeiou",
  "id" : 123456789,
  "email" : "aeiou",
  "username" : "aeiou"
}}]
     - examples: [{contentType=application/xml, example=<User>
  <id>123456</id>
  <username>string</username>
  <firstName>string</firstName>
  <lastName>string</lastName>
  <email>string</email>
  <password>string</password>
  <phone>string</phone>
  <userStatus>0</userStatus>
</User>}, {contentType=application/json, example={
  "firstName" : "aeiou",
  "lastName" : "aeiou",
  "password" : "aeiou",
  "userStatus" : 123,
  "phone" : "aeiou",
  "id" : 123456789,
  "email" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  

     - returns: RequestBuilder<User> 
     */
    open class func getUserByNameWithRequestBuilder(username: String) -> RequestBuilder<User> {
        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func loginUser(username: String, password: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        loginUserWithRequestBuilder(username: username, password: password).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - returns: Observable<String>
     */
    open class func loginUser(username: String, password: String) -> Observable<String> {
        return Observable.create { observer -> Disposable in
            loginUser(username: username, password: password) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Logs user into the system
     - GET /user/login
     - 
     - responseHeaders: [X-Rate-Limit(Int32), X-Expires-After(Date)]
     - responseHeaders: [X-Rate-Limit(Int32), X-Expires-After(Date)]
     - examples: [{contentType=application/xml, example=string}, {contentType=application/json, example="aeiou"}]
     - examples: [{contentType=application/xml, example=string}, {contentType=application/json, example="aeiou"}]
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 

     - returns: RequestBuilder<String> 
     */
    open class func loginUserWithRequestBuilder(username: String, password: String) -> RequestBuilder<String> {
        let path = "/user/login"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "username": username,
            "password": password
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Logs out current logged in user session
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func logoutUser(completion: @escaping ((_ error: Error?) -> Void)) {
        logoutUserWithRequestBuilder().execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Logs out current logged in user session
     
     - returns: Observable<Void>
     */
    open class func logoutUser() -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            logoutUser() { error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next())
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Logs out current logged in user session
     - GET /user/logout
     - 

     - returns: RequestBuilder<Void> 
     */
    open class func logoutUserWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/user/logout"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUser(username: String, body: User, completion: @escaping ((_ error: Error?) -> Void)) {
        updateUserWithRequestBuilder(username: username, body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - returns: Observable<Void>
     */
    open class func updateUser(username: String, body: User) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            updateUser(username: username, body: body) { error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next())
                }
                observer.on(.completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 

     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(username: String, body: User) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}

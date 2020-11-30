# okta-system-api

## About the project

The okta-system-api is used to access the Okta services.To access this endpoint user must have a valid client-id and client-secret credentials.
This information must be passed in the header. 

Example: 

         X-API-ClientKey: XXXX-XXXX-XXXX-XXXX-XXXXXXXX

         X-API-ClientSecret: XXXX-XXXX-XXXX-XXXX-XXXXXXXX
         
## The list of endpoints:

**1 Create User**
  
   It is used to create new user in the Okta
     
      Input: The mandatory input fields are Username, First Name, Last Name, Password, and Email.
  
      Resource:  */users*
    
    - Method POST. 
    
    - Example http://okta-system-api.us-e2.cloudhub.io/api/users
    
    Response: Returns a Okta User ID, Status, Created timestamp and relevent URL
    
 **2 Authenticate User**
  
  It is used to validate user credentials before allowing user to access any services. The primary user authentication is used to validate users. 
    
    Input: The inputs are  email and password 
    
    Resource: */users/authenticate*  
    
    - Method POST. 
    
    - Example http://okta-system-api.us-e2.cloudhub.io/api/users/authenticate
    
    Response:
    - On Success: 
      On successful validation it returns status, sessionToken, and expireAt date along with additional information
      
    - On Failure:    
      For invalid credentials it return the unsuccessful status code.
    
**3. Get user information**
 
   It is used to retrive a specific user information.
    
    Input: Use a valid 'userId'.
   
    Resource: */users/{userId}*
    
    - Method GET
    
    - Example: http://okta-system-api.us-e2.cloudhub.io/api/users/00u1deo3bwREiogH15
    
   Response: Returns information such as: Username, First Name, Last Name, Password, and Email
    
    
 **4. Forgot password**
    
    This allows user to reset the password. This will send an email to the user to reset the password.
    
    Input: Enter a valid userId.
   
    Resource: */users/{userId}/forgotPassword*
    
    - Method GET. 
    
    - Example: http://okta-system-api.us-e2.cloudhub.io/api/users/00u1deo3bwREiofU15/forgotPassword
    
    Response: On successful request, Okta sends a reset password url. Password can be reset by navigating to that url.
    
    
  ## External Endpoint
  
  This project uses the Okta services as an external sevice. To use the Okta service for an application, a project must be created in the okta account. 
  On account creation it generates a APIKEY that must be used in the application to access the Okta service.

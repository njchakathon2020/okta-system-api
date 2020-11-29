# okta-system-api

About the API

The okta-system-api is used to access the Okta services.To access this endpoint user need to have valid client-id and client-secret credentials.

The list of endpoint accessible are:

1. Create User
   
   Create a new user in Okta. . 
   
   Input: The mandatory input fileds are Username, First Name, Last Name, Password, and Email.
   
   Response: Returns a Okta User ID, Status, Created timestamp and relevent URL
  
    /users 
    
    - Method POST. 
    - It is used to create new user in the Okta
    
 2. Authenticate User
  
    It is used to authenticate the users. Here primary user authentication is used to validate users. 
    
    Input: 
    
    - On Success:
    
      On successful validation it returns statusm sessionToken, and expireAt date along with additional information
      
    - On Failure:
    
      For invalid credentials it return the unsuccessful status code.
    
    
    /users/authenticate  
    
    - Method POST. 
    - It is used to validate user credentials before allowing user to access any services 
    
 3. Get user information
 
    This endpoint allows a valid user to view their profile information.
    
    Input: It must be a valid userId.
   
    Response: Returns information such as: Username, First Name, Last Name, Password, and Email
    
    /users/{userId} 
    
    - Methos GET. 
    - It is used to retrive a specific user information
    
 4. Forgot password
    
    This allows user to reset the password using the email factor.
    
    Input: It must be a valid userId.
   
    Response: On successful request, Okta sends an email to the user with a recovery token to complete the revovery transaction.
    
    /users/{userId}/forgotPassword 
    - Method GET. 
    - It provides user the option to reset the password. 

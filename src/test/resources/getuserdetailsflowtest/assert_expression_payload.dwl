%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "userId": "00u1deo3bwREiofU15",
  "status": "ACTIVE",
  "firstName": "NJC",
  "lastName": "Labs",
  "login": "njclabs.demo@gmail.com",
  "email": "njclabs.demo@gmail.com",
  "secondEmail": null,
  "mobilePhone": null,
  "created": "2020-11-26T03:34:22.000Z",
  "activated": null,
  "statusChnaged": "2020-11-26T03:36:26.000Z",
  "lastLogin": "2020-11-27T06:41:42.000Z",
  "lastUpdated": "2020-11-26T03:36:26.000Z",
  "passwordChanged": "2020-11-26T03:36:26.000Z"
})
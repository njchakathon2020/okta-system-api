%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "resetPasswordUrl": "https://dev-462737.okta.com/signin/reset-password/XE6wE17zmphl3KqAPFxO"
})
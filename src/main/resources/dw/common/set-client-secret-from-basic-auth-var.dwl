%dw 2.0
// import * from dw::core::Binaries output application/java --- (fromBase64((attributes.headers.Authorization default "") replace "Basic " with "") as String splitBy ":")[1]
output application/java
---
if (!isEmpty(attributes.headers."X-ANYPNT-CLIENT-SECRET")) 
  attributes.headers."X-ANYPNT-CLIENT-SECRET" 
else attributes.headers."X-ANYPNT-PASSWORD"
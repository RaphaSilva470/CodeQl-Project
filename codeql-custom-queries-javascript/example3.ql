 import javascript


 from CallExpr queryCall
 where
     // Find calls to a method named "query"
     queryCall.getCalleeName() = "query" and
     
     // Check if the first argument to "query" is a direct user input
     queryCall.getArgument(0).toString().matches("req.query") or
     queryCall.getArgument(0).toString().matches("req.body") or
     queryCall.getArgument(0).toString().matches("req.params")
 select queryCall, "Potential SQL Injection: User input flows into an SQL query."



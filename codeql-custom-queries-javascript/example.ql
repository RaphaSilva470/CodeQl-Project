import javascript

from Decorator dl
where 
    dl.getAChildExpr().(CallExpr).getCalleeName()
        in["Mutation", "Query"]
    and not dl.getParent().getAChild().(Decorator).getAChildExpr().(CallExpr).getCalleeName() in ["Authorized"]
select dl, "is not authorized"
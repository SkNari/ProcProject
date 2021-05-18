/* description: Parses and executes mathematical expressions. */

/* lexical grammar */
%lex
%%

"CREATE"              return "CREATE"
"REMOVE"              return "REMOVE"
"MOVE"                return "MOVE"
"DUMP"                return "DUMP"
"EDIT"                return "EDIT"
"RENAME"              return "RENAME"
"NODE"                return "NODE"
"EDGE"                return "EDGE"
"FROM"                return "FROM"
"TO"                  return "TO"
"AT"                  return "AT"
"WITH"                return "WITH"
"LABEL"               return "LABEL"
"SIZE"                return "SIZE"
"COLOR"               return "COLOR"
"BGCOLOR"             return "BGCOLOR"
"INITIAL"             return "INITIAL"
"FINAL"               return "FINAL"
"NORTH"               return "NORTH"
"WEST"                return "WEST"
"SOUTH"               return "SOUTH"
"EAST"                return "EAST"
"PATH"                return "PATH"
"FOREACH"             return "FOREACH"
"DO"                  return "DO"
"DONE"                return "DONE"
"IS"                  return "IS"
"COMPLETE"            return "COMPLETE"
"DETERMINISTICC"      return "DETERMINISTICC"
"MINIMIZE"            return "MINIMIZE"
"SHOW"                return "SHOW"  
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex

/* operator associations and precedence */


%% /* language grammar */

expressions
    : e EOF
        { typeof console !== 'undefined' ? console.log($1) : print($1);
          return $1; }
    ;

e
    : CREATE
        {console.log("create");}
    ;
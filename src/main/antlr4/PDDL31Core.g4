lexer grammar PDDL31Core;

@header {
    package org.gerryai.planning.parser.pddl.antlr;

    import java.util.HashSet;
    import java.util.Set;
    import org.gerryai.planning.model.Requirement;
}

NAME: LETTER ANYCHAR*;
fragment LETTER: [a-zA-Z];
fragment ANYCHAR: LETTER | DIGIT | '-' | '_';
fragment NUMBER: DIGIT+ DECIMAL?;
fragment DIGIT:  [0-9];
fragment DECIMAL: '.' DIGIT+;

LINECOMMENT: (';'|'//') ~('\n'|'\r')* '\r'? '\n' -> skip;
WS: [ \n\t\r]+ -> skip;

linguagem escolhida;
fonte da gramática consultada;
regras de produção selecionadas;
código que será derivado;
derivação passo a passo;
identificação dos terminais e não terminais;

linguagem: python

fonte:https://docs.python.org/pt-br/3.9/reference/grammar.html

regra de produção selecionada: 
for_stmt: 'for' star_targets 'in' ~ star_expressions ':' [TYPE_COMMENT] block [else_block]
star_targets: star_target !','
star_target: target_with_star_atom
target_with_star_atom: star_atom
star_atom: NAME
star_expressions: star_expression
star_expression: expression
block: NEWLINE INDENT statements DEDENT
if_stmt: 'if' named_expression ':' block [else_block]
named_expression: expression !':='
comparison: bitwise_or compare_op_bitwise_or_pair+
compare_op_bitwise_or_pair: gt_bitwise_or
gt_bitwise_or: '>' bitwise_or
primary: primary '(' [arguments] ')' | atom
atom: NAME | NUMBER

código que será derivado:
for i in range(1, 5):
    if i > 2:
        print(i)

derivação passo a passo:
1. 'for' star_targets 'in' star_expressions ':' block
2. 'for' star_target 'in' star_expressions ':' block
3. 'for' target_with_star_atom 'in' star_expressions ':' block
4. 'for' star_atom 'in' star_expressions ':' block
5. 'for' NAME 'in' star_expressions ':' block
6. for i in star_expressions : block
7. for i in star_expression : block
8. for i in expression : block
9. for i in disjunction : block
10. for i in primary : block
11. for i in primary '(' arguments ')' : block
12. for i in atom '(' arguments ')' : block
13. for i in NAME '(' arguments ')' : block
14. for i in range ( arguments ) : block
15. for i in range ( args ) : block
16. for i in range ( 1 , 5 ) : block
17. for i in range ( 1 , 5 ) : NEWLINE INDENT statements DEDENT
18. statements, statement, compound_stmt, if_stmt

Terminais (aparecem literalmente no código, não se expandem mais):
for, in, :, if, >, (, ), , , NAME (i, range, print), NUMBER (1, 5, 2), NEWLINE, INDENT, DEDENT

Não-terminais (ainda são expandidos por outras regras):
for_stmt, star_targets, star_target, target_with_star_atom, star_atom, star_expressions, star_expression, expression, disjunction, conjunction, inversion, comparison, compare_op_bitwise_or_pair, gt_bitwise_or, bitwise_or, bitwise_xor, bitwise_and, shift_expr, sum, term, factor, power, await_primary, primary, atom, arguments, args, block, statements, statement, compound_stmt, if_stmt, named_expression
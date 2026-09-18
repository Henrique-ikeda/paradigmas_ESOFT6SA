**1. Genealogia não é uma escada de progresso**

Essa frase quer dizer que as linguagens de programação não evoluem como se cada uma fosse um degrau que supera e descarta a anterior. Na realidade, linguagens antigas continuam vivas e em uso, convivendo com as mais novas, e a influência entre elas acontece de forma bem mais bagunçada, como uma rede de ideias que vão e voltam, e não uma fila organizada.

Dois fatores históricos que explicam isso:
- **Nichos de aplicação já consolidados**: o Fortran continua sendo usado até hoje em computação científica, décadas depois de ter surgido, porque toda uma cultura e um conjunto de bibliotecas se formaram em torno dele. Trocar de linguagem sairia caro demais para esses times, então ele nunca foi "substituído" de verdade.
- **A influência pode ser só de ideias, não de mercado**: o ALGOL 60 nunca vendeu bem nem dominou o mercado comercial, mas a forma como ele organizava blocos de código e estruturas de controle inspirou praticamente todas as linguagens estruturadas que vieram depois, como Pascal e C. Ou seja, a linguagem "perdeu" comercialmente, mas "ganhou" nas ideias que passou adiante.

**3. Short Code, Speedcoding e os sistemas A-0/A-1/A-2**

Os três tentavam resolver o mesmo problema de fundo: programar direto em linguagem de máquina era lento, cheio de erros e nada portável, num tempo em que os computadores tinham pouquíssima memória e processamento.

- **Short Code (1949)**: era um pseudocódigo que funcionava por interpretação. As expressões matemáticas eram escritas de um jeito mais simples e depois interpretadas, uma a uma, enquanto o programa rodava. A ideia era facilitar a vida do programador, mesmo sabendo que isso custaria caro em desempenho (chegava a ser 10 ou até 50 vezes mais lento).
- **Speedcoding**: também era um interpretador, feito para o computador IBM 701. Ele oferecia operações de ponto flutuante e outras funções que o hardware simplesmente não tinha de fábrica. A lógica era parecida com a do Short Code: interpretar em vez de traduzir, focando em facilitar contas numéricas.
- **Sistemas A-0, A-1 e A-2 (criados por Grace Hopper)**: esses já se aproximavam mais do que a gente chamaria de compilador. Eles pegavam chamadas de sub-rotinas, identificadas por números, e montavam um programa juntando pedaços de código já prontos de uma biblioteca, em vez de interpretar tudo linha por linha.

Chamar esses três sistemas de simplesmente "compiladores modernos" seria um erro porque o Short Code e o Speedcoding eram interpretadores, não geravam código de máquina novo. Já os sistemas A-0/A-1/A-2 traduziam algo, mas de um jeito bem simples, basicamente juntando sub-rotinas prontas. Nenhum deles tinha as etapas que um compilador de verdade tem hoje, como análise léxica, análise sintática, análise semântica e otimização de código.

**5. Lisp e Fortran**

Os dois surgiram para resolver problemas completamente diferentes. O Fortran nasceu voltado para computação científica e cálculos matemáticos, enquanto o Lisp surgiu no contexto da inteligência artificial, para lidar com processamento simbólico.

Na questão dos dados, o Fortran trabalha basicamente com números organizados em vetores e variáveis, enquanto o Lisp representa tudo através de listas ligadas, as famosas S-expressions, tratando dados e código praticamente da mesma forma.

Já no estilo de computação, o Fortran segue uma linha imperativa, baseada em atribuições e laços de repetição, pensada para ser eficiente com números. O Lisp, por outro lado, favorece um estilo funcional, apoiado em recursão e aplicação de funções, voltado para manipular símbolos, e não apenas números.

**4. Por que o Fortran precisou convencer os programadores**

Nos anos 1950, quem programava em assembly desconfiava que um tradutor automático conseguisse gerar um código tão bom quanto o que era escrito à mão. E isso importava muito, porque os computadores da época eram caros e lentos, então desempenho não era um detalhe, era essencial.

Por isso a equipe do Backus investiu pesado em fazer o compilador otimizar bem o código gerado, cuidando de coisas como o uso eficiente dos registradores e a eliminação de partes desnecessárias, para que o resultado chegasse perto do desempenho de um código feito manualmente.

Ao mesmo tempo, escrever e corrigir erros em assembly consumia muito tempo de programador, o que tinha um custo alto. O Fortran prometia reduzir bastante esse custo, deixando o trabalho mais rápido e simples.

No fim das contas, só quando ficou provado que a perda de desempenho era pequena perto do ganho de produtividade que os programadores aceitaram deixar de lado o código de máquina escrito na mão. Só o argumento de "vai ser mais fácil programar" não seria suficiente para convencer ninguém sem essa prova de que o desempenho não ia cair muito.

**6. Contribuições do ALGOL 60 além do mercado**

- **Estrutura de blocos**: o ALGOL 60 trouxe a ideia de blocos de código aninhados com escopo bem definido, algo que virou base para o controle de escopo em quase todas as linguagens estruturadas que vieram depois.
- **Notação formal**: a sintaxe da linguagem foi descrita usando a Forma de Backus-Naur (BNF), criando um padrão para descrever formalmente a gramática de linguagens de programação, usado até os dias de hoje.
- **Estruturas de controle**: o ALGOL 60 popularizou comandos como `if-then-else` e laços bem estruturados, o que serviu de base para toda a ideia de programação estruturada, influenciando linguagens como Pascal e C.

Uma linguagem pode ser extremamente influente sem dominar o mercado porque sua contribuição não está em quantas empresas a usaram, e sim nas ideias e ferramentas conceituais que ela trouxe, como sintaxe, semântica e formas de organizar o código. Essas ideias acabam sendo aproveitadas por quem projeta as próximas linguagens, mesmo que o "sucesso comercial" dependa de outros fatores, como apoio de fabricantes, disponibilidade de bibliotecas e custo. A influência técnica se espalha de um jeito independente de quem "vence" no mercado.

11-ALGOL é o avô: trouxe blocos estruturados e controle de fluxo sem goto. Pascal puxou essa herança pro lado do rigor e do ensino. C puxou pro lado da velocidade e do controle de memória, sendo mais "sem freio" com tipos.

Prolog já é outra lógica: nas imperativas você dá o passo a passo pra chegar no resultado; em Prolog você só declara fatos e regras, e o interpretador é quem se vira pra provar a resposta.

12 - Fatos: "maria é mãe de joão", "joão é pai de pedro". Regra: "X é avó de Z se X é mãe de Y e Y é pai de Z". Consulta: "maria é avó de pedro?" resposta sim. É lógica e não só dado guardado porque ninguém escreveu "maria é avó de pedro"; o interpretador deduziu isso cruzando fatos com a regra, e banco de dados só devolve o que tá lá, enquanto Prolog infere coisa nova.

14-Em Smalltalk tudo é objeto, sem exceção, e a única forma de fazer algo é mandando mensagem entre objetos.

C++ nasceu de C e carrega esse compromisso: mantém compatibilidade com código C, então mistura objeto com tipos primitivos e estilo procedural, não é tudo objeto.

Java pegou a ideia de objetos do C++ mas cortou o vínculo direto com C, visando segurança. E a portabilidade veio de compilar pra bytecode e rodar na JVM, assim o mesmo programa roda em qualquer máquina sem recompilar.

15-Java nasceu pra dispositivos embarcados (projeto Green da Sun) e não deu certo nesse nicho. Mas o que fazia dele bom ali, código portável e seguro rodando em bytecode na JVM, casou perfeito com a Web, que precisava rodar código de forma segura em máquinas desconhecidas. A linguagem não mudou, o mundo é que criou um problema novo pra ela resolver.

16-Perl: nasceu pra processamento de texto e administração de sistemas Unix, tipo scripts de relatório e manipulação de arquivos. Tem arrays, hashes e regex embutida na própria sintaxe. É interpretada, com implementação própria bem monolítica.

JavaScript: nasceu dentro do navegador, pra manipular páginas web. Trabalha com objetos e arrays dinâmicos, tudo baseado em protótipos. É interpretada e roda embutida no motor do browser (hoje também fora, com engines tipo V8).

PHP: nasceu pra gerar HTML dinâmico no lado do servidor. Estrutura de dados central é o array associativo, que serve tanto de lista quanto de mapa. É interpretada, geralmente embutida direto no código HTML e processada pelo servidor web.

Python: nasceu com foco em legibilidade e uso geral, não um domínio específico. Tem listas, tuplas, dicionários e sets como estruturas nativas bem definidas. É interpretada, com bytecode rodando numa máquina virtual própria.

Ruby: nasceu também de propósito geral, mas com forte inspiração em produtividade do programador. É orientada a objeto até o osso, arrays e hashes são objetos com métodos ricos. Interpretada, também com bytecode em versões mais recentes.

Lua: nasceu pra ser embutida dentro de outras aplicações, tipo jogos. Tem uma única estrutura de dados central, a tabela, que faz o papel de array, mapa e até objeto. É extremamente leve e compilada pra bytecode rodando numa VM minúscula, pensada pra baixo consumo de memória.
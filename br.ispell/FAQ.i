@ FAQ do br.ispell
@ última atualização 2nov2002
@ envie sugestões e críticas para ueda@ime.usp.br

SEÇÃO 1 - Entendendo o br.ispell

1.1 O que é coberto por esta seção do FAQ?

A seção "entendendo o br.ispell" explica o que é um verificador
e, sem entrar em detalhes técnicos, para que serve o br.ispell e
como ele vem sendo desenvolvido.

1.2 O que é um verificador ortográfico?

O melhor modo de saber o que é um verificador ortográfico é usar
algum deles ao redigir um documento. Se você não souber fazer
isso, peça ajuda para algum colega que saiba, e você entenderá
rapidamente o funcionamento. Ao aplicar o verificador no
documento, ele examinará cada palavra e indicará aquelas cuja
ortografia está incorreta, sugerindo alternativas.

1.3 Como funciona um verificador ortográfico?

Os verificadores ortográficos são programas relativamente
simples. Eles possuem uma lista de palavras consideradas corretas
e, para cada palavra de um texto, testam se ela ocorre ou não na
lista. Se ocorrer, a ortografia é admitida correta. Caso
contrário ela será considerada incorreta.

1.4 O que é o dicionário?

É a lista das palavras consideradas corretas pelo verificador.

1.5 Portanto é necessário levantar todas as palavras da língua?

Sim, mas como os verificadores são programas simples, é
necessário também que o dicionário seja flexionado.

Dicionários da língua como o Aurélio ou o Houaiss, e vocabulários
como o VOLP da Academia Brasileira de Letras, trazem apenas o
lema de cada palavra, isto é, a forma através da qual ela é
consultada. Por exemplo: "menino". Mas o dicionário de um
verificador necessita explicitar cada uma das flexões: menino,
menina, meninos, meninas, menininho, etc. O dicionário de um
verificador deve incluir também todas as formas verbais ("amo",
"amas", "ama", etc), e outras palavras que via de regra não
constam dos dicionários da língua, como os nomes próprios
("João", "México", etc).

1.6 O que é o br.ispell?

O br.ispell é um dicionário de livre uso construído
cooperativamente que pode ser utilizado por vários verificadores
diferentes. Sua construção foi iniciada em 1995, o seu uso vem
difundindo-se ao longo dos anos, e os trabalhos de depuração e
aperfeiçoamento prosseguem.

1.7 Como obter o br.ispell?

O br.ispell está disponível no endereço

    http://www.ime.usp.br/~ueda/br.ispell

1.8 Quais verificadores ortográficos o br.ispell suporta?

O br.ispell pode ser utilizado com o ispell, o aspell e o
myspell. Aplicações como o Mozilla, o OpenOffice, o Emacs ou
outras suportam um ou mais desses verificadores. Assim, o
br.ispell pode ser utilizado normalmente nesses e em muitas
outras aplicações.

1.9 O br.ispell funciona no Windows?

O br.ispell foi desenvolvido em sistemas do tipo Unix, mas ele
pode ser utilizado normalmente no Windows, pelas aplicações que
suportarem ispell, aspell ou myspell (por exemplo o OpenOffice).

1.10 Como usar o br.ispell?

Para a maior parte das pessoas, o uso do br.ispell é
transparente. Ele acompanha vários sistemas operacionais livres,
pronto para uso. Entretanto, no caso de alguns programas ou
sistemas poderá haver necessidade de gerar ou obter alguns
arquivos, instalá-los convenientemente, ou configurar programas
ou ambientes. A documentação do br.ispell não cobre todos esses
detalhes, mas inclui algumas dicas (veja a seção de dicas deste
FAQ se houver necessidade).

1.11 O br.ispell inclui todas as palavras do português?

Não. É impossível levantar todas as palavras de uma língua,
porque a língua está continuamente em transformação. Além do
mais, nem é conveniente incluir todas as palavras, porque as
palavras de uso raro geram falsos positivos. Por exemplo: "carme"
significa "verso" ou "poesia". Os latinistas ficarão contentes se
"carme" for adicionada ao dicionário. Mas para todas as outras
pessoas que nunca usam essa palavra ela só atrapalhará, porque se
por deslize escreverem "carme" ao invés de "carne", o verificador
não detetará o erro ortográfico.

1.12 Que tal copiar as palavras de um dicionário eletrônico?

Independentemente dessa operação ser ou não tecnicamente
possível, copiar todas as palavras da edição eletrônica de um
dicionário da língua como o Aurélio é provavelmente ilegal. Além
do mais é pouco útil porque conforme já explicado, o verificador
necessita que as palavras estejam flexionadas (flexionar as
palavras é geralmente mais trabalhoso do que levantá-las). Pior
ainda, pode prejudicar a verificação, em virtude dos falsos
positivos.

1.13 Então, como fazer?

A construção do dicionário não deve limitar-se a ir acumulando
palavras numa lista gigantesca. O levantamento do léxico deve ser
feito de forma gradual e estruturada, a fim de tornar possível o
trabalho de depuração.

Por exemplo: a depuração manual de uma lista de dezenas de
milhares de palavras, uma a uma, é um trabalho insano. Mas a
revisão de uma lista de infinitivos verbais e de um paradigma de
conjugação que se aplica a dezenas ou centenas de verbos é um
trabalho bem mais simples.

1.14 Qual é a estratégia de desenvolvimento adotada pelo br.ispell?

O dicionário br.ispell estrutura o seu conteúdo em vários
níveis. O mais fundamental é a separação de verbos e não
verbos. Os verbos são conjugados de forma automática, a fim de
gerar todas as formas para o verificador. As outras palavras são
flexionadas de forma semi-automática, através de uma
classificação semântica e gramatical, e da anotação das
entradas. O conteúdo básico do br.ispell é formado apenas por
palavras de uso comum no Brasil, a fim de evitar o problema dos
falsos positivos. As palavras de uso raro estão sendo adicionadas
de forma modular, a fim de que possam ser removidas em bloco se
houver necessidade. Mais palavras vão sendo adicionadas
paulatinamente, à medida em que vão sendo contribuídas. Outros
recursos de granularidade mais fina estão disponíveis também.

1.15 Isso não é complicado demais?

Ao lidar com a língua, a complexidade é inevitável. A construção
do br.ispell vem sendo trabalhosa para todas as pessoas que se
dispuseram a investir esforços nele. Em contrapartida, o
resultado tem qualidade e está livremente disponível.

1.16 Como posso ajudar nesse trabalho?

Ao longo dos anos, a colaboração com esses trabalhos vem
acontecendo por iniciativa das pessoas que obtém o pacote na
Internet, usam-no, entendem os aspectos fundamentais do
funcionamento, e detetam e corrigem problemas, tanto ao nível do
código dos programas que acompanham o pacote, quanto ao nível do
conteúdo lexical.

O projeto vem tentando materializar formas de colaboração que
dependam menos do conhecimento específico do pacote. Isso está
acontecendo na forma de um sistema online que ainda é preliminar
mas já está disponível no endereço provisório

    http://www.claraocr.orb/br.ispell

A finalidade básica desse sistema é permitir que palavras não
reconhecidas pelo verificador sejam adicionadas. Ele permite
também que a palavra seja anotada (exemplo: indicar a sua classe
gramatical). A anotação não é obrigatória mas é útil.

Um outro modo, concreto e simples de colaborar é contribuir
textos revisados, que possam ser utilizados tanto para
levantamento de vocabulário quanto para testes do verificador.

1.17 Quem colabora com o br.ispell abre mão dos direitos de autor?

Não. Materiais livres como o br.ispell preservam os direitos de
autor (copyright). O br.ispell é copyright de seus autores, ou
seja, das pessoas que o construíram, mas pode ser livremente
usado, alterado ou redistribuído segundo os termos da licença
GPL.

1.18 O que significa o br.ispell ser GPL?

O br.ispell é um pacote que inclui programas (conjugador de
verbos, lematizador, etc) e conteúdo lexical (não apenas uma
lista de palavras, mas também um padrão e informações de flexão,
uma classificação semântica, tabelas para compressão de afixos,
etc). O conjunto de programas e conteúdo lexical é entendido como
o fonte, e os arquivos br.hash e pt_BR.* e quaisquer executáveis
são entendidos como o objeto. O pacote é aberto e disponibilizado
sob a licença GNU GPL, que é a mesma que acompanha a maior parte
dos programas livres ou abertos hoje existentes. Essa licença
permite o livre uso, cópia, alteração e redistribuição, desde que
acompanhada dos fontes e sob a mesma licença, isto é, a GPL, a
fim de garantir que o uso permaneça livre.

Para maiores informações sobre a GPL veja

    http://www.gnu.org/copyleft/gpl-faq.html

1.19 O conteúdo lexical pode ser utilizado por programas não GPL?

Os arquivos br.hash, pt_BR.dic, pt_BR.aff e pt_BR gerados pelo
pacote são de uso irrestrito para fins de verificação
ortográfica. O uso desses arquivos por um verificador não é
entendido pelos autores do br.ispell à semelhança de uma
linkagem, mas à semelhança da comunicação entre programas
independentes, que podem portanto ser regidos por licenças
diversas. O mesmo princípio deverá ser aplicado a outros formatos
que ainda venham a ser suportados.

Note que esses arquivos não incluem todo o conteúdo lexical do
br.ispell, mas trazem apenas a lista dos lemas, as suas flexões e
as tabelas de compressão de afixos. O uso e redistribuição desses
arquivos pressupõe que eles estejam acompanhados dos fontes, isto
é, do pacote br.ispell, ou ao menos da indicação deste de forma a
possibilitar que o pacote possa ser obtido através da Internet.


SEÇÃO 2 - Dicas de instalação e uso

2.1 O que é coberto por esta seção do FAQ?

A seção "dicas de instalação e uso" tenta dar algumas coordenadas
para quem não estiver conseguindo instalar ou usar o
br.ispell. Como as situações práticas variam muito, as dicas são
um pouco genéricas. Será geralmente inútil tentar contatar as
pessoas que mantém o br.ispell solicitando suporte mais
específico, porque elas não têm conhecimento detalhado das
variadas aplicações e dos diversos ambientes.

2.2 Eu preciso instalar o br.ispell?

Provavelmente não. O processo de instalação de muitos sistemas
operacionais livres inclui de forma automática um dicionário de
verificação do português do Brasil, pronto para uso, quando se
seleciona o português do Brasil como língua de instalação ou como
língua suportada.

2.3 Como instalar o br.ispell?

Os sistemas operacionais livres geralmente trazem o br.ispell
pré-empacotado, seja na forma de um dicionário para o ispell,
seja na forma de um dicionário para o aspell. Levante no seu
sistema operacional quais são as ferramentas de verificação
disponíveis (ispell, aspell, myspell, ou outras) e quais
dicionários existem para cada uma delas. O modo de realizar essa
procura varia de acordo com o sistema operacional. Se existir um
dicionário do português do Brasil na forma de um pacote, então
bastará instalá-lo, se isso já não tiver sido feito. O modo de
instalar um pacote depende do sistema operacional, mas geralmente
é uma tarefa simples.

Além disso, será necessário provavelmente avisar as aplicações
que elas devem utilizar o dicionário do português do Brasil (e
não o de inglês ou de outra língua). Isso normalmente é feito ou
na configuração do desktop, ou na configuração da aplicação, ou
através de variáveis de ambiente.

2.4 Então eu não preciso baixar o arquivo br.ispell-X.Y.tar.gz?

Na maior parte dos casos não será necessário nem baixar esse
arquivo, e nem tentar produzir a partir dele os arquivos que o
verificador (ispell, aspell, etc.) necessita.

2.5 O meu caso é diferente

Então é provável que você não tenha também um verificador
ortográfico instalado ou pré-empacotado. Procure levantar em
quais aplicações (email, editores, etc) você deseja utilizar a
verificação ortográfica, e quais verificadores (ispell, aspell,
etc) elas suportam. Instale os verificadores, e em seguida
produza usando o br.ispell os arquivos de que eles necessitam
(por exemplo o br.hash, o pt_BR.aff, ou outros).

Para tanto, obtenha o arquivo br.ispell-X.Y.tar.gz onde X.Y é o
número da versão mais recente, extraia o conteúdo dele usando
gunzip e tar, leia no Makefile a descrição dos targets
principais, e no prompt do shell tente produzir aqueles que forem
necessários. Por exemplo:

    $ make br.hash

Note que o uso do "make" pressupõe um ambiente do tipo Unix. Os
arquivos produzidos terão que ser copiados para diretórios onde
os verificadores esperam encontrá-los (isso tem que ser checado
na documentação do verificador), e as aplicações geralmente terão
que ser informadas de que a língua é o português do Brasil, ou
através das opções dos menus, ou através de variáveis de
ambiente.

2.6 O make falhou com uma mensagem de erro

Tente obter suporte local relativo ao erro, isto é, mostre a
mensagem de erro para algum técnico. Em último caso, envie a
mensagem de erro para ueda@ime.usp.br.

2.7 Como usar o br.ispell no OpenOffice?

É bem simples. Siga as instruçõe do mini-howto disponível no
endereço

    http://oobr.querencialivre.rs.gov.br/docajuda_dict.php

2.8 Posso gerar os arquivos no Linux e copiá-los para o Windows?

Em alguns casos sim. Por exemplo: os arquivos pt_BR.dic e
pt_BR.aff do myspell podem ser gerados no Linux e copiados para o
Windows. Já o arquivo br.hash nem sempre pode ser copiado da
máquina onde foi criado para uma outra, sejam lá quais forem os
sistemas operacionais em uso, devido ao formato do arquivo, que
depende da forma com que o compilador aloca estruturas na
memória.


SEÇÃO 3 - Introdução para desenvolvedores

3.1 O que é coberto por esta seção do FAQ?

A seção "introdução para desenvolvedores" explica os arquivos
principais do br.ispell de forma simples mas dirigida a
desenvolvedores. Quem deseja apenas usar o br.ispell na
verificação de textos não necessita ler esta seção.

3.2 O que é o arquivo br.aff?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

O ispell (e também o myspell) obtém as formas de uma palavra
aplicando a ela regras de afixos. Por exemplo: substituir a letra
final "o" por "a" para obter a flexão no feminino. Essa regra é
codificada assim:

    flag B:
    O  > -O,A

O arquivo br.aff contém todas as regras de afixos utilizadas no
br.ispell. Algumas foram compostas de forma manual, e outras de
forma automática pelos programas que acompanham o pacote. De
fato, o arquivo br.aff não está presente no pacote br.ispell, mas
é produzido por ele através das regras do makefile.

3.3 O que é o arquivo br.ispell?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

As palavras que se flexionam no gênero segundo a regra
exemplificada na pergunta anterior necessitam indicá-lo de forma
explícita. Por exemplo:

    menino/B

No jargão do ispell, "menino" é chamado de raiz. A aplicação da
regra de substituição da vogal final produz "menina". O arquivo
br.ispell é a lista de todas as raízes, cada uma indicando as
regras que a ela se aplicam. O arquivo br.ispell não está
presente no pacote br.ispell, mas é produzido por ele através das
regras do makefile.

3.4 O que é o arquivo br.hash?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

O ispell constrói com as raízes e as regras de afixos uma
estrutura de acesso rápido (hash), que permite verificar se uma
dada forma (ex. "menina", "falara", etc) é ou não correta. Essa
estrutura é o arquivo br.hash. Ele é diretamente utilizado pelo
ispell no processo de verificação ortográfica. Geralmente ele
reside num diretório definido na compilação do ispell, por
exemplo /usr/dict.

O arquivo br.hash não está presente no pacote br.ispell, mas é
produzido por ele através das regras do makefile.

3.5 O que é o arquivo pt_BR.aff?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

É o arquivo br.aff traduzido para a sintaxe do myspell (veja a
pergunta "o que é o arquivo br.aff?").

O arquivo pt_BR.aff não está presente no pacote br.ispell, mas é
produzido por ele através das regras do makefile.

3.6 O que é o arquivo pt_BR.dic?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

É o arquivo br.ispell precedido por uma linha informando quantas
raízes existem (veja a pergunta "o que é o arquivo br.aff?").

O arquivo pt_BR.dic não está presente no pacote br.ispell, mas é
produzido por ele através das regras do makefile.

3.7 O myspell também constrói um hash?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

Não. O myspell realiza a verificação usando diretamente os
arquivos pt_BR.aff e pt_BR.dic.

3.8 O que é o makefile?

Obs. essa pergunta é importante apenas para quem deseja entender
o funcionamento do ispell e do myspell.

É um arquivo formado por seqüências de regras que produzem um
determinado resultado ("target"). O makefile do br.ispell produz
uma série de arquivos necessários aos verificadores ortográficos
a partir do conteúdo lexical do br.ispell, de ferramentas do
ispell e de ferramentas do próprio br.ispell. Por exemplo, o
arquivo br.aff é produzido através das regras do makefile. Para
comandar a produção do arquivo br.aff, basta executar o seguinte
comando no diretório onde se encontram os arquivos do br.ispell:

    make br.hash

Obs. isso pressupõe que várias ferramentas típicas do ambiente
Unix estejam presentes no seu sistema, seja ele Unix-like ou não.

3.9 O que é o arquivo pt_BR?

É a lista de palavras total no formato que o aspell necessita.


SEÇÃO 4 - O conteúdo lexical do br.ispell

4.1 O que é coberto por esta seção do FAQ?

A seção "o conteúdo lexical do br.ispell" introduz o conteúdo, os
recursos e a organização do br.ispell de forma independente da
operação de verificação ortográfica. Essa abordagem é dirigida a
linguistas e afins.

4.2 Como o conteúdo lexical do br.ispell está organizado?

O conteúdo está quase totalmente lematizado. Cada lema não verbal
inclui as flexões de forma explícita. Por exemplo:

    menin:a,as,o,os

Os lemas não verbais estão classificados semanticamente numa
forma semelhante à de obras didáticas para estudo de
línguas. Exemplo:

    #
    # hortaliça [s.]
    #
    abobrinha:,s
    abóbora:,s
    alface:,s

As formas de flexão dos lemas não verbais estão classificadas em
paradigmas. Isso pode ser encontrado na seção "paradigmas
nominais" do arquivo br.base.

Os verbos são tratados à parte. O arquivo "verbos" inclui a
conjugação dos paradigmas e uma lista extensa de verbos. O
conjugador gera todas as formas sintéticas de todos os verbos
relacionados, aplicando os paradigmas indicados para cada verbo,
ou deduzindo um paradigma quando não há indicação de qual
utilizar.

4.3 As palavras estão classificadas gramaticalmente?

A classificação em classes gramaticais (substantivo, adjetivo,
etc.) existe mas é parcial. Além disso, ela foi em parte obtida
de forma automática e sujeita a erros, a partir da terminação dos
lemas (veja a opção -F da ferramenta fl).

4.3 Qual é o formato do conteúdo lexical?

O pacote inclui dois formatos principais para manter o conteúdo
lexical. Um é chamado "editável", e tenta ser apropriado para a
manutenção manual do conteúdo. Todos os arquivos nesse formato
têm nomes da forma E-*.

O outro formato congrega todo conteúdo lexical existente no
pacote, e é dele que se derivam os arquivos de que os
verificadores necessitam. Esse formato é chamado "dicionário
base", e imita mais ou menos o formato de um dicionário comum da
língua. Ele está descrito na documentação da ferramenta fl.

Todo o conteúdo está codificado em formato texto ordinário
(ISO-8859-1).

4.4 Esses formatos utilizam XML?

Atualmente não.

4.5 Quais ferramentas lexicais estão presentes no br.ispell?

Há um conjugador de verbos, o conversor afftoOOo do arquivo de
afixos, e uma ferramenta chamada fl (ferramenta lexical). Essa
ferramenta é basicamente um manipulador de regras de afixos, mas
ele congrega uma quantidade grande de operações diferentes, entre
elas: lematização, expansão de formas, separação silábica e
comparação fonética.

4.6 O br.ispell inclui um analisador morfológico?

Atualmente não, entretanto o pacote inclui um lematizador capaz
de obter o infinitivo dos verbos conhecidos, e o lema das formas
não verbais conhecidas. Há também um classificador de formas não
conhecidas (veja a opção -F da ferramenta fl).

4.7 O br.ispell suporta o uso de corpora?

Não há atualmente nenhum suporte específico para uso de corpora.

4.8 Quantos lemas há no br.ispell? quantos paradigmas?

Esses dados podem ser obtidos de forma aproximada utilizando o
target "stats" do Makefile. Na versão 3.0-beta4 temos:

    $ make -s stats
    aproximadamente 43730 lemas ou raízes
    80 paradigmas verbais
    4006 verbos

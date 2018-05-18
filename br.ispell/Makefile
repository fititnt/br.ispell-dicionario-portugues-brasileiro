#
# Makefile para o br.ispell
#

#
#   targets principais:
#   -------------------
#
#   make br.base     produz o dicionário base
#
#   targets específicos para o ispell:
#   ----------------------------------
#
#   make br.ispell   produz o arquivo de raízes para o ispell
#   make br.aff      produz o arquivo de afixos para o ispell
#   make br.hash     produz o arquivo de afixos para o ispell
#
#   targets para os outros verificadores:
#   -------------------------------------
#
#   make aspell      gera o arquivo pt_BR para o aspell
#   make myspell     gera arquivos pt_BR.dic e pt_BR.aff
#
#   Obs. não há target para instalar esses arquivos. Eles
#   terão que ser manualmente copiados para os diretórios onde o
#   aspell e o myspell esperam encontrá-los.
#
#   outros:
#   -------
#
#   make formas      gera a lista de todas as palavras (formas)
#   make silabas     cria o silabário
#   make paradigmas  mostra os paradigmas em ordem de uso
#   make testes      roda todos os testes
#   make install     instala o hash do ispell e o conjugue
#   make FAQ         constrói o índice do FAQ
#

#
# SEÇÃO DE CONFIGURAÇÃO
# ---------------------
#

#
# Escolha os paths que serão utilizados para instalar os arquivos
# e configurar as ferramentas.
#
#   HASHDIR - aqui será colocado o br.hash
#   BINDIR  - aqui será colocado o conjugue
#   VDIR    - aqui será colocado o banco de verbos
#   MANDIR  - aqui será colocada a man page do conjugue
#
prefix=/usr/local
BINDIR=$(prefix)/bin
HASHDIR=/usr/lib/ispell
VDIR=$(prefix)/lib
MANDIR=$(prefix)/man

#
# Escolha o interpretador awk a ser utilizado.
#
# OBS. Muito provavelmente o conjugador de verbos não operará
# corretamente se o interpretador não for o gawk. A partir da
# versão 3.0 do br.ispell, o conjugador assume que a função
# toupper do interpretador é compatível com ISO-8859-1.
#
AWK=/usr/bin/gawk

#
# Daqui para baixo procure não mexer mais em nada
#

all: br.aff br.base br.ispell br.hash aspell myspell

#
# Constrói o dicionário base
#
br.base: E-2.5 E-Raul E-Rodrigo E-Osmar E-outras conjugue verbos fl br.aff
	echo origens >br.base.tmp
	echo 1 br.ispell 2.5 >>br.base.tmp
	echo >>br.base.tmp
	echo paradigmas verbais >>br.base.tmp
	$(AWK) -f ./conjugue -v BANCO=verbos -v FORMATO=b >>br.base.tmp
	echo >>br.base.tmp
	./fl -E E-2.5 >>br.base.tmp
	mv -f br.base.tmp br.base
	./fl -E E-Raul >br.base.tmp
	mv -f br.base.tmp br.base
	./fl -E E-Osmar >br.base.tmp
	mv -f br.base.tmp br.base
	./fl -E E-Rodrigo >br.base.tmp
	mv -f br.base.tmp br.base
	./fl -E E-outras >br.base.tmp
	mv -f br.base.tmp br.base
	$(AWK) -f ./conjugue -v BANCO=verbos -v FORMATO=b -v CMD=T >>br.base

#
# Flexiona a lista do Rodrigo
#
E-Rodrigo: L-Rodrigo
	./fl -F <L-Rodrigo >E-Rodrigo

#
# Constrói o arquivo de afixos
#
br.aff: br.aff.nv conjugue verbos
	$(AWK) -f ./conjugue -v BANCO=verbos -v FORMATO=aa -v CMD=T >v.rules
	cat br.aff.nv v.rules >br.aff
	rm -f v.rules

#
# Gera as conjugações de todos os verbos, com o resultado
# fatorado pelas flags do br.aff.
#
v.ispell: conjugue verbos
	$(AWK) -f ./conjugue -v BANCO=verbos -v FORMATO=ci -v CMD=T >v.ispell

#
# Constrói o vocabulário total fatorado com as flags do br.aff.
#
# Acrescenta as formas que o ispell não consegue obter através
# da tabela de afixos.
#
# Há um bug no fl que produz nenhum/A ao invés de nenhum/H. Não
# sabemos ainda resolver ao nível do fl.
#
br.ispell: v.ispell br.base fl br.aff
	./fl -l >br.ispell.tmp
	cat v.ispell >>br.ispell.tmp
	sort br.ispell.tmp | uniq >br.ispell
	./fl -I >>br.ispell.tmp
	echo "os" >>br.ispell.tmp
	echo "as" >>br.ispell.tmp
	sort br.ispell.tmp | sed 's/^nenhum\/A/nenhum\/H/' | uniq >br.ispell
	rm -f br.ispell.tmp

#
# Gera o vocabulario total, flexionado com as flags do br.aff.
#
br.hash: br.aff br.ispell
	buildhash br.ispell br.aff br.hash

#
# Instala o br.hash
#
install-hash: br.ispell
	install -d $(HASHDIR)
	install --mode=644 br.hash br.aff $(HASHDIR)

#
# Instala o conjugue, substituindo antes os paths default pelos
# que tiverem sido especificados acima.
#
install-conjugue:
	sed -e 's|/usr/bin/awk|$(AWK)|g' -e \
	's|/usr/local/lib/verbos|$(VDIR)/verbos|g' conjugue >conjugue.tmp
	chmod 755 conjugue.tmp
	mv -f conjugue.tmp conjugue
	sed -e 's|/usr/local/lib|$(VDIR)|g' conjugue.1 >conjugue.1.tmp
	chmod 644 conjugue.1.tmp
	mv -f conjugue.1.tmp conjugue.1
	touch conjugue-stamp
	install -d $(BINDIR)
	install --mode=755 conjugue $(BINDIR)/conjugue
	install -d $(VDIR)
	install --mode=644 verbos $(VDIR)/verbos
	install -d $(MANDIR)/man1
	install --mode=644 conjugue.1 $(MANDIR)/man1/conjugue.1

#
# instala o conjugue e o hash do ispell
#
install: install-hash install-conjugue

#
# Gera o vocabulário flexionado a partir do br.hash.
#
formas: br.hash
	cat br.ispell | ispell -e -d ./br.hash | tr " " "\n" |sort|\
            uniq >formas

#
# Constrói o silabário. Isso exige uma máquina com bastante
# memória. Numa máquina mais simples pode ser possível a construção
# utilizando-se arquivos intermediários ao invés de pipes.
#
silabas: fl formas
	./fl -s - <formas | tr '\-' "\n"| sort | uniq >silabas

#
# Constrói o índice do FAQ.
#
FAQ-stamp:
	rm -f FAQ
FAQ: FAQ-stamp
	grep '^@ ' FAQ.i | sed 's/^@ //' > FAQ
	echo >>FAQ
	echo ÍNDICE >>FAQ
	egrep "^(SEÇÃO|[1-9]+\.[1-9]+)" FAQ.i | \
	$(AWK) '{ if (/^S/) { print ""; print } else print "  " $$0 }' >>FAQ
	grep -v '^@ ' FAQ.i >>FAQ

#
# SUPORTE A OUTROS VERIFICADORES
# ------------------------------
#
aspell: formas
	aspell --lang=pt_BR create master ./pt_BR <formas 

myspell: br.base br.aff br.ispell
	./afftoOOo >pt_BR.aff
	cat br.ispell|wc -l|tr -d ' ' >pt_BR.dic
	cat br.ispell >>pt_BR.dic

#
# GERAÇÃO DE ANÁLISES E/OU ESTATÍSTICAS
# -------------------------------------
#

#
# Obtenção (aproximada) de estatísticas.
#
stats: br.ispell
	( n=`cat br.ispell | wc -l` ; \
	echo aproximadamente $$n lemas ou raízes )
	./conjugue -v BANCO=verbos </dev/null | \
	grep lidos | \
	sed 's/lidos //' | \
	sed 's/paradigmas/paradigmas verbais/'

#
# Lista todos os paradigmas em uso e o número de vezes que cada
# um é utilizado.
#
# (não estou muito certo se esse target ainda funciona)
#
paradigmas: conjugue
	$(AWK) -f conjugue -v BANCO=verbos -v FORMATO=n -v CMD=T|\
            grep paradigma|sed 's/ deduzido//'|sort|uniq -c|sort -n

#
# TESTES
# ------
#

#
# Erros do separador de sílabas.
#
teste_sep:
	./fl -v -s - <testesep | grep errou

#
# Encontros vocálicos não previstos no separador de sílabas.
#
teste_ev:
	./fl -v -S | grep -i imprevisto | sort | uniq

#
# Confronto das formas geradas pelo conjugador com as formas geradas
# via arquivo de afixos.
#
teste_v:
	echo Essa opção ainda não está implementada

#
# roda todos os testes
#
testes: teste_v teste_sep teste_ev

#
# Remove todos os arquivos construídos.
#
clean:
	rm -f v.tmp br.tmp palavras.tmp br.base.tmp
	rm -f br.aff br.hash br.ispell.cnt br.ispell.stat
	rm -f v.ispell br.ispell br.ispell.tmp
	rm -f formas
	rm -f conjugue-stamp
	rm -f pt_BR.dic pt_BR.aff
	rm -f silabas br.base br.aff
	rm -f pt_BR
	rm -f E-Rodrigo
	rm -f FAQ
	rm -f *~

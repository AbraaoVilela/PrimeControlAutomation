***DOCUMENTAÇÃO KEYWORD***

**ROBOT FRAMEWORK**

Robot Framework é uma estrutura genérica de automação de teste para testes de aceitação e desenvolvimento orientado a testes de aceitação. É uma estrutura de teste orientada por palavras-chave que usa a sintaxe tabular dos dados de teste

Ele pode ser usado para automação de teste e automação de processo robótico (RPA).

O Robot Framework tem suporte ativo, com muitas empresas líderes do setor usando-o no desenvolvimento de software.

O Robot Framework é aberto e extensível e pode ser integrado a virtualmente qualquer outra ferramenta para criar soluções de automação poderosas e flexíveis. Ser open source também significa que o Robot Framework é gratuito para uso, sem custos de licenciamento.
Robot Framework tem sintaxe fácil, utilizando palavras-chave legíveis por humanos. Seus recursos podem ser estendidos por bibliotecas implementadas com Python ou Java. O framework possui um rico ecossistema ao seu redor, consistindo em bibliotecas e ferramentas que são desenvolvidas como projetos separados.

O projeto Robot Framework está hospedado no GitHub, onde você pode encontrar mais documentação, código-fonte e rastreador de problemas. Os downloads são hospedados no PyPI .

**SELENIUM LIBRARY**
SeleniumLibrary é uma biblioteca de teste da web para Robot Framework que utiliza a ferramenta Selenium internamente. O projeto está hospedado no GitHub e os downloads podem ser encontrados no PyPI .

SeleniumLibrary funciona com Selenium 3 e 4. Ele oferece suporte a Python 3.6 ou mais recente. Além do interpretador Python normal , ele também funciona com PyPy .

SeleniumLibrary é baseado na antiga SeleniumLibrary que foi bifurcada para Selenium2Library e, posteriormente, renomeada de volta para SeleniumLibrary. Consulte as seções Versões e Histórico abaixo para obter mais informações sobre as diferentes versões e o histórico geral do projeto.

Consulte a documentação de palavras-chave para obter as palavras-chave disponíveis e mais informações sobre a biblioteca em geral.

Instalação
O método de instalação recomendado é usar pip :

pip install --upgrade robotframework-seleniumlibrary
A execução desse comando instala também as versões mais recentes do Selenium e do Robot Framework, mas você ainda precisa instalar os drivers do navegador separadamente. A --upgradeopção pode ser omitida ao instalar a biblioteca pela primeira vez.

**EXECUÇÃO COMO RODAR TESTE**

Foi utilizado nesse projeto Robot Framework - com a library do Selenium (descrição acima)

Foi criado uma pasta de log para armazenar todo resultado dos testes e screenshot, utilizando "./log" 

Utilizei VSCODE e CMDER para criação dos casos de testes e execução. 

No teste segui o  padrão Page Object Model - é um padrão de design que se tornou popular na automação de teste para aprimorar a manutenção de teste e reduzir a duplicação de código. Um objeto de página é uma classe orientada a objetos que serve como uma interface para uma página.

Então criei uma pasta Resources e dentro uma PageObject para armazenar toda ação e uma pasta Tests com a classe TestSiteAplication para execução do código. 

Foi criado uma classe Resource para armazenar toda informação generica entre as classes e foi instanciado na minha classe TestSiteAplication.

Dentro da minha pasta de PageObject foi criado classes com ação de cada página da aplicação "http://automationpractice.com/index.php"

Carrinho - pertence todo comportamento da pagina Order - My Store
Home - pertence todo comportamento da pagina My Store 
Search - pertence todo comportamento da pagina Search - My Store
Resource - pertence todo comportamento generico das classes.

TestSiteAplication - contem todos os casos dos 3 testes que estão sendo executados - com as Keywords referenciando para determinada classe de origem 

Exemplo : 

  Home está referenciando a classe dentro da pasta PageObject  -> Home
    
  Ação que deve ter -> Acessar a página home do site

Resultado : 

Caso de Teste com PO 01: Remover Produtos do Carrinho
    Home.Acessar a página home do site




<h1>Testes Rspec de uma calculadora</h1>
Testes aumomatizados para uma calculadora feita em Ruby 

<h2>Apresentação</h2>
A calculadora foi desenvolvida com as funções de somar, subtrair, multiplicar, dividir e obter valor de um número sobre uma porcentagem


<h2>Pré requisitos</h2>
Tecnologias e ferramentas ultilzadas no projetos:</br>

  <ul>
    <li><a href="https://rubyinstaller.org/downloads/">RUBY 3.1.2,</a></li>
    <li><a href="https://cmder.app/">CMDER</a></li>
    <li><a href="https://git-scm.com/">GIT</a></li>
    <li><a href="https://code.visualstudio.com/">VSCODE</a></li>
  </ul>

Instalação compativel com Windows 10

<h2>Instalação</h2>

Feita a instalação das ferramentas abra o CMDER e rode o seguinte comando:
  
<pre>
<span style="font-weight: 400">gem install bundler</span>
</pre>

Agora para clonar o projeto em sua maquina abra o GIT BASH em uma pasta e rode:

<pre>
<span style="font-weight: 400">git clone https://github.com/EmersonBarcelos/RealityStone_Emerson_Barcelos_Compass.git</span>
</pre>

Abra o CMDER na pasta do projeto e faça a instalação das dependencias com o comando:

<pre>
<span style="font-weight: 400">bundle install</span>
</pre>

<h2>Execução dos testes</h2>

Para a execução automatizada dos testes abra o CMDER na pasta do projeto e rode:

<pre>
<span style="font-weight: 400">bundle exec rspec specs\calculadora_spec.rb</span>
</pre>

<h2>Deployment</h2>
Para atualização do projeto e correção de bugs:
<pre>
<span style="font-weight: 400">git checkout -b "develop"</span>
</pre>
<pre>
<span style="font-weight: 400">git commit -m "Correção <correção feita> "</span>
</pre>
<pre>
<span style="font-weight: 400">git push origin https://github.com/EmersonBarcelos/RealityStone_Emerson_Barcelos_Compass</span>
</pre>

</ul>

<h2>Contribuições</h2>

Para contruibuições faça o commit na brach "develop" com a descrição da atualização para analise

<h3>Autor</h3>
Emerson Barcelos - 30/08/22  - https://github.com/EmersonBarcelos/RealityStone_Emerson_Barcelos_Compass

<h3>License</h3>

Software pode ser modificado, usado comercialmente e distribuído.
Software pode ser modificado e usado de forma privada.
A licença e os direitos precisam ser incluídos no software.
Os autores dos software não provêm garantias.

<h3>Créditos</h3>
fontes ultilizadas:
<ul>
  <li>https://www.ruby-lang.org/pt/documentation/</li>
  <li>https://rspec.info/documentation/</li>
</ul>


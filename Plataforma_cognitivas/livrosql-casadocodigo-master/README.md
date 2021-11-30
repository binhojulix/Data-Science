SQL - Uma abordagem para bancos de dados Oracle
===============================================

Olá, galera!!! Tudo bom? Fico muito feliz por você ter despendido um tempo para ler meu livro e o mais bacana, se você chegou até aqui, é sinal que ficou interessado em ver como tal da SQL funciona e deseja testar os conhecimentos adquiridos. Fique a vontade, abaixo, te explico como montar a base para testar os SQLs do livro e também utilizá-los em suas práticas. Conte comigo para qualquer coisa. Forte abraço e aproveite o material.

Se você chegou aqui por acaso e ainda não conhece o livro, compre pela Casa do Código!!! Não perca tempo!!!!
SQL - Uma abordagem para bancos de dados Oracle
http://www.casadocodigo.com.br/products/livro-sql-oracle

Adquira também meu outro livro e vire expert no assunto!!!
PL/SQL - Domine a linguagem do banco de dados Oracle
https://www.casadocodigo.com.br/products/livro-plsql

Se precisar falar comigo me contate pelo email: eduardogoncalves.br@gmail.com

Curta a página do facebook: http://facebook.com/eduardogoncalvesescritor/

Vamos lá…

Para praticar melhor os conceitos do livro, sugiro que você execute os exemplos mostrados em cada capítulo. Ainda está valendo aquela máxima que “A prática leva a perfeição”. Então não perca tempo e comece a treinar!!! ;-)

Eu vou te indicar três formas de como você pode praticar. Seguem as opções mais viáveis:

1) Utilizar uma base de dados acadêmica ou da sua empresa.
Isto é para o caso de universidades ou empresas que possuem o banco Oracle e que disponibilizam para seus estudantes ou funcionários. É óbvio que nestas duas situações você teria que ter a autorização da universidade ou empresa para poder utilizar o recurso. Se este for caso, você não precisaria preparar um ambiente do zero. Se se esta não for sua realidade, vamos para a alternativa 2.

2) Instalar uma versão mais básica do Oracle em uma máquina local.
Nesta alternativa, você baixaria o banco de dados Oracle, mais precisamente o Oracle XE, e instalaria o mesmo em um computador ou notebook. A instalação é bem simples. Segue o link:
http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html

3) Utilizar o Live SQL da Oracle
Esta seria a alternativa mais fácil, onde não há a necessidade de instalação de ambiente. o Live SQL é um ambiente disponibilizado pela Oracle na nuvem para você executar comandos SQL e PL/SQL. É um ambiente bem bacana e você não precisa se preocupar em montar uma infraestrutura.


Ok.Agora que já te passei alternativas. Vou te passar mais algumas informações com relação a como lidar com cada uma delas:

Se você escolher a alternativa 3), da uma olhada no vídeo abaixo que disponibilizei no YouTube. É link de um vídeo que fiz sobre como utilizar um ambiente Live SQL para executar os exemplos do Livro, sem que você precise criar um ambiente Oracle do zero!!! Ele vai te mostrar como é possível executar os exemplos de SQL e PL/SQL através desta ferramenta online da Oracle!!!

Aproveite, assista ao vídeo e deixe seu comentário lá, curta e inscreva-se no canal!!!

Segue o link: https://www.youtube.com/watch?v=dy62qYNPA_s&t=31s

### IMPORTANTE ####
Para quem vai utilizar a ferramenta Live SQL da Oracle, alguns exemplos do livro, como, por exemplo, os capítulos que falam sobre o uso do SQL*Plus e seus comandos, estes exemplos não poderão ser testados. Isto, porque são comandos próprios da ferramenta SQL*Plus e não das linguagens SQL ou PL/SQL. Mas com exceção dos comandos do SQL*Plus, que também é uma ferramenta equivalente ao Live SQL, mas com mais recursos, todos os outros exemplo são para funcionar. Lembrem-se, qualquer dúvida, entre em contato comigo pelas canais de comunicação disponíveis acima!


Se você escolher a alternativa 1) ou 2), depois do acesso ao banco de dados estar disponível para você, ou depois de você ter instalado o banco de dados, siga os passos a seguir para criar a base de dados para que você possa praticar os exemplos do livro:

	ATENÇÃO: Não utilize ambientes de produção para estes testes. Utilize sempre bancos de dados de teste, principalmente, se estiverem utilizando usuários com privilégio de DBA, muito menos se você tiver pouca experiência para manipulá-los.




	Obs.: Para a base HR, pode acontecer de alguns erros surgirem logo no início da execução do script. Isto porque antes de criar os objetos, tabelas e views, ele tenta excluí-las para o caso de você já tenha executado este script, anteriormente. Neste caso, ele apagará todos os objetos e recriará todos novamente. Na base SCOTT, tem um arquivo específico para isto (DEMODROP.SQL), que está dentro da pasta que você descompactou, que serve para apagar os objetos criados. Ao contrário da base HR, na criação da base SCOTT este arquivo não chamado. Caso você queria excluir todos os objetos execute o arquivo que esta na pasta. Eu deixei desta forma, para não mexer nos script padrões distribuídos pela Oracle.


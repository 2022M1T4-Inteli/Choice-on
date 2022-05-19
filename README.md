# Inteli - Instituto de Tecnologia e Liderança 

<p align="center">
<a href= "https://www.inteli.edu.br/"><img src="https://www.inteli.edu.br/wp-content/uploads/2021/08/20172028/marca_1-2.png" alt="Inteli - Instituto de Tecnologia e Liderança" border="0"></a>
</p>

# Choice On

## Future Minds

## Integrantes: 

- <a href="https://www.linkedin.com/in/pedro-romão-734b4920a/">Pedro Romão</a>
- <a href="https://www.linkedin.com/in/allan-casado-6339a9177/">Allan Casado</a>
- <a href="https://www.linkedin.com/in/victorbarq/">Gabriela Barretto</a>
- <a href="https://www.linkedin.com/in/victorbarq/">João Gonzalez</a>
- <a href="https://www.linkedin.com/in/victorbarq/">Bianca Lima</a>
- <a href="https://www.linkedin.com/in/victorbarq/">Camila Anacleto</a>
- <a href="https://www.linkedin.com/in/victorbarq/">Henri Harari</a>

<br>

<p align="center">
<img src="https://user-images.githubusercontent.com/99193652/153876844-699982fd-914f-491f-a33e-aa0ad8b4c766.png">


## Descrição

📜 O jogo se desenrola em um ambiente escolar (feira de ciências), onde o jogador terá a possibilidade de interagir com quatro tendas diferentes. Cada uma dessas tendas representará um curso do Inteli. Em cada tenda, haverá um professor, que representa a academia, e um profissional que atua no mercado de trabalho. O jogador irá interagir com cada um desses personagens, por meio de caixas de diálogo, que explicarão sobre o curso de maneira geral e quais são as suas especificidades. Após essa interação, o jogador resolverá um quiz para testar os seus conhecimentos e será direcionado para outra tela, em que será apresentado a um minijogo relacionado ao respectivo curso. Ao resolver esses desafios em cada tenda, o jogador receberá uma parte de um quebra cabeça e no final, terá quatro peças, que formam uma mensagem para o jogador e servem como passe para a segunda fase do jogo. 
<br><br>
<p align="center">
<img src="https://github.com/2022M1T4/Projeto1/blob/main/images/Choice%20on.jpeg?raw=true" alt="NOME DO JOGO" border="0">
  Logo Choice On by Future Minds


💡 O objetivo do jogo é instruir sobre os cursos de bacharelado do Inteli, principalmente sobre as diferenças entre eles, tanto no que se refere a parte técnica, quanto às possíveis áreas de atuação e possibilidades dos profissionais formados nesses cursos. 
<br><br>
O jogo foi desenvolvido com o principal objetivo de auxiliar os alunos que possuem interesse em cursar algum dos quatro cursos oferecidos pelo Inteli mas não sabem ao certo qual dos cursos escolher. O jogo Choice On oferece explicações sobre as diferenças e semelhanças entre os cursos de maneira leve e lúdica, com o objetivo de sanar as dúvidas dos alunos interessados nesses bacharelados. 
<br><br>

## 🛠 Estrutura de pastas

- Raiz<br><br>
| --> documentos<br>
  &emsp;| --> antigos<br>
  &emsp;|--> GDD_T4_M1_G1_Future_Minds_Inteli_Choice_On_v_1_0.PDF.docx.pdf
| --> executáveis<br>
  &emsp;| --> windows<br>
  &emsp;| --> html<br>
| --> imagens<br>
| --> src<br>
  &emsp;| --> JOGO.CHOICE
| readme.md<br>

A pasta raiz contém um arquivo principal:

- <b>readme.md</b>, que consiste em um guia geral sobre o projeto.

E, também, 4 subpastas que se organizam da seguinte forma:

- <b>documentos</b>, ondem encontram-se todos os documentos relacionados ao projeto, sobretudo o Game Design Document (GDD), com uma subpasta <b>antigos</b> que armazena versões anteriores dos mesmos.

- <b>executáveis</b>, ondem encontram-se todos os executáveis do jogo, prontos para rodar, com 2 pastas: uma para binários windows e uma para a web.

- <b>imagens</b>, ondem encontram-se algumas imagens relacionadas ao jogo, sistema e logos, prontos para serem utilizados e visualizados.

- <b>src</b>, onde encontra-se todo o código fonte do jogo/sistema, pronto para para ser baixado e modificado.

## 🛠 Instalação

<b>Windows:</b>

Não há instalação, apenas executável. Baixe os arquivos disponíveis em https://github.com/2022M1T4/Projeto1/tree/main/execut%C3%A1veis/Windows e execute "ChoiceOn.exe" como qualquer outro programa.


<b>HTML:</b>

Não há instalação! Baixe os arquivos disponíveis em https://github.com/2022M1T4/Projeto1/tree/main/execut%C3%A1veis/HTML e execute-o como uma página da web (através de algum navegador).

```sh
Dependendo de suas configurações de firewall, talvez seja necessário
instaurar um web service como xampp ou wampp para que o jogo rode lo-
calmente.
```

## 💻 Configuração para desenvolvimento

Para abrir este projeto você necessita das seguintes ferramentas:

-<a href="https://godotengine.org/download"> Godot</a>

Instruções para a configuração do ambiente de desenvolvimento:
```

1) Clone o repositório.
2) Abra a engine de desenvolvimento (godot).
3) No gerenciador de projetos inicial, clique no botão "importar" e, em seguida, no botão "navegar".
4) Navegue até o repositório clonado e abra a pasta "src".
5) Selecione o arquivo "project.godot" e em seguida clique no botão "abrir".
6) Pronto. O seu ambiente de desenvolvimento está configurado.

```

## 🗃 Histórico de lançamentos
  
- 18/02 Primeira entrega 1.0<br>
Feira de profissões com um personagem conseguindo andar pela quadra<br>
  
- 04/03 Segunda entrega 2.0<br>
Adicionada a tenda com o professor, ainda sem diálogo, e a primeira versão do minigame de plataforma com um mapa básico e sem inimigos ainda <br>

- 18/03 Tercecira entrega 3.0<br>
Foi criado um mapa maior no minigame de plataforma já com moedas e artefatos, colocado os inimigos, ainda sem sistema de dano, implementados o oráculo com o quiz e o diretor na feira de profissões<br>

- 01/04 Quarta entrega 4.0<br>
Trocamos as sprites do jogo, colocamos o sistema de dano, implementamos as fireballs, minimapa, inventários e todos os diálogos necessários (Diretor na feira de profissões, professor na tenda e artefatos ao longo do jogo) <br>
  
- 14/04 Entrega final 5.0<br>
Adição de um checkpoint, criação de uma bomba que elimina duas respostas erradas no quiz, criação de tutoriais para a feira e o minigame, melhora nas artes do jogo e refinamento da user experience no jogo com adição de placas que dão um direcionamento durante o minijogo<br>


## 📋 Licença/License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/Spidus/Teste_Final_1">MODELO GIT INTELI</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://www.yggbrasil.com.br/vr">INTELI, VICTOR BRUNO ALEXANDER ROSETTI DE QUIROZ</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>

## 🎓 Referências

Aqui estão as referências usadas no projeto.

1. <https://github.com/iuricode/readme-template>
2. <https://github.com/gabrieldejesus/readme-model>
3. <https://creativecommons.org/share-your-work/>

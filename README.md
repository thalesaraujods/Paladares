# Paladares

> **Cozinhe, colabore e divirta-se.**

Paladares é um aplicativo gamificado para iPad que transforma a cozinha em uma experiência colaborativa. O app desafia grupos de amigos, reunidos no mesmo local, a prepararem pratos de diferentes culturas juntos, dividindo as tarefas de forma organizada e divertida.

## Sobre o Projeto

Cozinhar pode ser caótico quando muitas pessoas tentam ajudar ao mesmo tempo. O Paladares resolve isso transformando a receita em um "jogo" cooperativo. 

Diferente de apps de receitas tradicionais, o Paladares divide o modo de preparo em 4 trilhas diferentes, onde cada pessoa assume o papel de um "Chef" (Chef 1, Chef 2, Chef 3 e Chef 4). Cada chef recebe instruções específicas que, ao final, se unem para compor o prato perfeito.

## Funcionalidades Principais

* **Experiência Multi-Chef:** O aplicativo gerencia 4 fluxos de trabalho simultâneos. Cada participante seleciona seu avatar e segue apenas os passos da sua responsabilidade.
* **Gamificação:** Progresso visual por chef e etapas claras de conclusão.
* **Design Inclusivo:** Suporte a *Dynamic Type* e acessibilidade, adaptando o tamanho das fontes e layouts para diferentes necessidades visuais.
* **Navegação Fluida:** Interface intuitiva desenvolvida inteiramente em SwiftUI.

## Tecnologias e Arquitetura

O projeto foi desenvolvido nativamente para iPadOS utilizando as melhores práticas da Apple:

* **Linguagem:** Swift 5
* **Interface:** SwiftUI
* **Arquitetura:** MVVM (Model-View-ViewModel)
* **Navegação:** Padrão **Coordinator** para gerenciamento de fluxo de telas.
* **Dados:** Persistência e carregamento de dados via JSON local (`recipes-pt.json`), permitindo fácil adição de novas receitas.
* **Localização:** Suporte a múltiplos idiomas (Português e Inglês) via `Localizable.xcstrings`.

## Como Funciona a Divisão de Tarefas

A lógica central do app está na estruturação dos dados. Cada receita possui um array de `preparationMethods`, onde cada objeto é atrelado a um `chefId` único.

1.  **Seleção:** O grupo escolhe uma receita (ex: Bolo de Fubá).
2.  **Distribuição:** O iPad é posicionado em um local central.
3.  **Execução:**
    * *Chef 1* pode ficar responsável por pré-aquecer o forno.
    * *Chef 2* mistura os ingredientes secos.
    * *Chef 3* prepara a forma.
    * *Chef 4* cuida da finalização.
4.  **Sincronia:** O app guia o grupo para que todos terminem suas partes no momento certo da montagem final.

## Como Rodar o Projeto

### Pré-requisitos
* Mac com Xcode 15+ instalado.
* iPadOS 17.0+ (Simulador ou Dispositivo).

### Passos
1.  Clone este repositório:
    ```bash
    git clone [https://github.com/seu-usuario/Paladares.git](https://github.com/seu-usuario/Paladares.git)
    ```
2.  Abra a pasta do projeto e execute o arquivo `Paladares.xcodeproj`.
3.  Aguarde a indexação do projeto.
4.  Selecione um simulador de **iPad** (o layout é otimizado para telas grandes).
5.  Pressione `Cmd + R` para rodar.

## Estrutura do Projeto

* `Coordinator/`: Gerencia a navegação entre Home, Lista de Receitas, Preparo e Conclusão.
* `Recipe/`: Contém as Views e ViewModels para listagem e detalhes das receitas.
* `Preparation/`: Lógica principal do modo "cozinha", com a seleção de chefs e passo-a-passo.
* `Utils/`: Arquivos JSON com os dados das receitas e fontes personalizadas.
* `Assets.xcassets`: Imagens dos pratos, ícones dos chefs e cores do sistema.

## Autores

* **Amanda Rabelo**
* **Taynara Vieira Nascimento**
* **Thales Araújo**

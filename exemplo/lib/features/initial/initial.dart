import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final designSystemInitialPageStory = <Story>[
  Story(
    name: 'Initial Page',
    description: 'README.md',
    builder: (context) => const ColoredBox(
      color: Colors.white,
      child: InitialPage(),
    ),
  ),
];

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  final String data = '''

# Repositório de Pacotes - Design System da GetConnect

Este repositório contém os pacotes e a estrutura para o Design System da GetConnect. Nosso objetivo é proporcionar uma base consistente e reutilizável para os projetos, garantindo que todos os componentes sigam um padrão de qualidade e organização.

## Estrutura de Diretórios

Abaixo está a estrutura de diretórios e a descrição de como e onde cada tipo de item deve ser adicionado no repositório.

### 1. **`core/components`** - Itens Visuais e UI

Aqui ficam todos os componentes e widgets reutilizáveis que formam a interface de usuário (UI). A divisão segue a metodologia de Atomic Design.

- **`atomos`**: São os componentes mais básicos da UI. Exemplo: botões, textos, ícones.
    - Exemplo: `Text`, `Icon`
    
- **`moleculas`**: São combinações de átomos que formam componentes mais complexos. Exemplo: campos de formulários, listas de itens.
    - Exemplo: `ListTile`, `Button`, `Input`
    
- **`organismos`**: Componentes ainda mais complexos compostos por átomos e moléculas. Exemplo: formulários completos, menus de navegação.
    - Exemplo: `Form`, `AppBar`, `BottomBar`, `Grid`, `UserProfile`, `LoginForm`, `MedicineOnTimeList`
    
- **`templates`**: Estruturas de layout que combinam organismos e moldam a arquitetura da tela. Exemplo: páginas base que são usadas em diferentes partes do app.
    - Exemplo: `BaseScreen`, `Dashboard`, `LoginScreen`, `ListScreen`

---

### 2. **`core/infrastructure`** - Infraestrutura do Aplicativo

Aqui ficam as estruturas e utilitários que suportam o funcionamento interno do aplicativo, mas não são diretamente relacionados à interface do usuário.

- **`Constants`**: Constantes globais do sistema, como valores padrão, chaves de configuração, etc.
    - Exemplo: `AppConstants`, `ColorPalette`, `TextStyles`

- **`Error`**: Tratamento de erros e exceções que podem ocorrer no app.
    - Exemplo: `AppError`, `ErrorHandler`, `ErrorMessages`

- **`Network`**: Tudo relacionado à comunicação de rede, como API requests e configurações de rede.
    - Exemplo: `NetworkManager`, `ApiService`, `HttpClient`

- **`Utils`**: Funções utilitárias que podem ser reutilizadas em várias partes do app, como manipulação de strings, datas, etc.
    - Exemplo: `DateUtils`, `StringUtils`, `MathUtils`

- **`Validators`**: Validações de dados para garantir que as informações estão corretas antes de serem enviadas ou processadas.
    - Exemplo: `EmailValidator`, `PhoneNumberValidator`, `PasswordValidator`

---

### 3. **`features`** - Funcionalidades Compartilhadas

Esta pasta contém as features e lógicas de negócio que podem ser compartilhadas entre diferentes módulos ou aplicações. Cada feature é organizada em três camadas: **Data**, **Domain** e **Presentation**.

#### **`feature`** (Exemplo: `HomePage`, `AuthenticationPage`, `MedicineOnTimePage`)

- **`Data`**: Contém a camada responsável por recuperar e armazenar dados, como fontes de dados (API, banco de dados), modelos e repositórios.
    - **`DataSource`**: Classes que gerenciam a origem dos dados (API, Banco de Dados, etc.).
        - Exemplo: `RemoteDataSource`, `LocalDataSource`
    - **`Models`**: Objetos que representam os dados (geralmente correspondem às respostas das APIs).
        - Exemplo: `UserModel`, `MedicineOnTimeModel`
    - **`Repositories`**: Camada que fornece uma abstração para acessar os dados, seja local ou remoto.
        - Exemplo: `UserRepository`, `MedicineOnTimeRepository`

- **`Domain`**: Contém a lógica de negócios, como entidades, casos de uso e repositórios.
    - **`Entity`**: Representação das entidades do negócio.
        - Exemplo: `UserEntity`, `MedicineOnTimeEntity`
    - **`Repositories`**: Abstrações dos repositórios, onde definimos as funções que o aplicativo irá usar para interagir com os dados.
        - Exemplo: `IUserRepository`, `IMedicineOnTimeRepository`
    - **`UseCases`**: Casos de uso que orquestram a lógica de negócios. Eles são chamados pela camada de apresentação para executar ações no sistema.
        - Exemplo: `GetUserUseCase`, `CreateMedicineOnTimeUseCase`

- **`Presentation`**: Responsável pela interação com o usuário, controle da interface e comunicação com a camada de domínio.
    - **`Controllers`**: Controladores de estado que gerenciam a lógica de apresentação. Por exemplo, controladores para frameworks como GetX, Bloc, Provider.
        - Exemplo: `HomeController` (se estiver usando GetX), `LoginBloc` (se estiver usando Bloc)
    - **`Pages`**: Contém as telas ou páginas do aplicativo.
        - Exemplo: `HomePage`, `MedicineOnTimePage`, `LoginPage`
    - **`Widgets`**: Componentes visuais específicos da feature que são usados nas páginas.
        - Exemplo: `MedicineOnTimeListTile`, `LoginForm`

---

## Como Criar um Novo Item ou Funcionalidade

### 1. **Escolha o Tipo de Item**
   - Se o item for um **componente visual**, coloque-o em `core/components`.
   - Se o item for uma **infraestrutura**, como validações ou utilitários, coloque-o em `core/infrastructure`.
   - Se o item for uma **feature** (funcionalidade), crie a estrutura dentro de `features` e organize conforme a camada (Data, Domain, Presentation).

### 2. **Nomeação e Organização**
   - Siga uma convenção de nomenclatura clara e consistente, com nomes autoexplicativos para arquivos e classes.  - Exemplo: `DSCustomForm`, `DSFormTextField`, `DSText`
   - Mantenha a hierarquia de pastas e arquivos o mais clara possível. Por exemplo:
     - Para um botão em `core/components/atomos/button`, o arquivo seria `ds_button.dart`.
     - Para uma funcionalidade de login, crie uma pasta em `features/authentication` com subpastas para `Data`, `Domain` e `Presentation`.

### 3. **Escreva Testes**
   - Sempre que possível, escreva testes unitários e de integração para validar o comportamento de novos itens.
   - Adicione os testes na pasta `test` seguindo a mesma estrutura de pastas e nomes para facilitar a localização.

---

## Contribuindo

1. Faça um fork deste repositório.
2. Crie uma branch para a nova feature ou correção (`git checkout -b feature/nova-feature`).
3. Faça suas alterações e adicione testes.
4. Envie suas alterações com um pull request explicativo.

---

Se você tiver qualquer dúvida ou sugestão sobre a estrutura ou os padrões do Design System, fique à vontade para abrir uma issue ou enviar um PR!

---

Esse modelo oferece uma visão mais clara sobre a organização e estruturação do repositório, além de garantir consistência ao criar novos itens ou funcionalidades.

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(50), child: MarkdownBody(data: data)),
      ),
    );
  }
}

# BASIC-CRUD-FLUTTER

#### Video Demo: https://youtu.be/LF_BPjPnUmI

#### Description:
BASIC-CRUD-FLUTTER é um projeto desenvolvido em Flutter que demonstra a implementação básica de operações CRUD (Create, Read, Update, Delete). Este projeto serve como um exemplo didático para aprender a criar aplicativos Flutter que interagem com um banco de dados local (SQLite) para gerenciamento de dados.  

O aplicativo permite ao usuário adicionar, visualizar, atualizar e deletar registros de forma simples e intuitiva, enquanto explora conceitos importantes do Flutter como gerenciamento de estado com Provider e persistência de dados com SQLite.

---

## 🌟 Funcionalidades

- **Create**: Adicione novos registros ao banco de dados.
- **Read**: Consulte e visualize registros existentes.
- **Update**: Atualize registros existentes.
- **Delete**: Remova registros do banco de dados.
- **Interface intuitiva**: Layout limpo e simples para melhor experiência do usuário.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework para criar aplicativos nativos compilados.
- **Dart**: Linguagem de programação utilizada pelo Flutter.
- **Provider**: Gerenciamento de estado reativo.
- **SQLite**: Banco de dados local.

---

## 📂 Estrutura do Projeto

- **main.dart**: Ponto de entrada do aplicativo.
- **screens/**: Contém as telas principais como `HomeScreen`, `AddScreen`, `UpdateScreen`.
- **models/**: Definição das classes de dados (modelos).
- **providers/**: Gerenciamento do estado com Provider.
- **db/**: Configuração e funções de acesso ao banco de dados SQLite.
- **assets/**: Imagens e recursos visuais do aplicativo.

---

## 🚀 Como Rodar

1. **Clone o Repositório**:
    ```bash
    git clone https://github.com/obrenoluiz/BASIC-CRUD-FLUTTER.git
    cd BASIC-CRUD-FLUTTER
    ```

2. **Instale as Dependências**:
    ```bash
    flutter pub get
    ```

3. **Execute o Aplicativo**:
    ```bash
    flutter run
    ```

---

## 📷 Screenshots

![Tela Inicial](https://github.com/brenoluizdev/BASIC-CRUD-FLUTTER/blob/main/assets/IMAGEM.PNG?raw=true)

---

## 📝 Decisões de Design

- Escolhi **Provider** pelo seu padrão simples de gerenciamento de estado para projetos educativos.  
- SQLite foi usado para **persistência local** dos dados, mantendo o projeto independente de servidores externos.  
- A interface foi projetada para ser **clara e intuitiva**, adequada para usuários iniciantes.  

---

## 🤝 Como Contribuir

Se desejar contribuir:  
1. Faça um fork do repositório.  
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).  
3. Faça commit das alterações (`git commit -am 'Adiciona nova feature'`).  
4. Faça push para a branch (`git push origin feature/nova-feature`).  
5. Abra um Pull Request.

---

## 📚 Links Úteis

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Documentation](https://dart.dev/guides)

---

## 📝 Licença

Licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

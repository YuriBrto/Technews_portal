# HelloPhoenix Newsletter

O **HelloPhoenix Newsletter** é uma aplicação web construída com Elixir e Phoenix 1.8, que consome notícias de tecnologia em tempo real utilizando a NewsAPI. Agora, a aplicação utiliza **Phoenix LiveView** para uma experiência dinâmica e interativa, incluindo alternância de tema claro/escuro com transições suaves.

## Funcionalidades principais

- **Integração com NewsAPI** para busca de notícias em português.
- **Exibição das notícias em cards** com título, descrição, imagem e fonte.
- **Botão “Leia Mais”** que direciona para a notícia completa.
- **Layout responsivo**, adaptável para desktop e dispositivos móveis.
- **Alternância de tema claro/escuro** (dark/light) com transição suave, afetando toda a interface e os cards.
- **Configuração segura da chave da API** via variáveis de ambiente, evitando expor informações sensíveis.
- **Newsletter como LiveView**, permitindo atualizações dinâmicas e uso de LiveComponents.

## Tecnologias utilizadas

- Elixir 1.18 e Phoenix 1.8
- Phoenix LiveView
- HTTPoison para requisições HTTP
- Jason para parsing de JSON
- TailwindCSS e daisyUI para estilo e componentes

## Estrutura do projeto

- `lib/hello_phoenix_web/live/` – LiveViews da aplicação, incluindo `NewsletterLive`
- `lib/hello_phoenix_web/live/newsletter_live.html.heex` – Template HEEx para renderização das notícias
- `assets/css/newsletter.css` – Estilos específicos para a seção de notícias, adaptados para tema claro/escuro
- `config/dev.exs` e `config/runtime.exs` – Configuração de variáveis de ambiente para proteger a chave da API

Acesse o portal Technews: [Technews_portal](https://technews-portal-p43u.onrender.com)
---

**Agora o HelloPhoenix Newsletter está ainda mais moderno, seguro e interativo !

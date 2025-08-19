HelloPhoenix Newsletter

O HelloPhoenix Newsletter é uma aplicação web construída com Elixir e Phoenix 1.8, que consome notícias de tecnologia em tempo real utilizando a NewsAPI. A aplicação apresenta as últimas manchetes de tecnologia em uma interface moderna e responsiva, estilizada com TailwindCSS e daisyUI, permitindo que os usuários fiquem atualizados sobre temas como inovação, software e inteligência artificial.

Funcionalidades principais:

Integração com NewsAPI para busca de notícias em português.

Exibição das notícias em cards com título, descrição, imagem e fonte.

Botão “Leia Mais” que direciona para a notícia completa.

Layout responsivo, adaptável para desktop e dispositivos móveis.

Sistema de templates modular, seguindo os padrões Phoenix (NewsletterHTML e PageHTML).

Configuração segura da chave da API via variáveis de ambiente, evitando expor informações sensíveis.

Tecnologias utilizadas:

Elixir 1.18 e Phoenix 1.8

HTTPoison para requisições HTTP

Jason para parsing de JSON

TailwindCSS e daisyUI para estilo e componentes

Phoenix LiveView (opcional) para futuras atualizações em tempo real

Estrutura do projeto:

lib/hello_phoenix_web/controllers/ – Controladores da aplicação, incluindo NewsletterController

lib/hello_phoenix_web/templates/newsletter/ – Templates HEEx para renderização das notícias

assets/css/newsletter.css – Estilos específicos para a seção de notícias

Configuração de variáveis de ambiente para proteger a chave da API
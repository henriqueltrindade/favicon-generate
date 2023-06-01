# favicon-generate
Geração de Favicon usando inkscape

# Instalação

Usaremos aplicativos gratuitos de código aberto, como Inkscape, OptiPNG e Scour. Se você não tiver nenhum deles instalado em sua máquina, você pode instalá-los agora. No macOS, você pode usar o Homebrew para instalá-los:


```
sudo apt-get install inkscape optipng scour
brew install inkscape optipng scour
```

No Linux, Unix ou Windows, use seu gerenciador de pacotes favorito em vez do Homebrew para obter os aplicativos em sua máquina.
Em seguida, crie seu favicon no Inkscape e salve-o como Inkscape SVG quando terminar. Idealmente, mantenha-o quadrado (por exemplo, 400 px por 400 px).
Agora salve este script bash em um arquivo em seu computador em um local que faça sentido. Ele criará um diretório de saída e salvará as imagens de favicon geradas e otimizadas nele.

Este arquivo provavelmente precisará de recuo de tabulação em vez de espaços.
No Terminal, mude para o diretório no qual você deseja que o favicon seja criado e execute o script com o seguinte comando:


```
sh optimized-favicon-generator.sh favicon.svg
```

Atualize input-favicon.svg para o caminho real de seu favicon de entrada SVG.

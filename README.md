<h1>O que é o Packer?</h1>

O Packer é uma ferramenta de código aberto para criar imagens de máquinas idênticas para várias plataformas a partir de uma única configuração de fonte. O Packer é leve, roda em todos os principais sistemas operacionais e tem alto desempenho, criando imagens de máquina para várias plataformas em paralelo. O Packer não substitui o gerenciamento de configuração como Chef ou Puppet. Na verdade, ao criar imagens, o Packer pode usar ferramentas como Chef ou Puppet para instalar software na imagem.

Esse projeto cria um servidor web com Nginx na Cloud AWS. As credenciais de acesso foram passadas via variaveis de ambiente. O HCL packer foi instalado em um container docker, pela praticidade. A insatalação do Web Server foi passado via script. Após a instalação mudamos a página index.html por outra personalizada.

<h1>Instalar o Packer no Linux</h1>

docker run -it -v /home/seu_user/packer:/conf -w /conf --restart=always --entrypoint  "" hashicorp/packer:light sh

<h2>Exportando suas credenciais na AWS</h2>

$ export AWS_ACCESS_KEY_ID="suaaccess_key"<p>
$ export AWS_SECRET_ACCESS_KEY="suasecretkey"

<h2>Publicando a sua AMI</h2>

$ packer build projetc.json





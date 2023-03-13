O que é o Packer?

O Packer é uma ferramenta de código aberto para criar imagens de máquinas idênticas para várias plataformas a partir de uma única configuração de fonte. O Packer é leve, roda em todos os principais sistemas operacionais e tem alto desempenho, criando imagens de máquina para várias plataformas em paralelo. O Packer não substitui o gerenciamento de configuração como Chef ou Puppet. Na verdade, ao criar imagens, o Packer pode usar ferramentas como Chef ou Puppet para instalar software na imagem.

Uma imagem de máquina é uma unidade estática única que contém um sistema operacional pré-configurado e um software instalado que é usado para criar rapidamente novas máquinas em execução. Os formatos de imagem de máquina mudam para cada plataforma. Alguns exemplos incluem AMIs para EC2, arquivos VMDK/VMX para VMware, exportações OVF para VirtualBox, etc.

É possivel criar um projeto utilizando JSON ou a propria linguagem HCL2.

A estrutura básica é dividida em Builders onde é especificado toda a concepção da imagem a ser criada. Ex:(type, region, source_ami, instance_type, etc) e os provisioners possuem ma matriz de tudo o que o Packer precisa instalar.

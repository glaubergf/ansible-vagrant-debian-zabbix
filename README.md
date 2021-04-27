# Instalar e Configurar o Zabbix com o Ansible

O **Zabbix** é um software de nível corporativo ideal para o monitoramento em tempo real de milhões de métricas coletadas de dezenas de milhares de servidores, máquinas virtuais e dispositivos de rede, além de ser de código aberto é também gratuito.

O **Ansible** trabalha com os conceitos de inventário (_lista de máquinas que serão gerenciadas_), playbooks (_comandos ou passo-a-passo a ser executado_) e roles (_modularização do código_). Atualmente o Ansible pertence a **Red Hat**.


## O Host

Para esse projeto local, foi utilizado o Host com o GNU/Linux Debian Buster e realizado a instalação dos seguintes programas (ferramentas) para a execução do projeto:

**[Vagrant](https://www.vagrantup.com/docs)** para provisionar uma VM (_máquina virtual_) e instalar o Sistema Operacional **[GNU/Linux Debian Buster](https://www.debian.org/)** nessa VM. Lembrando que o _Vagrantfile_ utilizado nesse projeto esta setado para o uso do **[libvirt - Virtual Machine Manager](https://virt-manager.org/)**.

**[Ansible](https://docs.ansible.com/ansible/latest/index.html)** para executar o gerenciamento de automação na máquina alvo, nesse caso a VM com o Debian.

O Artigo que faz referência a este Projeto esta no **[SempreUpdate](https://sempreupdate.com.br/como-instalar-e-configurar-o-zabbix-5-no-debian-10-com-ansible/)**.


#### A Automação

Veja a breve descrição das tasks dentro da playbook:

```
ajustar o timezone
alterar o idioma
alterar o layout do teclado
instalar, configurar e habilitar o NTP
instalar, configurar e habilitar o MariaDB
instalar, configurar e habilitar o Zabbix
instalar, configurar e habilitar e o Nginx
```

Explore as tasks e sinta-se a vontade para melhora-lá.

## Contribuindo

Para contribuição de melhorias no código, comente no projeto as devidas aletrações deixando explicadas e assim que for possivel faço o commit e o merge para o código.

Esse foi um projeto inicial de estudo, logo, não foi utilizada as boas práticas.


## Licença

**GNU General Public License** (_Licença Pública Geral GNU_), **GNU GPL** ou simplesmente **GPL**.

[GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)

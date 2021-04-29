# ------------------------
# Projeto: ansible-vagrante-debian-zabbix
# Descrição: O objetivo desse projeto é provisionar uma ou mais VMs, assim podendo ser 
#            modificadas as suas variáveis nos parâmetros que atendam as suas espectativas.
# Autor: Glauber GF (mcnd2)
# Update: 2021-04-28
# ------------------------

# Instalar e Configurar o Zabbix com o Ansible

O **Zabbix** é um software de nível corporativo ideal para o monitoramento em tempo real de milhões de métricas coletadas de dezenas de milhares de servidores, máquinas virtuais e dispositivos de rede, além de ser de código aberto é também gratuito.

O **Ansible** trabalha com os conceitos de inventário (_lista de máquinas que serão gerenciadas_), playbooks (_comandos ou passo-a-passo a ser executado_) e roles (_modularização do código_). Atualmente o Ansible pertence a **Red Hat**.

## O Host

Para esse projeto local, foi utilizado o Host com o Sistema Operacional **[Debian 10 Buster](https://www.debian.org/)** e realizado a instalação dos seguintes programas (ferramentas) para a execução do projeto:

**[Vagrant](https://www.vagrantup.com/docs)** para provisionar a(s) VM(s) (_máquina virtual_) com o **Debian Buster**. Lembrando que o _Vagrantfile_ utilizado nesse projeto está configurado para o uso do provider **[libvirt](https://libvirt.org/)** com o gerenciador gráfico **[Virtual Machine Manager](https://virt-manager.org/)**.

**[Ansible](https://docs.ansible.com/ansible/latest/index.html)** para executar o gerenciamento de automação na máquina alvo, a VM com o Debian.

O Artigo que faz referência a este Projeto esta no **[SempreUpdate](https://sempreupdate.com.br/como-instalar-e-configurar-o-zabbix-5-no-debian-10-com-ansible/)**.

### A Automação

Veja a breve descrição das tasks dentro da playbook:

```
ajustar o timezone
alterar o idioma
alterar o layout do teclado
instalar, configurar e habilitar o NTP
instalar, configurar e habilitar o MariaDB
instalar, configurar e habilitar o Zabbix
instalar, configurar e habilitar o Nginx
```

Explore as tasks e sinta-se a vontade para melhorá-la.

## Contribuindo

Esse foi um projeto inicial de estudo, logo, não foi utilizada das boas práticas.

Para contribuição de melhorias no código, comente no projeto as devidas alterações deixando explicadas e assim que for possível será executado o commit e o merge para a branch main.

## Licença

**GNU General Public License** (_Licença Pública Geral GNU_), **GNU GPL** ou simplesmente **GPL**.

[GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)
[GPLv3 local](.LICENSE)

------

Copyright (c) 2021 Glauber GF (mcnd2)

Este programa é um software livre: você pode redistribuí-lo e/ou modificar
sob os termos da GNU General Public License conforme publicada por
a Free Software Foundation, seja a versão 3 da Licença, ou
(à sua escolha) qualquer versão posterior.

Este programa é distribuído na esperança de ser útil,
mas SEM QUALQUER GARANTIA; sem mesmo a garantia implícita de
COMERCIALIZAÇÃO ou ADEQUAÇÃO A UM DETERMINADO FIM. Veja o
GNU General Public License para mais detalhes.

Você deve ter recebido uma cópia da Licença Pública Geral GNU
junto com este programa. Caso contrário, consulte <https://www.gnu.org/licenses/>.

*

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>

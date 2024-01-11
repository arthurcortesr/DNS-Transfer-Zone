# DNS-Transfer-Zone

Este script desenvolvido em shell, visa realizar a transferência de zona DNS de um domínio específico, consultando os servidores de nomes associados a esse domínio. A transferência de zona é uma operação que permite obter uma cópia completa das informações de DNS para um domínio a partir de seus servidores autoritativos.

<br>

---

<br>

## **Modo de uso**

```bash
./dns_transfer_zone.sh <dominio>
```

## **Exemplo**

```bash
./dns_transfer_zone.sh businesscorp.com.br
```

## **Exemplo de saída**

```bash
----------------------------------
|Pk's Academy - DNS TRANSFER ZONE|
----------------------------------

Iniciando transferência de zona para o domínio: businesscorp.com.br

Transferindo zona de businesscorp.com.br do servidor: ns1.businesscorp.com.br

; Transferência de zona de businesscorp.com.br para ns1.businesscorp.com.br
; iniciada em 2023-01-01T00:00:00-03:00
businesscorp.com.br.    86400  IN      SOA     ns1.businesscorp.com.br. admin.businesscorp.com.br. (
                                2023010101 ; serial
                                3600       ; refresh (1 hour)
                                1800       ; retry (30 minutes)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )

businesscorp.com.br.    86400  IN      NS      ns1.businesscorp.com.br.
businesscorp.com.br.    86400  IN      NS      ns2.businesscorp.com.br.

; End of transfer
```

<br>

---

<br>

## **Funcionamento**

1. Verificação de Argumentos:
  O script verifica se o número correto de argumentos foi fornecido. Caso contrário, exibe uma mensagem informativa sobre o modo de uso e encerra a execução.

2. Iniciando a Transferência de Zona:
  Após a verificação bem-sucedida, o script exibe uma mensagem indicando o início da transferência de zona para o domínio fornecido.

3. Loop sobre Servidores de Nomes:
  Utiliza o comando host -t ns para obter os servidores de nomes associados ao domínio.
  Para cada servidor de nomes obtido, o script realiza a transferência de zona usando host -l -a e exibe os resultados.

<br>

---

<br>

## **Observações**

1. Este script depende do comando host para obter informações de servidores de nomes e realizar a transferência de zona. Certifique-se de que o comando host esteja instalado no sistema.
2. A transferência de zona é uma operação sensível e depende da configuração do servidor DNS. Nem todos os domínios e servidores DNS permitirão essa operação.

<br>

---

<br>

## **Avisos**

1. Este script é fornecido para fins educacionais e de aprendizado. Recomenda-se a obtenção de permissões adequadas antes de realizar a transferência de zona em ambientes de produção.
2. O sucesso da transferência de zona depende das configurações do servidor DNS e pode não estar disponível para todos os domínios ou servidores DNS.

























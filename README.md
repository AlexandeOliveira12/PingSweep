# 🔎 Ping Sweep & Nmap Scanner em Bash

Este projeto consiste em um **script Bash interativo** voltado para **pentest e reconhecimento de rede**, combinando **varredura de portas com Nmap** e **teste de conectividade com Ping**.

O script permite ao usuário escolher entre **execução rápida**, **varredura intrusiva**, além de definir a **quantidade de pacotes ICMP** enviados ao alvo.

---

## 📌 Aviso Legal

> ⚠️ **Uso restrito**:  
> Este script deve ser utilizado **apenas em ambientes autorizados**, como:
> - Laboratórios próprios
> - Ambientes de estudo
> - Sistemas com permissão explícita  
>
> O uso indevido pode violar leis como a **Lei Carolina Dieckmann (Lei nº 12.737/2012)** e a **Lei Geral de Proteção de Dados (LEI Nº 13.709/2018)**.

---

## 🛠️ Ferramentas Utilizadas

- **Bash**
- **Nmap**
- **Ping (ICMP)**

---

## 📂 Estrutura do Script

- Validação de argumentos
- Interface interativa em terminal
- Execução de Nmap com parâmetros dinâmicos
- Exibição apenas de portas abertas
- Teste ICMP configurável

---

## ⚙️ Funcionamento Detalhado

### 1️⃣ Validação de Parâmetro
O script exige que o **IP alvo** seja passado como argumento.

```bash
./PingSweep 192.168.0.1
```

---

### 2️⃣ Teste Rápido
Caso o usuário selecione **sim**, é aplicado:
```bash
-T4
```
➡️ Aumenta a velocidade da varredura Nmap.

---

### 3️⃣ Teste Intrusivo
Quando ativado:
- `-p-` → Todas as portas
- `-sV` → Detecção de serviços
- `-sT` → TCP Connect Scan

---

### 4️⃣ Filtro de Resultados
Somente **portas abertas** são exibidas, facilitando análise rápida.

---

### 5️⃣ Ping ICMP
Permite definir quantos pacotes ICMP serão enviados ao alvo.

---

## 📈 Futuras Melhorias

- Exportação em JSON
- Log estruturado
- Suporte a múltiplos hosts
- Integração com ferramentas como:
  - **Postman**
  - **Burp Suite**

---

## 📚 Referências

- https://nmap.org/book/man.html
- https://linux.die.net/man/8/ping

---

## 🚨 AVISO

> ⚠️Este projeto deverá ser utilizado **Apenas para fins educacionais e éticos**.

---

## 👨‍💻 Autor

**Alexandre Oliveira**  
Pentest | Cybersecurity | Bash | Linux  

---

## License / Licença

This project is licensed under the MIT License.
See the **LICENSE** file for more details.

Este projeto está licenciado sob a Licença MIT.
Consulte o arquivo **LICENSE** para mais informações.

---

⭐ Se este projeto te ajudou, considere dar um **star no GitHub**!

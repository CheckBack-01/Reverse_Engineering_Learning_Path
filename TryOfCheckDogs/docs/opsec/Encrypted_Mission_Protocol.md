# Encrypted Mission Protocol

### **Light Practice Format — Sensitive Intelligence Simulation**

This protocol replaces the plain-text delivery of instructions for **PADs**.
All instructions are provided **encrypted** and can only be read by following the procedure below.

### **Objective**

Simulate a real-world workflow in which critical orders/data are **never exposed directly**, reinforcing skills in:

* Handling sensitive data safely
* Using **GnuPG** (`gpg`) for encryption and decryption
* Maintaining a secure, traceable workflow in a lab environment

---

### **Procedure**

### **1) Receive the mission**

You will be given an **encrypted data block** in ASCII-armored GPG format.

Example:

```
-----BEGIN PGP MESSAGE-----

hQGMA2kQkYX3h13wAQv+NgkzRvP6o1X8Mox+L6FZxkG41jk4zPUyDl7ff1uZ3TrB
...
=0a1B
-----END PGP MESSAGE-----
```

### **2) Create the file**

On your lab VM (e.g., Kali), save the message to a file:

```shell
nano mission.gpg
```

Paste the encrypted block and save.

### **3) Decrypt**

Run:

```shell
gpg --decrypt mission.gpg
```

If prompted, enter the passphrase (provided with the block).

### **4) Read & execute**

Once decrypted, you will see the full practice instructions. Execute the mission as directed and document your results.

#### Example Usage

```shell
# Save the mission
nano mission.gpg

# Decrypt
gpg --decrypt mission.gpg
```

**Expected output (sample):**

```
Mission: Scan the internal network and document active hosts.
Tools: nmap, netdiscover.
Objective: Identify possible attack vectors.
```

---

### **Benefits of the Protocol**

* **Security:** Prevents accidental exposure of instructions over insecure channels.
* **Realism:** Mirrors how sensitive data is handled in real operations.
* **Operational discipline:** Enforces secure, auditable handling of confidential information.

SSH_DIR = ~/.ssh
PRIVATE_KEY = $(SSH_DIR)/id_rsa
PUBLIC_KEY = $(SSH_DIR)/id_rsa.pub

all: generate_key display_keys

generate_key: $(PRIVATE_KEY) $(PUBLIC_KEY)

$(PRIVATE_KEY):
	@echo "Génération de la clé SSH..."
	mkdir -p $(SSH_DIR)
	ssh-keygen -t rsa -b 4096 -C "votre_email@example.com" -f $(PRIVATE_KEY) -N ""
	@echo "Clé SSH générée avec succès !"

$(PUBLIC_KEY): $(PRIVATE_KEY)

display_keys: $(PRIVATE_KEY) $(PUBLIC_KEY)
	@echo "Voici votre clé privée :"
	@cat $(PRIVATE_KEY)
	@echo " "
	@echo "Voici votre clé publique :"
	@cat $(PUBLIC_KEY)

clean:
	@rm -f $(PRIVATE_KEY) $(PUBLIC_KEY)
	@echo "Fichiers de clés SSH supprimés."


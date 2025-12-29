# --------------------------------------------
# Cauldron — Syncthing Infra
# --------------------------------------------

CAULDRON_COMPOSE=forge/tools/infra/cauldron/docker-compose.yml

.PHONY: cauldron-up cauldron-down cauldron-restart cauldron-logs cauldron-status

cauldron-up:
	docker compose -f $(CAULDRON_COMPOSE) up -d

cauldron-down:
	docker compose -f $(CAULDRON_COMPOSE) down

cauldron-restart:
	docker compose -f $(CAULDRON_COMPOSE) down
	docker compose -f $(CAULDRON_COMPOSE) up -d

cauldron-logs:
	docker compose -f $(CAULDRON_COMPOSE) logs -f

cauldron-status:
	docker compose -f $(CAULDRON_COMPOSE) ps

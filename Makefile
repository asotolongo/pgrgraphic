EXTENSION = pgrgraphic
DATA = pgrgraphic--1.0.0.sql
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)


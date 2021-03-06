CREATE TABLE photos (
    id BIGSERIAL PRIMARY KEY,
    path VARCHAR(1024) NOT NULL,
    meta_date TIMESTAMP WITHOUT TIME ZONE,
    file_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    checksum_type VARCHAR(8) NOT NULL,
    checksum_value BYTEA NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

CREATE UNIQUE INDEX ON photos (path);
CREATE UNIQUE INDEX ON photos (checksum_type, checksum_value);

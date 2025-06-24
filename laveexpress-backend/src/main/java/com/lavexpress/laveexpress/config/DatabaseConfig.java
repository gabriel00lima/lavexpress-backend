package com.lavexpress.laveexpress.config;

// ARQUIVO COMENTADO - usando configuração manual no application-prod.yml
// Depois que funcionar, pode descomentar e usar esta classe

/*
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;

import javax.sql.DataSource;
import java.net.URI;
import java.net.URISyntaxException;

@Configuration
@Profile("prod")
public class DatabaseConfig {

    private static final Logger log = LoggerFactory.getLogger(DatabaseConfig.class);

    @Bean
    @Primary
    public DataSource dataSource() {
        String databaseUrl = System.getenv("DATABASE_URL");

        if (databaseUrl == null || databaseUrl.trim().isEmpty()) {
            throw new RuntimeException("DATABASE_URL environment variable is required");
        }

        if (databaseUrl.startsWith("postgresql://")) {
            try {
                URI uri = new URI(databaseUrl);

                String host = uri.getHost();
                int port = uri.getPort() == -1 ? 5432 : uri.getPort();
                String path = uri.getPath();
                String userInfo = uri.getUserInfo();

                if (userInfo == null || !userInfo.contains(":")) {
                    throw new RuntimeException("Invalid DATABASE_URL format");
                }

                String[] credentials = userInfo.split(":", 2);
                String username = credentials[0];
                String password = credentials[1];

                String jdbcUrl = "jdbc:postgresql://" + host + ":" + port + path;

                log.info("Connecting to database at {}:{}", host, port);

                return DataSourceBuilder
                        .create()
                        .url(jdbcUrl)
                        .username(username)
                        .password(password)
                        .driverClassName("org.postgresql.Driver")
                        .build();

            } catch (URISyntaxException e) {
                throw new RuntimeException("Error parsing DATABASE_URL", e);
            }
        }

        return DataSourceBuilder
                .create()
                .url(databaseUrl.startsWith("jdbc:") ? databaseUrl : "jdbc:" + databaseUrl)
                .build();
    }
}
*/
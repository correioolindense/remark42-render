# Usa a imagem oficial do Remark42
FROM umputun/remark42:latest

# Define a pasta de trabalho
WORKDIR /srv

# Garante que o diretório persistente exista
RUN mkdir -p /srv/var && chown -R app:app /srv/var

# Declara o volume para armazenamento persistente
VOLUME /srv/var

# Expõe a porta do servidor
EXPOSE 8080

# Comando padrão para iniciar o serviço
CMD ["/srv/remark42", "server"]
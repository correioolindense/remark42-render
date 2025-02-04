# Usa a imagem oficial do Remark42
FROM umputun/remark42:latest

# Define a pasta de trabalho
WORKDIR /srv

# Expõe a porta do servidor
EXPOSE 8080

# Comando padrão para iniciar o serviço
CMD ["/srv/remark42", "server"]
FROM jaegertracing/all-in-one:latest

# Exemplo: Ajustar memória (via args ou env)
ENV MEMORY_MAX_MB=512

# Exemplo: Adicionar script custom (opcional)
COPY start-jaeger.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start-jaeger.sh
CMD ["/usr/local/bin/start-jaeger.sh"]
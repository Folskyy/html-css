# Para hostear o diretório para a rede local usando o python3
# python3 -m http.server {porta} --bind {ENDEREÇO IP}

# recebe somente o primeiro IP encontrado
ip_address=$(hostname -I | cut -d' ' -f1)

echo "O IP é: $ip_address"
echo "Hosteando servidor no endereço: $ip_address ..."

python3 -m http.server 8000 --bind $ip_address

# 8000 -> porta
# 192.168.1.x -> seu IP
# por padrão vem 0.0.0.0:8000. O que não permite acesso de outros dispositivos.

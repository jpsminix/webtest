FROM registry.access.redhat.com/ubi8/nginx-120

# Add application sources
# ADD test-app/nginx.conf "${NGINX_CONF_PATH}"
# ADD test-app/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
# ADD test-app/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
# ADD test-app/*.html .

CMD nginx -g "daemon off;"


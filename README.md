# **Proyecto Lab04**
### *Integrantes:*
- Alfaro Loyola, Emilio
- Saldarriaga Urquizo, Pedro
- Toribio Flores, Joe
- Rivas Machuca, Marlon
- Colona Chavez, Fabricio

# Comandos
   ### Ingresar a la carpeta iac
    cd iac
   Para que puedas ejecutar los comandos de terraform en la carpeta iac.
   ### Inicializar el proyecto
    sudo terraform init
   ### Ver los workspaces existentes
    sudo terraform workspace list
   (Te saldrá en "default")
   ### Crear workspace dev
    sudo terraform workspace new dev
   ### Entrar al workspace dev
    sudo terraform workspace select dev
   ### Ver el plan
    sudo terraform plan
   ### Aplicar Cambios
    sudo terraform apply
   ### Destruir la infraestructura
    sudo terraform destroy
   ### Verificamos los contenedores
    sudo docker ps
   ### Salir de carpeta iac
    cd ..
   ### Entrar a la carpeta config
    cd config
   ### Para configurar Nginx Proxy y copiar la configuración desde los templates:
    sudo ansible-playbook -i inventory.ini playbook.yaml
   ### Salir de la carpeta config
    cd ..
   ### Recargar configuración de Nginx en el contenedor proxy
    sudo docker exec nginx-proxy nginx -s reload
   ### Probar en el navegador
    http://localhost:3000/app/
   `CTRL + R` para refrescar la página
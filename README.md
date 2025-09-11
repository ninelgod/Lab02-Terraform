# **Proyecto Lab02**
### *Integrantes:*
- Alfaro Loyola, Emilio
- Saldarriaga Urquizo, Pedro
- Toribio Flores, Joe
- Rivas Machuca, Marlon
- Colona Chavez, Fabricio

# Comandos
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
   ### Verificamos los contenedores
    sudo docker ps
   ### Probar en el navegador
    App1 → http://localhost:3001
    App2 → http://localhost:3002
    App3 → http://localhost:3003
    Grafana → http://localhost:3004
   ### Destruir la infraestructura
    sudo terraform destroy

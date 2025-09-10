# **Proyecto Lab02**
### *Integrantes:*
- Alfaro Loyola, Emilio
- Saldarriaga Urquizo, Pedro
- Toribio Flores, Joe
- Rivas Machuca, Marlon
- Colona Chavez, Fabricio

# Comandos
   ### Inicializar el proyecto
       terraform init
   ### Ver los workspaces existentes
       terraform workspace list
   ### Crear workspace dev
       terraform workspace new dev
   ### Ver el plan
       terraform plan
   ### Aplicar Cambios
    terraform apply -auto-approve 
(intenté poner el comando "terraform apply -y" pero no dio y mi otra opción fue el comando que dejé)
   ### Verificamos
       docker ps
   ### Probar en el navegador
        Nginx dev → http://localhost:3000
        App1 → http://localhost:3001
        App2 → http://localhost:3002
        App3 → http://localhost:3003
        Grafana → http://localhost:8081
   ### Destruir la infraestructura
       terraform destroy

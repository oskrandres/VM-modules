# Proyecto Terraform para Azure

Este proyecto de Terraform configura una infraestructura básica en Azure, incluyendo un grupo de recursos, una red virtual, una subred y una máquina virtual.

## Estructura del Proyecto

## Módulos

### Grupo de Recursos

- **Archivo:** [modules/resource_group/main.tf](modules/resource_group/main.tf)
- **Variables:** [modules/resource_group/variables.tf](modules/resource_group/variables.tf)
- **Outputs:** [modules/resource_group/outputs.tf](modules/resource_group/outputs.tf)

### Red Virtual

- **Archivo:** [modules/network/main.tf](modules/network/main.tf)
- **Variables:** [modules/network/variables.tf](modules/network/variables.tf)
- **Outputs:** [modules/network/outputs.tf](modules/network/outputs.tf)

### Máquina Virtual

- **Archivo:** [modules/virtual_machine/main.tf](modules/virtual_machine/main.tf)
- **Variables:** [modules/virtual_machine/variables.tf](modules/virtual_machine/variables.tf)
- **Outputs:** [modules/virtual_machine/outputs.tf](modules/virtual_machine/outputs.tf)

## Variables

Las variables principales del proyecto se definen en [variables.tf](variables.tf):

- `location`: Región de Azure (por defecto: `canadacentral`)
- `resource_group_name`: Nombre del grupo de recursos (por defecto: `miGrupoDeRecursos`)
- `virtual_network_name`: Nombre de la red virtual (por defecto: `miRedVirtual`)
- `subnet_name`: Nombre de la subred (por defecto: `miSubred`)
- `vm_name`: Nombre de la máquina virtual (por defecto: `miMaquinaVirtual`)
- `admin_username`: Nombre de usuario administrador (por defecto: `adminuser`)
- `admin_password`: Contraseña del usuario administrador (por defecto: `P@ssw0rd1234`)

## Uso

1. **Inicializar Terraform:**

    ```sh
    terraform init
    ```

2. **Planificar la infraestructura:**

    ```sh
    terraform plan
    ```

3. **Aplicar la infraestructura:**

    ```sh
    terraform apply
    ```

## Proveedor

El proveedor de Azure se configura en [providers.tf](providers.tf):

```tf
provider "azurerm" {
  features {}
  subscription_id = ""
  tenant_id       = ""
}

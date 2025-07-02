# 📘 Diccionario de Datos – Ventas Vehiculos

## Tabla Sucursal

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumeroSucursal`     | INT          | -      | ✅  | ❌  | ❌   | ✅     |  -                                        | -                                | Identificador de sucursal              |
| `NombreSucursal`        | NVARCHAR      | 20   | ❌  | ❌  | ❌   | ✅     | -             | -                                | Nombre de la sucursal             |
| `Ubicacion`          | NVARCHAR          | 20      | ❌  | ❌  | ❌   | ✅     | -         | -                                | Ubicación de la Sucursal                        |


## Tabla Clientes

## Tabla Vehiculo

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumeroVehiculo`     | INT          | -      | ✅  | ❌  | ❌   | ✅     |  -                                        | -                                | Identificador del vehiculo            |
| `placa`     | NCHAR            | 7      | ❌  | ❌  | ❌   | ✅     |  -                                        | -                                | Número de Placa del Vehiculo          |
| `placa`     | NCHAR            | 7      | ❌  | ❌  | ❌   | ✅     |  -                                        | -                                | Número de Placa del Vehiculo          |
| `placa`     | NCHAR            | 7      | ❌  | ❌  | ❌   | ✅     |  -                                        | -                                | Número de Placa del Vehiculo          |
| `placa`     | NCHAR            | 7      | ❌  | ❌  | ❌   | ✅     |      -                                        | -                                | Número de Placa del Vehiculo          |
| `NumeroCliente`     | INT            | -      | ❌  | ✅  | ❌   | ❌     |  -                                        | Cliente(NumeroCliente)                                | Cliente que rento el Vehiculo          |
| `placa`     | NCHAR            | 7      | ❌  | ❌  | ❌   | ✅     |  -                                        | -                                | Número de Placa del Vehiculo          |





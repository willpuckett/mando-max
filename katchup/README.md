# Firmware Build Settings

## ebb36 (toolboards)

| Heading                          | Setting        |
| -------------------------------- | -------------- |
| µc Architecture                  | STM32          |
| Processor Model                  | STM32G0B1      |
| Build deployment                 | ✅             |
| Clock ref                        | 8 MHz 🔮       |
| Comm interface                   | CAN on PB0/PB1 |
| App/bootloader offset            | 8 KiB          |
| CAN bus speed                    | 1M             |
| set GPIO                         | none           |
| bootloader on radid double click | ✅             |
| Enable bootloader on button      | no             |
| Enable LED                       | nope           |

## Fly-e3-v2

| Heading                          | Setting    |
| -------------------------------- | ---------- |
| µc Architecture                  | STM32      |
| Processor Model                  | STM32F407  |
| Build deployment                 | ✅         |
| Clock ref                        | 8 MHz 🔮    |
| Bootloader Offset                | 16 KiB     |
| Comm interface [katapult]        | USB        |
| Comm interface [klipper]         | U2C Bridge |
| Comm interface                   | CAN on PB8/PB9 |
| CAN bus speed                    | 1M         |
| set GPIO                         | none       |
| bootloader on radid double click | ✅         |
| Enable bootloader on button      | no         |
| Enable LED                       | nope       |

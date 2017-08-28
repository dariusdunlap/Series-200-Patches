// SSDT-UIAC-Z270X-UD5.dsl
//
// This SSDT has all the port configuration for
// customization for USBInjectAll.kext for a Z270X-UD5.
//
// This SSDT contains all ports on the motherboard, however depending 
// on your case configuration all internal headers may not be used.
// Comment out/delete the ports that are not connected (mainly unused internal headers).
//
// Change the portType as needed to match your actual USB configuration,
// in order to stay under the standard 15 port limit (so a port limit patch
// isn't required).
//
// Note:
// UsbConnector=0 for USB2-only external ports (including internal headers connected to external ports)
// UsbConnector=3 for USB2/3 combo external ports (including internal headers connected to external ports)
// UsbConnector=255 for internal ports (such as internal bluetooth connection from WiFi card)
//

DefinitionBlock ("", "SSDT", 2, "Dracon", "SSDT-UIA", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_a2af", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // Motherboard connector F_USB30_1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // Motherboard connector F_USB30_1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package() // Motherboard connector F_USB30_2
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package() // Motherboard connector F_USB30_2
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package() // Back Panel - Bottom Left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package() // Back Panel - Bottom Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package() // Back Panel - Middle Right (Next to USB3.1 Port)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package() // Motherboard connector USB20_OB
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package() // Motherboard connector F_USB1
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package() // Motherboard connector F_USB1
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package() // Back Panel - Upper Right (USB2 ports next to PS2 port)
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "HS12", Package() // Back Panel - Upper Left (USB2 ports next to PS2 port)
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "HS13", Package() // Motherboard connector F_USB2
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "HS14", Package() // Motherboard connector F_USB2
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS01", Package() // Motherboard connector F_USB30_1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS02", Package() // Motherboard connector F_USB30_1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    "SS03", Package() // Motherboard connector F_USB30_2
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS04", Package() // Motherboard connector F_USB30_2
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    "SS05", Package() // Back Panel - Bottom Left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                    "SS06", Package() // Back Panel - Bottom Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 22, 0, 0, 0 },
                    },
                    "SS07", Package() // Back Panel - Middle Right (Next to USB3.1 Port)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 23, 0, 0, 0 },
                    },
                },
            },
        })
    }
}
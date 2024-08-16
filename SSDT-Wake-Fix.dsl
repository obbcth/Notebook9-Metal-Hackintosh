DefinitionBlock ("", "SSDT", 2, "hack", "Wake-Fix", 0x00000000)
{
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj) //
    External (GPRW, MethodObj) // 2 Arguments

    Scope (\_SB.PCI0.LPCB.H_EC) // 3
    {
        If (_OSI ("Darwin"))
        {
            Method (_PRW, 0, NotSerialized) // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x10, 0x04)) // 0x10 
            }
        }
    }
}
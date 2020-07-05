/*
 * Find _CRS:          5F 43 52 53
 * Replace XCRS:       58 43 52 53
 * Target Bridge SPTP: 53505450
 */
DefinitionBlock("", "SSDT", 2, "hack", "I2Cpatch", 0)
{
    External(_SB.PCI0.I2C0.SPTP, DeviceObj)
    External(_SB.PCI0.I2C0.SPTP.SBFS, IntObj)
    External(_SB.PCI0.I2C0.SPTP.SBFI, IntObj)
    External(_SB.PCI0.I2C0.SPTP.SBFG, IntObj)
    External(OSYS, FieldUnitObj)
    External(SDM0, FieldUnitObj)
    Scope(_SB.PCI0.I2C0.SPTP)
    {
        Name (SSCN, Package () { 432, 507, 30 })
        Name (FMCN, Package () { 72, 160, 30 })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (LLess (OSYS, 0x07DC))
                {
                    Return (ConcatenateResTemplate (SBFS, SBFG))
                }

                If (LEqual (SDM0, Zero))
                {
                    Return (ConcatenateResTemplate (SBFS, SBFG))
                }

                Return (ConcatenateResTemplate (SBFS, SBFG))
            }
    }
}
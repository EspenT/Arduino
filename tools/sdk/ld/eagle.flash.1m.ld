/* Flash Split for 1M chips */
/* sketch @0x40200000 (~999KB) (1023984B) */
/* empty  @0x402F9FF0 (~4KB) (4112B) */
/* spiffs @0x402FB000 (~0KB) (0B) */
/* eeprom @0x402FB000 (4KB) */
/* rfcal  @0x402FC000 (4KB) */
/* wifi   @0x402FD000 (12KB) */

MEMORY
{
  dport0_0_seg :                        org = 0x3FF00000, len = 0x10
  dram0_0_seg :                         org = 0x3FFE8000, len = 0x14000
  iram1_0_seg :                         org = 0x40100000, len = 0x8000
  irom0_0_seg :                         org = 0x40201010, len = 0xf9ff0
}

PROVIDE ( _FS_start = 0x402FB000 );
PROVIDE ( _FS_end = 0x402FB000 );
PROVIDE ( _FS_page = 0x0 );
PROVIDE ( _FS_block = 0x0 );
PROVIDE ( _EEPROM_start = 0x402fb000 );

INCLUDE "local.eagle.app.v6.common.ld"
